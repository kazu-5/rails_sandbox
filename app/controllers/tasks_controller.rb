class TasksController < ApplicationController
  def index
  end

  def show

  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new

    task.assign_attributes(params.require(:task).permit(:title,:memo,data:[]))
    task.save
    SampleJob.perform_later
    # TaskMailer.creation_mail(task).deliver_now
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:task][:id])
    task.assign_attributes(params.require(:task).permit(:title,:memo,data:[]))
    task.save
  end
end
