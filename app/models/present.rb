require 'uri'

class Present < ActiveRecord::Base
  validates :description, presence: true, length: { maximum: 140 }
  validates :child_id, numericality: {greater_than: 0}
  validates :url, url: true 

end
