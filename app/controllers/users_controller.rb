class UsersController < ApplicationController
  def new

  end

  def create
  	#byebug

    @user = User.new(fname: params[:fname],lname: params[:lname],
            :dob => params[:dob], gender: params[:gender],
            :hobbies => params[:rock],qualification: params[:qualification])
    @user.save

  	@fullname = params[:fname] + params[:lname]
    @age = calculate_age(params[:dob])
  	@hobbies = params[:rock].join(",") if params[:rock]
  	@gender = params[:gender]
  	@qualification = params[:qualification]
  end

  def calculate_age(dob)
    def humanize secs
      [ 
        [60, :seconds], 
        [60, :minutes], 
        [24, :hours], 
        [365, :days], 
        [100, :years]
      ].map do |count, name|
        #byebug
        if secs > 0
          secs, n = secs.divmod(count)
          "#{n.to_i} #{name}"
        end
      end.compact.reverse.join(' ')
    end
    distance = Time.new - Time.parse(dob)
    humanize(distance).split(" ").take(4).join(",")
  end

  def show
  end
end
