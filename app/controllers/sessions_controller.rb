class SessionsController < ApplicationController
  def new
  end

  def create
  	dog = Dog.find_by(name: params[:session][:name])
  	if dog && dog.authenticate(params[:session][:password])
  		log_in(dog)
  		redirect_to '/'
  	else
  		render plain: "No te has logueado"
  	end	
  end

  def destroy
  	log_out
  	redirect_to '/'
  end
end
