class RankingBoardsController < ApplicationController
	before_action :require_user

	def index
		@ranking_boards = RankingBoard.all
	end

	def new
		@ranking_board = RankingBoard.new
	end

	def create
		ranking_board = RankingBoard.create ranking_board_params
		flash[:successful_action] = "New Ranking Board successfully created"
		redirect_to ranking_board_url(ranking_board)
	end

	def show
		@ranking_board = RankingBoard.find(params[:id])
		@rankings = @ranking_board.rankings
	end

	def edit
	end

	def update
	end

	def destroy
	end

private
	def ranking_board_params
		params.require(:ranking_board).permit(:tvshow_id, :user_id, :capacity)
	end

	def require_user
		@user = User.first
		unless @user
			flash[:notice] = "You are not authorized to access that resource"
			redirect_to root_url
		end
	end

end
