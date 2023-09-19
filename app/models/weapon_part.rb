class WeaponPart < Item
  enum sub_category: { 'sight' => 0,
                       'suppressor' => 1,
                       'magazine' => 2,
                       'tactical_device' => 3,
                       'foregrip' => 4,
                       'stocks_chassi' => 5,
                       'pistol_grip' => 6,
                       'receivers_slide' => 7,
                       'charging_handle' => 8,
                       'gas_block' => 9,
                       'flashhiders_brake' => 10,
                       'auxiliary_part' => 11,
                       'muzzle_adapter' => 12,
                       'handguard' => 13,
                       'mount' => 14,
                       'helmet_mount' => 15,
                       'barrel' => 16,
                       'iron_sight' => 17,
                       'bipod' => 18 }
  def fetch_stats!
    recoil_percent = wiki_repository.fetch_recoil
    ergonomics = wiki_repository.fetch_ergo
    update!(recoil_percent:, ergonomics:)
  rescue Mechanize::ResponseCodeError
    puts id
  end
end
