class CalculatorController < ApplicationController
  def addition
  	@a = params[:a].to_i
  	@b = params[:b].to_i

  end

  def subtraction
  end

  def multiplication
  end

  def division
  end
end
