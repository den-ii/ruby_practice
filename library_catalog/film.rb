require_relative 'library_item'

class Film < LibraryItem 

  attr_accessor :duration, :ratings, :kind

  def initialize(title, author, year, duration, ratings)
     super(title, author, year)
     @duration = duration
     @ratings = ratings
     @kind = "Film"
  end

end