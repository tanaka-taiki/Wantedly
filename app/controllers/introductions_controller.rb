class IntroductionsController < ApplicationController
  def index
  	@introductions = Introduction.new
  end
end
