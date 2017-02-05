require 'sqlite3'

db = SQLite3::Database.new("books_to_read.db")
db.results_as_hash = true

create_table_cmd1 = <<-SQL
  CREATE TABLE IF NOT EXISTS books_to_read(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
  )
SQL

create_table_cmd2 = <<-SQL
  CREATE TABLE IF NOT EXISTS books_read(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
  )
SQL

db.execute(create_table_cmd1)
db.execute(create_table_cmd2)
puts "Hello book lover!"

puts "Here is your current reading list:"

wish_list = db.execute("SELECT * FROM books_to_read")

wish_list.each do |book|
  puts "#{book['title']}"
end

def add_book(db, title)
  db.execute("INSERT INTO books_to_read (title) VALUES (?)", [title])
end

def finished_book(db, title)
  db.execute("INSERT INTO books_read (title) VALUES (?)", [title])
end

puts "What books would you like to read this month? Type 'done' when complete."

loop do
  title = gets.chomp
  if title == "done"
    break
  end
  add_book(db, title)
end

puts "What books have you recently read? Type 'done' when complete."

# loop do
#   title = gets.chomp
#   if title == "done"
#     break
#   end
#   finished_book(db, title)
# end

# puts "***"
# puts "Time passes..."
# puts "...reading..."
# puts "...reading..."
# puts "...reading..."
# puts "...reading..."
# puts "...OK!"
# puts "You've reached the end of the month! What books did you finish? Type 'done' when complete."

def remove_book(db, title)
  db.execute("DELETE FROM books_to_read WHERE title=(?)", [title])
end

loop do
  title = gets.chomp
  if title == "done"
    break
  end
  remove_book(db, title)
  finished_book(db, title)
end

puts "Here are the books you have completed:"

books = db.execute("SELECT * FROM books_read")

books.each do |book|
  puts "You finished '#{book['title']}'. That is a great read!"
end

puts "

"

puts "Here is your reading list for next month:"

puts "

"

second_list = db.execute("SELECT * FROM books_to_read")

second_list.each do |book|
  puts "You still need to finish '#{book['title']}'! You can do it!"
end
puts "

"
puts "Have you changed your mind about any of the books on your reading list? Would you like to remove any? (y/n)"
remove_books = gets.chomp

if remove_books == 'y'
  loop do
    puts "Type the title of the book you wish to remove. Type 'done' when complete."
    title = gets.chomp
    if title == "done"
      break
    end
    remove_book(db, title)
  end
  puts "------------------------------------------

  "
  last_list = db.execute("SELECT * FROM books_to_read")
  puts "Here is your updated reading to-do list:"
  last_list.each do |book|
  puts "'#{book['title']}'"
  end
end

puts "------------------------------------------


"

puts "Goodbye!"
puts "

"
puts "Don't forget to share the love of reading!"


