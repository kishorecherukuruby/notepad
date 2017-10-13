class ChaptersController < ApplicationController
	layout 'my_layout'
	def create
		@name = "chapter one"
		@pages = 12
		@font = "Ariel"
		@size = 12

	end
end

