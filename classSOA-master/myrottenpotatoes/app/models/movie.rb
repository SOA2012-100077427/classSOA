class Movie < ActiveRecord::Base
  before_save :capitalize_title
  RATINGS = %w[G PG PG-13 R NC-17]  #  %w[] shortcut for array of strings
  validates :title, :presence => true
  validates :release_date, :presence => true
  validate :released_1930_or_later # uses custom validator below
  has_many :reviews
  def released_1930_or_later
    errors.add(:release_date, 'must be 1930 or later') if
      self.release_date < Date.parse('1 Jan 1930')
  end
  def capitalize_title
    self.title = self.title.split(/\s+/).map(&:downcase).
      map(&:capitalize).join(' ')
  end
end

