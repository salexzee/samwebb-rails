class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order("DESC")
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
