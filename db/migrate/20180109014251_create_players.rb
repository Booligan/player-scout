class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :born
      t.integer :height
      t.integer :weight
      t.string :position
      t.string :nat_team
      t.string :club_team
      t.string :img_url
      t.integer :likes
      t.timestamps
    end
  end
end
