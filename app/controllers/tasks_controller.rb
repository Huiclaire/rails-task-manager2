class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    set_task
  end

  def new
    @task = Task.new
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
