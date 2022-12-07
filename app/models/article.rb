class Article < ApplicationRecord
  validates :title, :body, presence: true

  def self.search(search)
    if search
      article = Article.find_by(title: search)
      if article
        where(title: search)
      else
        articles = Article.all
      end  
    else
      articles = Article.all
    end
  end

end
