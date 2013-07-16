# -*- encoding : utf-8 -*-
module ApplicationHelper

	def human_date_time(date)
    return "–" if date.nil?
    date.strftime('%d.%m.%Y %H:%M')
  end

end
