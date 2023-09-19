class ItemConvertService
  IGNORE_CATEGORIES = %w[Ammo_boxes Currency]
  AS_IS_COLUMNS = %w[name bannedOnFlea haveMarketData shortName price basePrice avg24hPrice avg7daysPrice traderPrice
                     traderPriceRub updated slots diff24h diff7days icon link wikiLink img imgBig bsgId isFunctional]
  def initialize(api_items)
    @api_items = api_items
  end

  def execute
    @api_items.map do |item|
      next if item['tags'].first.in?(IGNORE_CATEGORIES)

      params = item_params(item)
      item = Item.find_or_initialize_by(id: params['id'])
      item.assign_attributes(params)
      item.save!
    end.compact
  end

  private

  def detect_type(item)
    first_tag = item['tags'].first
    if first_tag.in? %w[Ammo Barter Gear Keys Maps Meds Provisions Special_equipment Weapon Weapon_parts]
      item['tags'].map { |tag| tag.singularize.camelize }
    elsif first_tag.in? %w[Containers]
      %w[Gear Container]
    elsif first_tag.in? %w[Repair]
      %w[SpecialEquipment]

    elsif first_tag.in? %w[Sights Suppressors Tactical_devices Magazines]
      ['WeaponPart', first_tag.singularize.camelize]
    else
      raise "Unknown Tag: #{item['tags']}"
    end
  end

  def cur(item)
    if item['traderPriceCur'] == '₽'
      'roubles'
    elsif item['traderPriceCur'] == '$'
      'dollar'
    else
      raise "UnknownCurrency: #{item['traderPriceCur']}"
    end
  end

  def item_params(item)
    params = {
      'id' => item['uid'],
      'type' => detect_type(item).first,
      'sub_category' => detect_type(item).second&.underscore,
      'trader' => item['traderName'],
      'trader_price_cur' => cur(item)
    }
    AS_IS_COLUMNS.each do |col|
      params[col.underscore] = item[col]
    end

    params
  end
end
