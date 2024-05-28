require_relative 'library_item'

class Book < LibraryItem 

  attr_accessor :isbn, :page_amount, :kind

  def initialize(title, author, year, isbn, page_amount)
     super(title, author, year)
     @isbn = isbn
     @page_amount = page_amount
     @kind = "Book"
  end

end