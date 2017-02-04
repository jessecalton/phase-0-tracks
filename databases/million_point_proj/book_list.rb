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
puts "Hello"

def add_book(db, title)
  db.execute("INSERT INTO books_to_read (title) VALUES (?)", [title])
end

def finished_book(db, title)
  db.execute("INSERT INTO books_read (title) VALUES (?)", [title])
end

puts "What three books would you like to read this month?"

3.times do 
  title = gets.chomp
  add_book(db, title)
end

puts "What three books did you read last month?"

3.times do
  title = gets.chomp
  finished_book(db, title)
end

puts "Time passes..."
puts "..."
puts "..."
puts "..."
puts "You've reached the end of the month! What books did you finish? Type 'done' when complete."

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
puts books.class
p books

books.each do |book|
  puts "You finished '#{book['title']}'. That is a great read!"
end

puts "Thanks for playing!"


