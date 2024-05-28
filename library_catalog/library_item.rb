
class LibraryItem 
  attr_accessor :title, :author, :year
  attr_reader :id

  @@length = 0

  def initialize(title, author, year)
    @@length += 1
    @title = title
    @author = author
    @year = year
    @id = @@length;
  end
end

