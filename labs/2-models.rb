# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
puts "Salespeople: #{Salesperson.all.count}"

new_salesperson = Salesperson.new 
new_salesperson["first_name"] = "Ben"
new_salesperson["last_name"] = "Block"
new_salesperson["email"] = "ben@block.com"
new_salesperson.save

new_salesperson = Salesperson.new 
new_salesperson["first_name"] = "Brian"
new_salesperson["last_name"] = "Eng"
new_salesperson["email"] = "brian@eng.com"
new_salesperson.save

# 3. write code to display how many salespeople rows are in the database
puts "Salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
ben_email = Salesperson.find_by({"first_name" => "Ben"})
puts ben_email.inspect

ben_email["email"] = "ben.block@kellogg.edu"
ben_email.save
puts nil 
puts ben_email.inspect
puts nil 
# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
puts salespeople.inspect

for person in salespeople
    puts "#{person["first_name"]} #{person["last_name"]}"
end 
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
