# frozen_string_literal: true

module ApplicationHelper
  def formatted_time(timestamp)
    return if timestamp.nil?

    Time.zone.at(timestamp).strftime('%m/%d/%y %I:%M %p')
  end

  def cache_indicator(zip)
    if Rails.cache.exist?(['zip', zip])
      raw tag.i(data: { feather: 'cloud-off' })
    else
      Rails.cache.delete(['zip', zip])
    end
  end
end
