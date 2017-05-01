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
  S_date TEXT,
  Bench INT,
  B_date TEXt,
  Deadlift INT,
  D_date TEXT
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
def update_squat(squat_pr, date)
  user = SQLite3::Database.new("Wangtron.db")
  user.execute("UPDATE Wangtron SET Current_Squat=('#{squat_pr}') WHERE name = 'Evans'")
  sbd = SQLite3::Database.new("SBD.db")
  sbd.execute("INSERT INTO SBD (Squat, S_date) VALUES ('#{squat_pr}', '#{date}')")
end

def update_bench(bench_pr, date)
  user = SQLite3::Database.new("Wangtron.db")
  user.execute("UPDATE Wangtron SET Current_Bench=('#{bench_pr}') WHERE name = 'Evans'")
  sbd = SQLite3::Database.new("SBD.db")
  sbd.execute("INSERT INTO SBD (Bench, B_date) VALUES ('#{bench_pr}', '#{date}')")
end

def update_deadlift(deadlift_pr, date)
  user = SQLite3::Database.new("Wangtron.db")
  user.execute("UPDATE Wangtron SET Current_Deadlift=('#{deadlift_pr}') WHERE name = 'Evans'")
  sbd = SQLite3::Database.new("SBD.db")
  sbd.execute("INSERT INTO SBD (Deadlift, D_date) VALUES ('#{deadlift_pr}', '#{date}')")
end

# Working Examples
 # update_bench(185, "May 1")
 # update_squat(225, "April 30")
 # update_deadlift(315, "May 2")

# Retrieve current PR's

# gainz = sbd.execute("Select * FROM SBD")
# gainz.each do |pr|
#     if 
#       pr['Squat'].to_i > 0 
#       puts "Squat gains are #{pr['Squat']} on #{pr['S_date']}"
#     elsif 
#       pr['Bench'].to_i > 0 
#       puts "Bench gains are #{pr['Bench']} on #{pr['B_date']}"
#     elsif 
#       pr['Deadlift'].to_i > 0 
#       puts "Deadlift gains are #{pr['Deadlift']} on #{pr['D_date']}"
#     end
#   end


### USER INTERFACE
puts "Did you make gainz today? (y/n)"
progress = gets.chomp

if progress == "y" 
  puts "Squat,Bench or Deadlift?"
    lift = gets.chomp
    if lift.downcase == "squat"
      puts "What did you lift?"
        pr = gets.chomp
        puts " What is today's date?"
        date = gets.chomp
        update_squat(pr,date)
    elsif lift.downcase == "bench"
      puts "What did you lift?"
        pr = gets.chomp
        puts " What is today's date?"
        date = gets.chomp
        update_bench(pr,date)
    elsif lift.downcase == "deadlift"
      puts "What did you lift?"
        pr = gets.chomp
        puts " What is today's date?"
        date = gets.chomp
        update_deadlift(pr,date)
    end

else 
# gainz = sbd.execute("Select * FROM SBD")
# gainz.each do |pr|
#     if 
#       pr['Squat'].to_i > 0 
#       puts "Squat gains are #{pr['Squat']} on #{pr['S_date']}"
#     elsif 
#       pr['Bench'].to_i > 0 
#       puts "Bench gains are #{pr['Bench']} on #{pr['B_date']}"
#     elsif 
#       pr['Deadlift'].to_i > 0 
#       puts "Deadlift gains are #{pr['Deadlift']} on #{pr['D_date']}"
#     end
#   end
end


gainz = sbd.execute("Select * FROM SBD")
gainz.each do |pr|
    if 
      pr['Squat'].to_i > 0 
      puts "Squat gains are #{pr['Squat']} on #{pr['S_date']}"
    elsif 
      pr['Bench'].to_i > 0 
      puts "Bench gains are #{pr['Bench']} on #{pr['B_date']}"
    elsif 
      pr['Deadlift'].to_i > 0 
      puts "Deadlift gains are #{pr['Deadlift']} on #{pr['D_date']}"
    end
end

