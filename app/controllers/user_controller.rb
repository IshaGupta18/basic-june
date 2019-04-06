class UserController < ApplicationController
  def index
	@users=User.all
	@my_variable="blah blah"
  end
  def new
	@user=User.new

  end
  def create
  end
end
