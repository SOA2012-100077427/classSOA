# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.fiASF
#
more_movies = [
  {:title => 'Aladdin', :rating => 'G',:release_date => '25-Nov-1992'},
  {:title => 'When Harry Met Sally', :rating => 'G', :release_date => '21-jul-1989'}
  ]

Movie.send(:attr_accessible, :title, :rating, :release_date)
more_movies.each do |movie|
  Movie.create!(movie)
end
