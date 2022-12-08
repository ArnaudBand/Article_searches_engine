# Purpose: Increment the counter_articles column of the article table
class IncrementService
  def initialize(ressource)
    @ressource = ressource
  end

  def call
    @ressource.increment!(:counter_articles)
  end
end