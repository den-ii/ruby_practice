require_relative 'catalog'
require_relative 'book'
require_relative 'film'


logo = <<LOGO
_ _ _                         \s
| (_) |                        \s
| |_| |__  _ __ __ _ _ __ _   _\s
| | | '_ \\| '__/ _` | '__| | | |
| | | |_) | | | (_| | |  | |_| |
|_|_|_.__/|_|  \\__,_|_|   \\__, |
                           __/ |
                          |___/\s
LOGO

puts logo
               
shouldLoop = true;

def view_library()
  Catalog.look()
  true
end

def add_to_library()
  puts "Enter 'b' to add a book or 'f' to add a film"
  cmd = gets.chomp().downcase
  case cmd
  when 'b'
    addBookToLibrary()
  when 'f'
    addFilmToLibrary()
  else
    puts "Not a valid input"
  end
  return true
end

def get_info()
  puts "Enter the id of the item you want to get info on:"
  id = gets.chomp().to_i
  if id < 1 
    puts "Not a valid input"
    return true
  end
  puts "Enter 'b' to get info on a book or 'f' to get info on a film"
  cmd = gets.chomp().downcase
  case cmd
  when 'b'
    Catalog.get_info(id, "Book")
  when 'f'
    Catalog.get_info(id, "Film")
  else
    puts "Not a valid input"
  end
  return true
end


def remove_item()
  puts "Enter the id of the item you want to remove:"
  id = gets.chomp().to_i
  if id < 1 
    puts "Not a valid input"
    return true
  end
  puts "Enter 'b' to remove a book or 'f' to remove a film"
  cmd = gets.chomp().downcase
  case cmd
  when 'b'
    Catalog.remove(id, "Book")
  when 'f'
    Catalog.remove(id, "Film")
  else
    puts "Not a valid input"
  end
  return true
end

def addBookToLibrary()
  puts("Enter ISBN:")
  isbn = gets.chomp().downcase
  puts("Enter Book Title:")
  title = gets.chomp().downcase
  puts("Enter Book Author:")
  author = gets.chomp().capitalize
  puts("Enter Book Year:")
  year = gets.chomp().to_i
  puts("Enter Amount Of Pages:")
  if (title.empty? || author.empty? || isbn.empty?)
      puts("Please fill in the information required")
      return true;
  end
  pages = gets.chomp().to_i

  if pages < 1 || year < 1
    puts("Not a valid input, must be an integer")
    return true;
  end
  newBook = Book.new(title, author , year, isbn, pages)
  Catalog.add(newBook)
  return true;
end

def addFilmToLibrary()
  puts("Enter Film Title:")
  title = gets.chomp().downcase;
  puts("Enter Film Maker:");
  author = gets.chomp().capitalize;
  puts("Enter Film Year:");
  year = gets.chomp().to_i;
  puts("Enter Ratings:");
  ratings = gets.chomp().to_i;
  puts("Enter Duration:");
  duration = gets.chomp().to_i;

  if (title.empty? || author.empty?)
      puts("Please fill in the information required");
      return true;
  end

  if duration < 1 || year < 1
    puts("Not a valid input, must be an integer");
    return true;
  end
  newFilm = Film.new(title, author, year, duration, ratings);
  Catalog.add(newFilm);
  return true;
end

def exit_library()
  puts("Goodbye!");
  puts("Exiting library...");
  return false;
end 

def trigger() 
  String cmd = gets.chomp().downcase();

  bool = case cmd 
  when "v"
    view_library()
  when "a"
    add_to_library();
  when "i" 
    get_info();
  when "r"
    remove_item();
  when "e"
    exit_library();
  else 
    puts("Invalid command");
    false;  
  end
  return bool
end

while shouldLoop 
  puts("Enter 'v' to view book library, 'a'" +
                    " to add an item, 'i' to get info on an " +
                    "item, 'r' to remove an item and 'e' to exit");

  shouldLoop = trigger();

end

