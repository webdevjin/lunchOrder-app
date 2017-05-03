class LunchesController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def index
    @students = @current_user.students
    @lunches = Lunch.all
  end

  private
  def clean_params
    params.require(:lunch).permit(:lunchname)
  end

end
