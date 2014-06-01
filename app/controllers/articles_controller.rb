class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    respond_to do |f|
      f.json { render json: @articles, only: [:title, :summary] }
    end
  end

end