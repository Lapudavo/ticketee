class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)

      if @user.save
          flash[:notice] = "You have signed up successfully. #{@user.name},
          #{@user}"
          redirect_to projects_path
      else
          render :new
      end
  end

  def show
      @us = User.all
  end

  def edit
  end

  private
    def user_params
        params.require(:user).permit(:name, 
                                    :password, 
                                    :password_confirmation)
    end
end
