module CongregationsHelper

  def current_user_congregation
    if current_user.congregation
      render partial: 'congregations/cong_show'
    else
      render partial: 'congregations/list', locals: {user: current_user}
    end
  end

end
