class ArticlesController < ApplicationController

  def search
    @search = SimpleSearch.new SimpleSearch.get_params(params)
    if @search.valid?
      @articles = @search.search_within Article.all, :title
    end
  end

end
