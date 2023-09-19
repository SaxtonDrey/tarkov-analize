class AddWeaponPartsColumnsToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :recoil_percent, :decimal, null: true
    add_column :items, :ergonomics, :decimal, null: true
  end
end
