class Item < ApplicationRecord
  enum trader_price_cur: { "roubles": 0, "dollar": 1, "euro": 2 }
  enum trader: { "Prapor": 0, "Therapist": 1, "Skier": 2, "Peacekeeper": 3, "Mechanic": 4, "Ragman": 5, "Jaeger": 6,
                 "Fence": 7 }

  private

  def wiki_repository
    Wiki::WikiRepository.new(self)
  end
end
