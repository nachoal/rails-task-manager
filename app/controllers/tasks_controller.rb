class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create]
  # index and show are the part of R in CRUD
  # index is for ALL data
  def index
    @tasks = Task.all
  end
  # show is for just one element
  def show
  end

  # ////////////////////
  # edit and update are the update part of the CRUD
  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: "Task succesfully updated!"
    else
      render :edit
    end
  end
  # ////////////////////

  # ////////////////////
  # (new and create) are the C in CRUD 
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path,
      notice: "Your task has been created!"
    else
      render :new
    end
  end
  # ////////////////////
  # destroy is the D part of the CRUD
  def destroy
    @task.destroy
    redirect_to tasks_url, alert: "Task succesfully deleted"
  end

  private
  
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
