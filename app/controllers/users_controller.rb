class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    current_user.update(update_paramas)
  end

  private
  def update_paramas
    params.require(:user).permit(:family_name, :first_name,:family_name_kana,:first_name_kana )
  end
end
