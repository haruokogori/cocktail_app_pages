class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes, primary_key: %w(cocktail_id ingredients_id) do |t|
      t.column :cocktail_id, :numeric, :null => false
      t.column :ingredients_id, :numeric, :null => false
      t.column :quantity, :numeric, :null => false
      t.column :register_user, :string, :null => false
      t.column :update_user, :string, :null => false
      t.column :delete_flag, :string, default:0, :null => false

      t.timestamps
    end
  end
end
