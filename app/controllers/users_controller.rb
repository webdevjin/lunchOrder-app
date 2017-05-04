class UsersController < ApplicationController

  def new
      @user = User.new
  end

  def show  
  end

  def create
    @user = User.new(clean_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Your account has been created"
      redirect_to new_student_path
    else
      render :new
    end

  end

  private
  def clean_params
    params.require(:user).permit(:email, :password, :name)
  end

end
