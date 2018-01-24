class AddLikesToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :likes, :integer
  end
end
