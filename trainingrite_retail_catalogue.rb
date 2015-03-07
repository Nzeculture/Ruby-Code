require 'rubygems'
require 'watir-webdriver'
require 'logger'


path = File.dirname(__FILE__)

name_log = 'TV_ORDER'

file = File.open(path + '/logs/' + name_log + '_logfile.txt', File::WRONLY | File::APPEND | File::CREAT)

$logger = Logger.new(file)


        
module Websitelogin


	#opens trainingrite retail page
	def electronics

	    @browser = Watir::Browser.new :ie
	    @browser.driver.manage.window.maximize
    begin
      @browser.goto "http://www.trainingrite.net/online"
      puts "trainingrite retail site opens"
      $logger.info("==> trainingrite retail site opens")
    rescue
      $logger.error("==> trainingrite retail site did not open")

    end

  end

	#enter search value
	def search_item
	   begin
    @browser.text_field(:name=> 'txtSearch').set ('tv')
	  puts "search value entered correctly"
    $logger.info("==> search value entered correctly")
     rescue
       $logger.error("==> search item not entered")
     ensure
       puts("This line must always get executed")
       $logger.warn("This line should always run")

     end
     end

	def click_go
	   begin
      @browser.text_field(:xpath=> 'html/body/table[1]/tbody/tr/td[1]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/input').click
	    puts "Go button clicked"
      $logger.info("==> Go button clicked")
     rescue
       $logger.error("==> Go button not clicked")
     ensure
       puts("This line must always get executed")
       $logger.warn("This line should always run")

     end

	end

  #Click Panasonic cart button
	def add_cart
    begin
      @browser.image(:xpath=> 'html/body/font/table[1]/tbody/tr[1]/td[3]/a/img').click
  	  puts "cart button selected"
      $logger.info("==> panasonic cart button selected")
    rescue
      $logger.error("==> panasonic cart button not selected")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

        end
    end
	
   #Add product quantity
   def product_quantity
     begin
       @browser.text_field(:name=> 'txtItemQty1').set('4')
       puts "Quantity entered"
       $logger.info("==> Quantity entered")
     rescue
       $logger.error("==> panasonic cart button not selected")
     ensure
       puts("Quantity not entered")
       $logger.warn("This line should always run")

     end

   end
	
	#proceed to checkout
	def proceed_checkout
    begin
	    @browser.button(:value=> 'Proceed to Checkout').click
	    puts "checkout button clicked"
      $logger.info("==> checkout button clicked")
    rescue
      $logger.error("==> checkout cart button not clicked")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

	end
	
	#customer_name
	def customer_name
      begin
	      @browser.text_field(:name=> 'txtCustomerName').send_keys('John')
	      puts "customer name entered correctly"
        $logger.info("==> customer name entered correctly")
      rescue
        $logger.error("==> customer name not entered")
      ensure
        puts("This line must always get executed")
        $logger.warn("This line should always run")

      end
	
	end	

	#customer_Address
	def customer_Address
    begin
	    @browser.text_field(:name=> 'txtAddress').send_keys('5 close street')
	    puts "Address name given"
      $logger.info("==> Address name given")
    rescue
      $logger.error("==> customer address not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

	end
	
	#city
	def city_name
    begin
	   @browser.text_field(:name=> 'txtCity').send_keys('Havana')
	   puts "city name entered successfully"
     $logger.info("==> city name entered successfully")
    rescue
     $logger.error("==> city name not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

	end
	
	#State_name
	def state_name
      begin
	      @browser.text_field(:name=> 'txtState').send_keys('Anambra')
	      puts "State name given"
        $logger.info("==> State name given")
      rescue
        $logger.error("==> State name not entered")
      ensure
        puts("This line must always get executed")
        $logger.warn("This line should always run")

      end

	end
	
	#zip code
	def zip_detail
    begin
	    @browser.text_field(:name=> 'txtZIP').send_keys('234')
	    puts "zip is correct"
      $logger.info("==> zip is correct")
    rescue
      $logger.error("==> zip detail not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

	end

	#daytime text phone
	def text_phone
    begin
	    @browser.text_field(:name=> 'txtPhone').send_keys("1234567890")
	    puts "Phone number entered"
      $logger.info("==> Phone number entered")
    rescue
      $logger.error("==> text phone not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

	end

  #payment_choice
  def payment_choice
    begin
      @browser.radio(:value=> 'visa').set
      puts "Visa payment selected"
      $logger.info("==> Visa payment selected")
    rescue
      $logger.error("==> payment choice not selected")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #account_number
  def account_number
    begin
      @browser.text_field(:name=> 'txtAcctNo').send_keys('6754876534562123')
      puts "account_number entered"
      $logger.info("==> account_number entered")
    rescue
      $logger.error("==> account number not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #cvv_number
  def ccv_number
    begin
      @browser.text_field(:name=> 'txtCVV2No').send_keys('675')
      puts "cvv_number entered"
      $logger.info("==> ccv_number entered")
    rescue
      $logger.error("==> ccv not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #expiry_date
  def expiry_date
    begin
      @browser.text_field(:name=> 'txtExpDate').send_keys('02/2017')
      puts "expiry date entered"
      $logger.info("==> expiry date entered")
    rescue
      $logger.error("==> expiry date missed")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #collector_name
  def collector_name
    begin
    @browser.text_field(:name=> 'txtshipCustomerName').send_keys('Arinze')
    puts "recepient name entered"
    $logger.info("==> recepient name entered")
    rescue
      $logger.error("==> collected name not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #recipient_address
  def recipient_address
    begin
      @browser.text_field(:name=> 'txtshipAddress').send_keys('10 Edmonton Street')
      puts "recepient address entered"
      $logger.info("==> recepient address entered")
    rescue
      $logger.error("==> recipient address not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #shipping_city
  def shipping_city
    begin
      @browser.text_field(:name=> 'txtshipCity').send_keys('Calgary')
      puts "shipping city entered"
      $logger.info("==> shipping city entered")
    rescue
      $logger.error("==> shipping city not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #shipping_state
  def shipping_state
    begin
      @browser.text_field(:name=> 'txtshipState').send_keys('Canada')
      puts "shipping state entered"
      $logger.info("==> shipping state entered")
    rescue
      $logger.error("==> shipping state not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #shipping_zip
  def shipping_zip
    begin
      @browser.text_field(:name=> 'txtshipZIP').send_keys('001')
      puts "zip details entered"
      $logger.info("==> zip details entered")
    rescue
      $logger.error("==> zip name not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #shipping_phone
  def shipping_phone
    begin
      @browser.text_field(:name=> 'txtshipPhone').send_keys('09876543211')
      puts "shipping_phone entered"
      $logger.info("==> shipping_phone entered")
    rescue
      $logger.error("==> shipping phone not entered")
    ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")

    end

  end

  #order_button
  def order_button
     begin
       @browser.button(:name=> 'cmdSubmit').click
       @browser.driver.save_screenshot('order_screenshot.jpg')
       puts "order submitted"
       $logger.info("==> order submit button clicked")
     rescue
       $logger.error("==> error occured and order not completed!")
     ensure
      puts("This line must always get executed")
      $logger.warn("This line should always run")
     end
  end
  
  
  #verify_success
  def verify_success
    @name= 'John'
    if @browser.text.include? "Thank you for ordering with us!"

      puts "order is Successful with owner name: #{@name}"
      $logger.info("==> order completed sucessfully")
    else

      puts "order failed with owner name: #{@name}"
      $logger.error("==> order failed")

    end
  end


   #close browser
   def close_browser
    @browser.close
     puts "browser closed"
     $logger.info("==> browser closed!")
   end

  end













			

     
