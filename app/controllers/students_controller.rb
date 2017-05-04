class StudentsController < ApplicationController
    before_action :authenticate_user

    def index
      @students = Students.all
    end

    def show
    end

    def new
      @student = Student.new
    end

    def create
      @student = Student.new(clean_params)
      @student.user = @current_user
      if @student.save
        redirect_to user_path(@current_user)
      else
        render :new
      end
    end

    def destroy
      Student.find(params[:id]).destroy
      redirect_to user_path(@current_user)
    end



    private
    def clean_params
      params.require(:student).permit(:name, :grade)
    end
end
