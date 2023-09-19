class TarkovMarket::TarkovMarketRepository
  HOST = 'https://api.tarkov-market.app'.freeze

  private

  def client
    @client ||= RestClient.new
  end

  def url
    "#{HOST}#{endpoint}"
  end

  def endpoint
    raise 'NotImplemented'
  end

  def headers
    {
      "x-api-key": ENV['TARKOV_MARKET_API_KEY'],
      "content_type": 'application/json'
    }
  end
end
