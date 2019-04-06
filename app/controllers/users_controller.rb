class UsersController < ApplicationController
  def index
	@users=User.all
	@my_variable="blah blah"
	if cookies[:id]
		@signed_in_user= User.find(cookies[:user_id])
	end
  end
  def new
	@user=User.new

  end
  def create
	User.create(email: params[:user][:email],password: params[:user][:password],age: params[:user][:age],name: params[:user][:name])
	redirect_to action:'index'
  end
  def edit
	@user=User.find(params[:id])
  end
  
  def update
	@user=User.find(params[:id])
	@user.update(email: params[:user][:email],password: params[:user][:password],age: params[:user][:age],name: params[:user][:name])
	redirect_to action:'index'
  end
  def destroy
	@user=User.find(params[:id])
	@user.destroy
	redirect_to action:'index'
  end

  def toedit
	@user=User.find(params[:email])
  end
  def updatelink
	@user=User.find(params[:email])
	@user.update(email: params[:user][:email],password: params[:user][:password],age: params[:user][:age],name: params[:user][:name])
	redirect_to action:'index'
  end
  def sign_in
  end
  def sign_out
	if !cookies[:user_id].blank?
		cookies.delete(:user_id)
	end
	redirect_to action:'index'
  end
  def create_session
	u= User.find_by(email: params[:email], password: params[:password])
	if (u.blank?)
		return redirect_to action: 'sign_in'
	end
	cookies[:user_id]= u.id
	redirect_to action:'index'
  end
end
