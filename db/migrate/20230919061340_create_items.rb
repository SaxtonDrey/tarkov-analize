class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :type, null: false
      t.string :name, null: false
      t.boolean :banned_on_flea, null: false
      t.boolean :have_market_data, null: false
      t.string :short_name, null: false
      t.integer :price, null: false
      t.integer :base_price, null: false
      t.integer :avg24h_price, null: false
      t.integer :avg7days_price, null: false
      t.integer :trader, null: false
      t.integer :trader_price, null: false
      t.integer :trader_price_cur, null: false
      t.integer :trader_price_rub, null: false
      t.datetime :updated, null: false
      t.integer :slots, null: false
      t.decimal :diff24h, null: false
      t.decimal :diff7days, null: false
      t.string :icon
      t.string :link
      t.string :wiki_link
      t.string :img
      t.string :img_big
      t.string :bsg_id
      t.boolean :is_functional, null: false
      t.integer :sub_category
      t.timestamps
    end
  end
end
