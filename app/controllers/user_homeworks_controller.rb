class UserHomeworksController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_worker, only: [:show, :edit, :update, :destroy]

  def create
  	@homework = Homework.find(params[:homework_id])
  	@user_homework = UserHomework.new(homework: @homework, user: current_user)
  	if @user_homework.save
  		redirect_to homeworks_path, notice: 'La tarea a sido seleccionada'
  	else
  		redirect_to homeworks_path, notice: 'La tarea no ha podido ser seleccionada'
  	end
  end

  def index
  	@user_homeworks = current_user.user_homeworks
  end

end