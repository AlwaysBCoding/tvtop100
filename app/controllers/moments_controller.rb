class MomentsController < ApplicationController
	before_action :set_tv_show, only: [:index]

	def index
	end

	def show
	end

	def new
	end

	def create
	end

private
	def set_tv_show
		@tvshow = Tvshow.find_by_slug(params[:tvshow])
	end

end
