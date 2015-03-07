require 'rubygems'
require 'watir'
require 'watir-webdriver'



#Open firefox browser
browser = Watir::Browser.new :firefox
puts "Browser opens"


#opens trainingrite registration  page
browser.goto "http://www.trainingrite.net"
puts "registration page opens"


browser.button(:xpath=> 'html/body/table[2]/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/font/center[2]/table/tbody/tr[2]/td[1]/div/input').click

#Enter first name
browser.text_field(:name=> 'ctl00$MainContent$txtFirstName').set 'Trainingrite'
puts "First name entered correctly"

#Enter last name
browser.text_field(:name=> 'ctl00$MainContent$txtLastName').set 'Testing'
puts "Last name entered correctly"

#Enter email Address
browser.text_field(:name=> 'ctl00$MainContent$txtEmail').set 'Trainingrite@yahoo.com'
puts "email entered correctly"

#Enter password
browser.text_field(:name=> 'ctl00$MainContent$txtPassword').set 'password'
puts "Password is entered correctly"


#Verify password
browser.text_field(:name=> 'ctl00$MainContent$txtVerifyPassword').set 'password'
puts "password verified"


#Enter HomePhone number
browser.text_field(:name=> 'ctl00$MainContent$txtHomePhone').set '1234567890'
puts "HomePhone Number entered correctly"


#Enter CellPhone number
browser.text_field(:name=> 'ctl00$MainContent$txtCellPhone').set '1234567890'
puts "CellPhone entered"



#Enter instruction details
browser.textarea(:name=> 'ctl00$MainContent$txtInstructions').set 'No Calls weekends'
puts "Instructions entered"


#Click submit button
browser.button(:name=> 'ctl00$MainContent$btnSubmit').click
puts "Submit button clicked"


  if browser.text.include? "Customer information added successfully"

  puts "Registration is Successful with phone number: 1234567890 and password: password"

  else

  puts "Registration failed"

  end


  browser.close

