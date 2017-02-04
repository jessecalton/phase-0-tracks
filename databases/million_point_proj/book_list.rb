require 'sqlite3'

db1 = SQLite3::Database.new("books_to_read.db")
db2 = SQLite3::Database.new("books_read.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books_read(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    pages INT
  )
SQL

db1.execute(create_table_cmd)
db2.execute(create_table_cmd)

def add_book(db, title, pages)
  db1.execute("INSERT INTO books_to_read (title, pages) VALUES (?, ?)", [title, pages])
end

