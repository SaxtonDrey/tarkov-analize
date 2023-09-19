class Gear < Item
  enum sub_category: { 'container' => 0,
                       'face_shield' => 1,
                       'backpack' => 2,
                       'headwear' => 3,
                       'helmet' => 4,
                       'facecover' => 5,
                       'tactical_rig' => 6,
                       'headset' => 7,
                       'armor_vest' => 8,
                       'eyewear' => 9,
                       'helmet_mount' => 10,
                       'additional_armor' => 11,
                       'armband' => 12,
                       'secure_container' => 13 }
end
