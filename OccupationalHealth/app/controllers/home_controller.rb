class HomeController < ApplicationController
  def index
  	@categories = Category.all
  	@project_profile = ProjectProfile.new
  end
end
