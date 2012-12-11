class Movie < ActiveRecord::Base # from chp 7.1 
# place a copy of the following line anywhere inside the Movie class
#  AND inside the Moviegoer class (idiomatically, it should go right
#  after 'class Movie' or 'class Moviegoer'):chp 7.3 step 1c.
  has_many :reviews

  RATINGS = %w[G PG PG-13 R NC-17]  #  %w[] shortcut for array of strings
  validates :title, :presence => true
  validates :release_date, :presence => true
  validate :released_1930_or_later # uses custom validator below
  validates :rating, :inclusion => {:in => RATINGS}
  def released_1930_or_later
    errors.add(:release_date, 'must be 1930 or later') if
      self.release_date < Date.parse('1 Jan 1930')
  end
      
end
# try in console:
m = Movie.new(:title => '', :rating => 'RG', :release_date => '1929-01-01')
# force validation checks to be performed:
m.valid?  # => false
m.errors[:title] # => ["can't be blank"]
m.errors[:rating] # => ["is not included in the list"]
m.errors[:release_date] # => ["must be 1930 or later"]
m.errors.full_messages # => ["Title can't be blank", "Rating is not included in the list", "Release date must be 1930 or later"]

