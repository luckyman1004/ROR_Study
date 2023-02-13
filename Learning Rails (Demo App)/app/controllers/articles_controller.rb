class ArticlesController < ApplicationController
  def show
    #debug
    @article = Article.find(params[:id])
  end
end
