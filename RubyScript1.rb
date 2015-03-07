require 'rubygems'
require 'watir'
require 'watir-webdriver'
require 'logger'
require 'Spreadsheet'


v_FirstName = 'Arinze'
v_LastName = 'Testing'
v_Password = 'password'
v_PhoneNumber = '1234567890'

#Open firefox browser
browser = Watir::Browser.new :firefox
puts "Browser opens"

#opens trainingrite registration  page
browser.goto "http://www.trainingrite.net"
puts "registration page opens"


browser.button(:xpath=> 'html/body/table[2]/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/font/center[2]/table/tbody/tr[2]/td[1]/div/input').click

#Enter first name
browser.text_field(:name=> 'ctl00$MainContent$txtFirstName').set v_FirstName
puts "First name entered correctly"

#Enter last name
browser.text_field(:name=> 'ctl00$MainContent$txtLastName').set v_LastName
puts "Last name entered correctly"

#Enter email Address
browser.text_field(:name=> 'ctl00$MainContent$txtEmail').set 'testing@yahoo.com'
puts "email entered correctly"

#Enter password
browser.text_field(:name=> 'ctl00$MainContent$txtPassword').set v_Password
puts "Password is entered correctly"


#Verify password
browser.text_field(:name=> 'ctl00$MainContent$txtVerifyPassword').set v_Password
puts "password verified"


#Enter HomePhone number
browser.text_field(:name=> 'ctl00$MainContent$txtHomePhone').set v_PhoneNumber
puts "HomePhone Number entered correctly"


#Enter CellPhone number
browser.text_field(:name=> 'ctl00$MainContent$txtCellPhone').set v_PhoneNumber
puts "CellPhone entered"

#Click submit button
browser.button(:name=> 'ctl00$MainContent$btnSubmit').click
puts "Submit button clicked"


if browser.text.include? "Customer information added successfully"

puts "Login is Successful with phone number: #{v_PhoneNumber} and password: #{v_Password}"

else

puts "Login failed with phoneNumber: #{v_PhoneNumber} and password: #{v_Password}"

end


browser.close



