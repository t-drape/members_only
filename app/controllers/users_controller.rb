class UsersController < ApplicationController
  def new
    redirect_to new_user_registration_path
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "posts#index"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    params.expect(user: [ :name, :email, :password ])
  end
end
