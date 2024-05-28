
class Catalog 

  @@library = {books: [], films: []}


  def self.add(library_item)
    if library_item.kind == "Book"
      @@library[:books] << library_item
      puts "book added to library"
    elsif library_item.kind == "Film"
      @@library[:films] << library_item
      puts "film added to library"
    end
  end

  def self.remove(id, kind)
    library_item = find_by_id(id, kind)
    if (!library_item)
       puts "Item not found"
       return;
    else 
      if kind == "Book"
        @@library[:books].reject! { |book| book.id === id}
        @@library[:books].each { |item| puts "#{book.title} by #{item.author} (#{item.year})" }
      elsif kind == "Film"
        @@library[:films].reject! { |film| film.id === id}
        @@library[:films].each { |item| puts "#{item.title} by #{item.author} (#{item.year})" }
      end
    end

  end

  def self.get_info(id, kind)
    item = find_by_id(id, kind)
    puts kind
    if item
      puts "#{item.id}, #{item.title} by #{item.author} (#{item.year})"
    else
      puts "Item not found"
    end
  end


  def self.search(title, kind)
    library = find_by_title(title, kind)
    puts kind + "s"
    if library > 0
      library.each { |item| puts "#{item.title} by #{item.author} (#{item.year})" }
    else
      puts "No item with that title found."
    end
  end

  def self.lookup(kind)
    library = get_all(kind)
    puts kind + "s"
    if library > 0
      library.each { |item| puts "#{item.title} by #{item.author} (#{item.year})" }
    else
      puts "No item found."
    end
  end

  def self.look()
    puts "Books:"
    if @@library[:books].length > 0
      @@library[:books].each { |item| puts "#{item.id}, #{item.title} by #{item.author} (#{item.year})" }
    else
      puts "No item found."
    end
    puts "Films:"
    if @@library[:films].length > 0
      @@library[:films].each { |item| puts "#{item.id}, #{item.title} by #{item.author} (#{item.year})" }
    else
      puts "No item found."
    end
  end

  private

  def self.find_by_id(id, kind)
    if kind == "Book"
      library = @@library[:books].select { |book| book.id == id}
      return library[0]
    elsif kind == "Film"
      library = @@library[:films].select { |film| film.id == id}
      return library[0]
    end
  end

  def self.find_by_title(title, kind)
    if kind == "Book"
      @@library[:books].select { |book| book.title == title}
    elsif kind == "Film"
      @@library[:films].select { |film| film.title == title}
    end
  end

  def self.get_all(kind)
    if kind == "Book"
      @@library[:books]
    elsif kind == "Film"
      @@library[:films]
    end
  end

end