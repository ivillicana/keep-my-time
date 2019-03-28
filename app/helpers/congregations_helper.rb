module CongregationsHelper
  def current_user_congregation
    current_user.congregation ? current_user.congregation.name : "No assigned congregation"
  end
end
