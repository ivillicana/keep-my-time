module CongregationsHelper

  def current_user_congregation
    if current_user.congregation
      current_user.congregation.name_with_city_state
    else
      render partial: 'congregations/list', locals: {user: current_user}
    end
  end

end
