require 'pry'

class Child < ActiveRecord::Base
  validates :firstname, presence: true
  validates :good, presence: true

  def good?
    return good ? 'nice' : 'naughty'
  end

  def self.check_list(naughty_or_nice)
    puts "here"
    puts "First in the list = #{Child.first}"
  end

end
