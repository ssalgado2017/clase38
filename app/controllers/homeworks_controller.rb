class HomeworksController < ApplicationController
before_action :set_homework, only: [:show, :edit, :update, :destroy, :add_check, :remove_check]
before_action :authenticate_user!, only: [:edit, :update, :destroy, :index]

  def index
  	@homeworks = Homework.all
  end


  def add_check
    #@task = Task.find(params[:id])
    @user = User.find(current_user.id)
    @homework.users << @user
    redirect_to homework_path
  end

  def remove_check
      #user =  User.find(params[:user_id])
      user = User.find(current_user.id)

      #@customer = Customer.find(params[:id])
      @homework.users.delete(user)
      redirect_to homework_path
  end

    def show
  	end

  	  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @homework = Homework.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @homework = Homework.new(homework_params)

    respond_to do |format|
      if @homework.save
        format.html { redirect_to @homework, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @homework }
      else
        format.html { render :new }
        format.json { render json: @homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @homework.update(homework_params)
        format.html { redirect_to @homework, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework }
      else
        format.html { render :edit }
        format.json { render json: @homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @homework.destroy
    respond_to do |format|
      format.html { redirect_to homework_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



    private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework
      @homework = Homework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homework_params
      params.require(:homework).permit(:name, :image)
    end


end
