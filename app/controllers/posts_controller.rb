class PostsController < ApplicationController
  def edit
  end

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = @current_user.posts.build(post_params)
    @post.image = "sample.image"

    if @post.save
      if params[:post][:image]
        @post.image = "#{@post.id}.jpg"
        post_image = params[:post][:image]
        File.binwrite("public/post_images/#{@post.image}", post_image.read)
        @post.save
      end
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
