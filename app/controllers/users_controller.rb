class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :upload, :update, :destroy]

  def index
  end

  def show
    @new_post = Post.new
    @posts = @user.posts.page(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome #{@user.name}!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    upload
    if @user.update(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def delete
  end

  # File upload
  def upload
    if params[:user][:avatar]
      uploaded_io = params[:user][:avatar]
      File.open(Rails.root.join('public', 'uploads', 'images', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      @user.avatar = '/uploads/images/' + uploaded_io.original_filename
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  # Before filters
  def set_user
    @user = User.find(params[:id])
  end
end
