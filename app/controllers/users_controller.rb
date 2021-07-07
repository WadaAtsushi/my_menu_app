class UsersController < ApplicationController
  def index
  end

  def login_form
  end

  def signin
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "新規登録しました"
      redirect_to posts_index_path
    else
      flash[:notice] = "入力内容が間違えています"
      render("users/signin")
      
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
