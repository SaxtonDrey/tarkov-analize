class Weapon < Item
  enum sub_category: { 'melee_weapon' => 0,
                       'assault_rifle' => 1,
                       'not_functional' => 13,
                       'assault_carbine' => 4,
                       'bolt_action_rifle' => 5,
                       'machine_gun' => 6,
                       'marksman_rifle' => 7,
                       'pistol' => 8,
                       'shotgun' => 9,
                       'smg' => 10,
                       'throwable' => 11,
                       'grenade_launcher' => 12,
                       'special_weapon' => 14 }
end
