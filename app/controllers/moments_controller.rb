class MomentsController < ApplicationController
	before_action :set_tv_show, only: [:index, :new]

	def index
	end

	def show
	end

	def new
		@episodes = Episode.of_show(@tvshow.id)
	end

	def create
	end

private
	def set_tv_show
		@tvshow = Tvshow.includes(:episodes, :episodes => :moments).find_by_slug(params[:tvshow])
	end

end
