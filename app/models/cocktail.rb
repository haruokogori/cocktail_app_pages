class Cocktail < ApplicationRecord
  def self.search(search)
    if search
      searches = search.split(/[ ,　]/)
      sql_body = ''
      searches.each do | search |
        sql_body += ' and ' unless sql_body.blank?
        sql_body += " ingredients.ingredients_name like '%#{search}%' "
      end
      sql = "select * from cocktails left outer join recipes on cocktails.cocktail_id = recipes.ingredients_id left outer join ingredients on recipes.ingredients_id = ingredients.ingredients_id where #{sql_body}"
      cocktail_ids = Cocktail.find_by_sql(sql)
      ids = []
      cocktail_ids.each do |qi|
        ids.push(qi.cocktail_id)
      end
      where(:cocktail_id => ids)
    else
      Cocktail.all #全て表示。
    end
  end
end