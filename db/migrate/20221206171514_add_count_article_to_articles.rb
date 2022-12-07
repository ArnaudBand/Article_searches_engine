class AddCountArticleToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :counter_articles, :integer, default: 0
  end
end
