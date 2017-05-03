class SessionsController < ApplicationController
  def new

  end

  def create
      user = User.find_by_email(params[:email])
      if user
        if user.authenticate(params[:password])
          session[:user_id] = user.id

          if session[:redirect_to_lunch]

            session.delete :redirect_to_lunch
            redirect_to root_path
          else
            redirect_to root_path
          end
        else
       render :new
      end
    else
      render :new
    end
end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
