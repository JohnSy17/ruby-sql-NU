# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb
puts "hi"

# String Class
John_Fav_Food = "pizza"
# puts John_Fav_Food.class #tells the class of the variable
# puts John_Fav_Food.methods
puts John_Fav_Food.upcase


# String Methods

class Dog
  
  def speak
    puts "Woooooooof!"
  end

end

fido = Dog.new #builds a new dog called fido. A way to run the class.
puts fido.speak #call the method within the class dog called fido