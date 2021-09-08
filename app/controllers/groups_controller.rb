class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    group = Group.new(group_params)
    group.owner_id = current_user.id
    binding.pry
    group.save
    group_user = GroupUser.create(user_id: current_user.id,group_id: group.id)
    redirect_to groups_path
  end

  def show
    @group = Group.find(params[:id])
  end

  def index
    @groups = Group.all
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    group = Group.find(params[:id])
    group.update(group_params)
    redirect_to groups_path
  end

  private
  def group_params
    params.require(:group).permit(:name,:introduction,:image,:owner)
  end

end
