class GroupUsersController < ApplicationController

  def join
    group_user = GroupUser.new(group_user_params)
    group_user.user_id = current_user.id
    group_user.save
    redirect_to request.referer
  end

  def leave
    group_user = GroupUser.find_by(user_id: current_user, group_id: params[:group_id])
    group_user.destroy
    redirect_to request.referer
  end


  private

  def group_user_params
    params.permit(:group_id)
  end



end
