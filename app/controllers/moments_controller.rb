class MomentsController < ApplicationController
	before_action :require_user
	before_action :set_tv_show
	before_action :set_episodes, only: [:index, :new]

	def index
	end

	def show
	end

	def new
	end

	def create
		moment = Moment.create! moment_params
		flash[:notice] = "Moment '#{moment.title}' Successfully Added"
		redirect_to "#{@tvshow.slug}/moments"
	end

private
	def moment_params
		params.require(:moment).permit(:episode_id, :title, :analysis, :media_type, :media_url, :image)
	end

	def require_user
		@user = User.first
		unless @user
			flash[:notice] = "You are not authorized to access that resource"
			redirect_to root_url
		end
	end

	def set_tv_show
		@tvshow = Tvshow.includes(:episodes, :episodes => :moments).find_by_slug(params[:tvshow])
	end

	def set_episodes
		@episodes = Episode.includes(:moments).of_show(@tvshow.id)
	end

end
