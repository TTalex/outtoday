class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params) 
    if @user.save 
      session[:user_id] = @user.id 
      redirect_to '/' 
    else
      redirect_to '/signup', notice: @user.errors.full_messages.first
    end 
  end

  def addfilm
    film = Film.find(params[:filmid])
    user = User.find(params[:id])
    
    user.films << film
    redirect_to :back
  end

 def rmfilm
    film = Film.find(params[:filmid])
    user = User.find(params[:id])
    
    user.films.delete(film)
    redirect_to :back
  end


  private
  def user_params
    params.require(:user).permit(:username, :password)
  end



end
