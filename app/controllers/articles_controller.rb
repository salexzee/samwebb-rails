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
    @article = find

  end

  def update
    @article = find

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    # Displays the specified article and gives it a nicer
    # looking URL based on the title
    @article = find
  end

  def destroy
    # Selects the article to delete
    @article = find
    @article.destroy

    # Redirects to the root after deletion
    respond_to do |formats|
      formats.html { redirect_to articles_path}
    end
  end

  private

  def article_params
    # Sets the parameters for an article with a :slug for use
    # with friendly_id
    params.require(:article).permit(:title, :text, :slug)
  end

  def find
    # Finds articles, preventing duplication
    Article.friendly.find(params[:id])
  end
end
