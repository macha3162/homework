module ApplicationHelper

  def map_params(result)
    "#{result.prefecture}#{result.city}#{result.area}"
  end
end
