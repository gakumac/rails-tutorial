class UsersController < ApplicationController
  # GET /users/:id
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  #　form_forを使うとPOSTリクエストが送られる
  def create
    @user = User.new(user_params)
    if @user.save
      # success
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user # GET "/user/#{@user.id}" => show
    else
      render 'new'
    end
  end

  private
    # Strong Parameters 指定の要素しか受け取らない
    def user_params
      params.require(:user).permit(:name, :email, :password,
                      :password_confirmation)
    end
end
