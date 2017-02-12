# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/advisors' do 
  erb :advisors
end 

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/assign_advisor' do 
  input_id = params["ID"]
  ID = input_id.to_i
    if (ID >= 1 && ID <= 10)
      advisor = "Glenna"
    elsif (ID >= 11 && ID < 21)
      advisor = "Andrew"
    elsif (ID >= 21 && ID < 31)
      advisor = "Emmanuel"
    elsif (ID >= 31 && ID < 41)
      advisor = "Tyler"
    else
      advisor = nil
    end

    if advisor == nil
      "You've been added to our super fun wait list!"
    else
      "Your advisor is #{advisor}"
    end
end 

# add static resources