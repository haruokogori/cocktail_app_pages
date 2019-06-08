class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails, id: false do |t|
      t.column :cocktail_id, 'INTEGER PRIMARY KEY NOT NULL'
      t.column :cocktail_name, :string, :null => false
      t.column :style_kbn, :string
      t.column :cocktail_word, :string
      t.column :taste_kbn, :string
      t.column :alcohol_by_volume, :string, :null => false
      t.column :popularity, :string
      t.column :register_user, :string, :null => false
      t.column :update_user, :string, :null => false
      t.column :delete_flag, :string, default:0, :null => false

      t.timestamps
    end
  end
end
