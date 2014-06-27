class ArticlesController < ApplicationController

  def index
    # Grab all of the articles
    @articles = Article.all
    # Respond with json for the ajax requests
    respond_to do |f|
      f.json { render json: @articles, only: [:title, :summary] }
    end
  end

end