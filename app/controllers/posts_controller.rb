class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    puts params.inspect
    @post.update(params.require(:post).permit(:name, :content))
    redirect_to posts_url, notice: 'Article sauvegardé !'
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.update(params.require(:post).permit(:name, :content))
    redirect_to posts_url, notice: 'Article créé !'
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Article supprimé !'
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end


end
