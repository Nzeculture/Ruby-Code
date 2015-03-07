=begin
#Introduction to Functions

def welcome

puts "Welcome to Trainingrite Ruby Cucumber class 2015"


end

welcome

=end

#Parametrization of function

def welcome(coursetype)

puts "Welcome to Trainingrite #{coursetype} class 2015"


end

def customerinformation(name,address,zip,state,country)
puts "Here is my mailing details #{name},#{address},#{zip},#{state},#{country}"

end

welcome ("Ruby Cucumber Class")
customerinformation("Arinze","95 Street","T5H 2A6","Alberta","Canada")


