class PostsController < ApplicationController
  def edit
  end

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.image = "sample.image"
    if @post.save
      flash[:notice] = "投稿を確認しました"
      redirect_to posts_index_path
    else
      render("posts/new")
    end

  end

  def show
  end

  def top
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
