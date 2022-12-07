class CounterArticlesController < ApplicationController

  before_action :set_article, only: %i[ create search ]

  def create
    @article.increment!(:counter_articles)
    redirect_to article_url(@article)
  end

  def search
    @result = params[:q].empty? ? [] : Article.search(params[:q])
    redirect_to article_url(@article)
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end