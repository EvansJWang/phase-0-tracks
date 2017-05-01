# Gainz
# require gems
require 'sqlite3'

# Create a workout database
sbd = SQLite3::Database.new("SBD.db")
sbd.results_as_hash = true

# Create a profile -user name,weight,current lifts.goals
user = SQLite3::Database.new("Wangtron.db")
user.results_as_hash = true

create_SBD_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS SBD (
  id INTEGER PRIMARY KEY,
  Squat INT,
  S_date INT,
  Bench INT,
  B_date INT,
  Deadlift INT,
  D_date INT
  )
SQL

create_user_table = <<-User
  CREATE TABLE IF NOT EXISTS Wangtron (
  id INTEGER PRIMARY KEY,
  name TEXT,
  weight INT,
  Current_Squat INT,
  Current_Bench INT,
  Current_Deadlift INT
  )
User


# Create methods to update weight and lift percentages


# create a kittens table (if it's not there already)
sbd.execute(create_SBD_table)
user.execute(create_user_table)


# add user info
#user.execute("INSERT INTO Wangtron (name, weight, Current_Squat, Current_bench, Current_Deadlift) VALUES ('Evans', 192, 225, 185, 225)")

# modify user info
def update_squat(squat_pr)
  user = SQLite3::Database.new("Wangtron.db")
  user.execute("UPDATE Wangtron SET Current_Squat=('#{squat_pr}') WHERE name = 'Evans'")
end

def update_bench(bench_pr)
  user = SQLite3::Database.new("Wangtron.db")
  user.execute("UPDATE Wangtron SET Current_Bench=('#{bench_pr}') WHERE name = 'Evans'")
end

def update_deadlift(deadlift_pr)
  user = SQLite3::Database.new("Wangtron.db")
  user.execute("UPDATE Wangtron SET Current_Deadlift=('#{deadlift_pr}') WHERE name = 'Evans'")

end

update_bench(185)
update_squat(225)
update_deadlift(315)

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)
# end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

