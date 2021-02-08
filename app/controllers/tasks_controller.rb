class TasksController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    def show

    end

    def new
        board = Board.find(params[:board_id])
        @task = board.tasks.build
    end

    def create
        board = Board.find(params[:board_id])
        @task = board.tasks.build(task_params)
        if @task.save
          redirect_to boards_path(@board)
        else
          render :new
        end
    end

    private
    def task_params
      params.require(:task).permit(:title, :content, :deadline)
    end
end