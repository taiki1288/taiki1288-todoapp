class TasksController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

    def show
    end

    def new
        board = Board.find(params[:board_id])
        @task = board.tasks.build
    end

end