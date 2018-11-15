class PagesController < ApplicationController
before_action :logged_in_user

  def home
  end

  def team
  end

  def about
  end
  
  private
  def logged_in_dog
    unless logged_in?
      redirect_to '/'
    end
  end
  
end
