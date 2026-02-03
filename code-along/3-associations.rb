# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company
apple_name = Company.find_by({"name" => "Apple"})
p apple_name

new_contact = Contact.new
new_contact["first_name"] = "Tim"
new_contact["last_name"] = "Cook"
new_contact["email"] = "time@apple.com"
new_contact["company_id"] = apple_name["id"]
p new_contact
new_contact.save
p new_contact


## BUILT IN TEST WE CREATED
# expected_count_contacts = 3
# if expected_count_contacts != Contact.all.count
#   raise "ALERT!!!!" #raises a big error
# end

# 2. How many contacts work at Apple?

# 3. What is the full name of each contact who works at Apple?
