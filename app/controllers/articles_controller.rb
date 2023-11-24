class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]
=======

>>>>>>> a00aeb90eaaa43eab0f7f8abf6765516c30d8f66
  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

<<<<<<< HEAD

  def show
  end


=======
  def show
  end

>>>>>>> a00aeb90eaaa43eab0f7f8abf6765516c30d8f66
  def new
    @article = Article.new
  end

<<<<<<< HEAD

  def edit
  end


=======
  def edit
  end

>>>>>>> a00aeb90eaaa43eab0f7f8abf6765516c30d8f66
  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article
    else
      render 'new', status: :unprocessable_entity
    end

  end

<<<<<<< HEAD

=======
>>>>>>> a00aeb90eaaa43eab0f7f8abf6765516c30d8f66
  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit', status: :unprocessable_entity
    end

  end

<<<<<<< HEAD

=======
>>>>>>> a00aeb90eaaa43eab0f7f8abf6765516c30d8f66
  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def require_same_user
    if current_user != @article.user
      flash[:alert] = "You can only edit or delete your own article"
      redirect_to @article
    end
  end
end
