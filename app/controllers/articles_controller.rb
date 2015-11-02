class ArticlesController < ApplicationController

  def index
    # Returns all articles in descencing order based on
    # their ID
    @articles = Article.all.order("id DESC")
  end

  def new
  end

  def create
    # Creates the article from the passed in parameters
    @article = Article.new(article_params)
 
    # Saves the article
    @article.save
    # Redirects to the created article's show page after
    # saving
    redirect_to @article
  end

  def edit
  end

  def update
  end

  def show
    # Displays the specified article and gives it a nicer
    # looking URL based on the title
    @article = Article.friendly.find(params[:id])
  end

  def destroy
  end

  private

  def article_params
    # Sets the parameters for an article with a :slug for use
    # with friendly_id
    params.require(:article).permit(:title, :text, :slug)
  end
end
