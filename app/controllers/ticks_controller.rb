class TicksController < ApplicationController
	def index
		render json: Tick.latest.to_json(
			include:
			{
				user:{only:[:id, :name]},
				place:{only:[:id, :avg_stars, :la, :lo, :name]}
			} )
	end
end