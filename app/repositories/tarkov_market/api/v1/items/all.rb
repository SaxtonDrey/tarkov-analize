class TarkovMarket::Api::V1::Items::All < TarkovMarket::TarkovMarketRepository
  def get
    return JSON.parse(File.read(Rails.root.join('tmp/all.json'))) if File.exist?(Rails.root.join('tmp/all.json'))

    puts 'getting items from api'
    JSON.parse(RestClient.get(url, headers).body)
  end

  private

  def endpoint
    '/api/v1/items/all'
  end
end
