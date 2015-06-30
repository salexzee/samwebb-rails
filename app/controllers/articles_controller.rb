class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(article_params)
 
    @article.save
    redirect_to @article
  end

  def edit
  end

  def update
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
