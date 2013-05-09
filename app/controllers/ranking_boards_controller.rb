class RankingBoardsController < ApplicationController
	before_action :require_user
	before_action :require_ranking_board, only: ["show", "update"]
	before_action :ensure_user_owns_ranking_board, only: ["update"]

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
		@rankings = @ranking_board.rankings
	end

	def edit
	end

	def update
		params["rankings"].each_with_index { |id, index| Ranking.find(id).update_column(:rank, index+1) }
		@ranking_board.touch
		render json: @ranking_board
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

	def require_ranking_board
		@ranking_board = RankingBoard.includes(:rankings).find(params[:id])
	end

	def ensure_user_owns_ranking_board
		raise RuntimeError unless @ranking_board.user_id == @user.id
	end

end
