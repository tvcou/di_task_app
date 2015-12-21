class TasksController < ApplicationController
  def create
    @block = Block.find(params[:block_id])
    @task = @block.tasks.create(task_params)
    redirect_to block_path(@block.id)
  end

  private def task_params
    params[:task].permit(:title)
  end
end
