class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to welcome_index_path, :notice => "Has inciado sesion correctamente!"
    else
      flash.now.alert = "Username o contraseña erroneas."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Has cerrado sesion."
  end
end
