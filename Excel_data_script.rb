require 'watir'
require 'watir-webdriver'
require 'logger'
require 'Spreadsheet'

    
oXLWorkbook = Spreadsheet.open('Test1_Data.xls')
oXLWorkSheet = oXLWorkbook.worksheet('Sheet1')

 oXLWorkSheet.each do |row|

         break if row[0].nil?
	     
         if row[0]!= "Username"
	     Username = row[0]
	     Password = row[1]
	  
	     puts "\r\n********************************"
	     puts "The Username is #{Username}"
         puts "The Password is #{Password}"


        path = File.dirname(__FILE__)

        name_log = 'BUT_1'

        file = File.open(path + '/logs/' + name_log + '_logfile.log', File::WRONLY | File::APPEND | File::CREAT)

        $logger = Logger.new(file)
        
        
		
          #Open firefox browser
          @browser = Watir::Browser.new :firefox
<<<<<<< HEAD
=======
          @browser.driver.manage.window.maximize
>>>>>>> 09d2ca01f48212f2df6b9a0c88e88c6cd56a6eb2
          puts "Browser opens"
          $logger.info ("==> Browser opens")
     
          #opens trainingrite web page
          @browser.goto "http://www.trainingrite.net"
          puts "trainingrite web page opens"
<<<<<<< HEAD
		  $logger.info("==> trainingrite web page opens")
=======
		      $logger.info("==> trainingrite web page opens")
>>>>>>> 09d2ca01f48212f2df6b9a0c88e88c6cd56a6eb2

          @browser.text_field(:name=> 'txtphone').set Username
		  $logger.info("==> Username entered correctly")
		  
          @browser.text_field(:name=> 'txtpassword').set Password
		  $logger.info("==> Password entered correctly")

          @browser.button(:name=> 'btnSubmit').click 
          $logger.info("==> clicked the submit button")



             if @browser.text.include? "Customer Phone#: 1234567890"

             puts "Login is Successful with phone number: #{Username} and password: #{Password}"
			 $logger.info("==> Login is Successful with phone number: #{Username} and password: #{Password}")

            elsif @browser.text.include? "Customer Phone#: 8243838930"

			puts "Login is Successful with phone number: #{Username} and password: #{Password}"
			 $logger.info("==> Login is Successful with phone number: #{Username} and password: #{Password}")
			
			
			elsif @browser.text.include? "Customer Phone#: 4537726634"

			puts "Login is Successful with phone number: #{Username} and password: #{Password}"
			 $logger.info("==> Login is Successful with phone number: #{Username} and password: #{Password}")
			
			else

             puts "Login failed with phoneNumber: #{Username} and password: #{Password}"
			 $logger.info("==> Login is not Successful with phone number: #{Username} and password: #{Password}")
            
            @browser.close
			
			end
			
	        end
	 
            end

	
			

     
