class AddPriceToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :price, :integer
  end
end
