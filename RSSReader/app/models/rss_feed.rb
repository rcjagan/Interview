class RssFeed < ActiveRecord::Base
  attr_accessible :description, :link, :title, :items_attributes
  has_many :items
  accepts_nested_attributes_for :items

  validates :description, :link, :title, :presence => true
end
