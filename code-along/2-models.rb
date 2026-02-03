# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data). Create, Read, Update, Delete

# 1a. check out the schema file
# 1b. check out the model file

# cat log/development.log will allow us to see the log file.
# 2. insert new rows in companies table
new_company = Company.new #creates a new instance of the class
# puts new_company
# p new_company
new_company["name"] = "Surridge Industries"
new_company["city"] = "Chicago"
new_company["state"] = "California"
new_company["url"] = "www.google.com"
# p new_company
new_company.save
# p new_company

new_company = Company.new #creates a new instance of the class
# puts new_company
# p new_company
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "Washington"
new_company["url"] = "www.amazon.com"
# p new_company
new_company.save
# p new_company

new_company = Company.new #creates a new instance of the class
# puts new_company
# p new_company
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "California"
new_company["url"] = "www.apple.com"
# p new_company
new_company.save
# p new_company

# puts "Companies in db: #{Company.all.count}"

# 3. query companies table to find all row with California company

cali_companies = Company.where({"state" => "California"})
# p cali_companies
# puts "Number of Cali Companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
apple_info = Company.find_by({"name" => "Apple"}) #where statement always returns an array
# p apple_info 

# 5. read a row's column value
# puts apple_info["url"]


# 6. update a row's column value
apple_info["url"] = "https://apple.com"
apple_info.save
# p Company.find_by({"name" => "Apple"})

# 7. delete a row
# apple_info.destroy

puts "Companies in db: #{Company.all.count}"
expected_count_comps = 2
if expected_count_comps !=Company.all.count
  puts "PROBLEM!!"
  else
    puts "SUCCESS"
end
