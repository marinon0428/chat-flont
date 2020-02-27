class GroupsController < ApplicationController

  def new
  end

  def create
    if current_group.update(user_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end  
end