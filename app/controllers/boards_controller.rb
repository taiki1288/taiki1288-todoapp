class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end

    def new
        @board = current_user.boards.build
    end

    def show
    end

    def create
    end
end
