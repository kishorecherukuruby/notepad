class UsersController < ApplicationController
  def new

  end

  def create
  	#byebug
  	@fullname = params[:fname] + params[:lname]

  	@age = Time.now.strftime('%Y').to_i - params[:dob].split("-").first.to_i
  	@hobbies = params[:rock].join(",") if params[:rock]
  	@gender = params[:gender]
  	@qualification = params[:qualification]
  end

  def show
  end
end
