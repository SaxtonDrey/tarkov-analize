class Wiki::WikiRepository
  attr_reader :page

  def initialize(item)
    @item = item
    nil if item.wiki_link.blank?
    @page = agent.get(item.wiki_link)
  end

  def fetch_recoil
    page.search('//table[@class="va-infobox"]//a[contains(text(), "Recoil")]/../following-sibling::*').text.to_f
  end

  def fetch_ergo
    page.search('//table[@class="va-infobox"]//a[contains(text(), "Ergonomics")]/../following-sibling::*').text.to_f
  end

  private

  def agent
    @agent ||= Mechanize.new
  end
end
