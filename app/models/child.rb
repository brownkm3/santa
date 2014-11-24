class Child < ActiveRecord::Base
  validates :firstname, presence: true
  validates :good, presence: true

  def good?
    return good ? 'nice' : 'naughty'
  end
end
