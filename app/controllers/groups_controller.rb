class GroupsController < ApplicationController
before_action :set_group, only: [:show, :edit, :update]
  def show
  end

  def edit
  end

  def update
    @group.update(group_params)
  end

  private
  def group_params
    params.require(:group).permit(:key, :detail)
  end
  def set_group
     @group = Group.find(params[:id])
  end
end
