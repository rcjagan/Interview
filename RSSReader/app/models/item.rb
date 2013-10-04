class Item < ActiveRecord::Base
  attr_accessible :description, :link, :title
  belongs_to :rss_feed
end
