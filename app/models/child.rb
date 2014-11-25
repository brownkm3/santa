class Child < ActiveRecord::Base
  validates :firstname, presence: true

  def good?
    return good ? 'nice' : 'naughty'
  end

  def self.check_list *naughty_or_nice
#    puts "here, looking for #{naughty_or_nice} children"
#    puts "First in the list = #{Child.first.firstname}"
    if naughty_or_nice.empty? then
      Child.all
    else
      case naughty_or_nice[0]
        when 'naughty'
          Child.where(good: false)
        when 'nice'
          Child.where(good: true)
      end
    end
  end

end
