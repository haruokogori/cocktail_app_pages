class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients, id: false do |t|
      t.column :ingredients_id,'INTEGER PRIMARY KEY NOT NULL'
      t.column :ingredients_name, :string, :null => false
      t.column :register_user, :string, :null => false
      t.column :update_user, :string, :null => false
      t.column :delete_flag, :string, default:0, :null => false
      t.timestamps
    end
  end
end
