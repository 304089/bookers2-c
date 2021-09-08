class GroupOwnersController < ApplicationController

  def new
    @group_owner = GroupOwner.new
  end

  def create
    @group = Group.find(params[:group_id])
    group_owner = GroupOwner.new(group_owner_params)
    group_owner.user_id = current_user.id
    group_owner.group_id = @group.id
    group_owner.save
    redirect_to group_group_owner_path(@group.id, group_owner.id)
  end

  def show
    @group_owner = GroupOwner.find(params[:id])
  end

  private
    def group_owner_params
      params.require(:group_owner).permit(:title,:body)

    end

end
