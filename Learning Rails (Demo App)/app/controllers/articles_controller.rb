class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params.require(:article).permit(:description, :title))
    if @article.save
      redirect_to @article
    else
      render 'new', status: :unprocessable_entity
    end
  end

end