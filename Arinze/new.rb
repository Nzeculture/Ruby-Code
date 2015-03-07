require 'rubygems'
require 'watir-webdriver'
require 'logger'


    path = File.dirname(__FILE__)

    name_log = 'BUT_1'

    file = File.open(path + '/logs/' + name_log + '_logfile.log', File::WRONLY | File::APPEND | File::CREAT)

    $logger = Logger.new(file)
        
        
	module Websitelogin
	
	
	#opens trainingrite retail page
	def electronics
	@browser = Watir::Browser.new :chrome
	@browser.driver.manage.window.maximize
    @browser.goto("http://www.trainingrite.net/online")        
    puts "trainingrite retail site opens"
    $logger.info("==> trainingrite retail site opens")     
     
    end	 

	#enter search value
	def search_item
	 
    @browser.text_field(:name=> 'txtSearch').set('tv')
	puts "search value entered correctly"
    $logger.info("==> search value entered correctly")
	end

	def click_go
	
    @browser.text_field(:xpath=> 'html/body/table[1]/tbody/tr/td[1]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/input').click
	puts "Go button clicked"
    $logger.info("==> Go button clicked")

	end
     
    #Click Panasonic cart button
	
	def add_cart
    @browser.image(:xpath=> 'html/body/font/table[1]/tbody/tr[1]/td[3]/a/img').click
	puts "cart button selected"
    $logger.info("==> panasonic cart button selected")

    end
	
   #Add product quantity
   def product_quantity
   @browser.text_field(:name=> 'txtItemQty1').set '4' 
   puts "Quantity entered"
   $logger.info("==> Quantity entered")

   end
	
	#proceed to checkout
	def proceed_checkout
	@browser.button(:value=> 'Proceed to Checkout').click
	puts "checkout button clicked"
    $logger.info("==> checkout button clicked")

	end
	
	#customer_name
	def customer_name
	@browser.text_field(:name=> 'txtCustomerName').set('John')
	puts "customer name entered correctly"
    $logger.info("==> customer name entered correctly")
	
	end

	#customer_Address
	def customer_Address
		begin
			@browser.text_field(:name=> 'txtAddress').send_keys("5 close street")
			puts("I am the Doctom")
			puts "Address name given"
			$logger.info("==> Address name given")
		rescue
			$logger.error("Error occured while trying to type address name")
		ensure
			puts("This line must always get executed")
			$logger.warn("This line always runs")
		end 
	end
	
	#city
	def city_name
	@browser.text_field(:name => 'txtCity').send_keys('Havana')
	puts "city name entered successfully"
    $logger.debug("==> city name entered successfully")

	end
	
	#State_name
	def State_name
	@browser.text_field(:xpath=> 'html>body>font>form>table>tbody>tr>td>table>tbody>tr>td>font>input').set 'Anambra'
	puts "State name given"
    $logger.info("==> State name given")

	end
	
	#zip code
	def zip_detail
	@browser.text_field(:xpath=> 'html>body>font>form>table>tbody>tr>td>table>tbody>tr>td>font>input').set '234'
	puts "zip is correct"
    $logger.info("==> zip is correct")
	
	end
	
	end
