require 'selenium-webdriver'

class HUDL_LogInPage

  @chromedriver1

  def initialize(driver)

    @chromedriver1 = driver

  end

  def LogIn(username, password)

    @chromedriver1.save_screenshot("iwillfindthis.png")
    #Enters the text 'search' into the wikipedia home page search field
    @chromedriver1.find_element(:id, "email").send_keys(username)

    #Selects the 'language', from the language drop down
    @chromedriver1.find_element(:id, "password").send_keys(password)

    #Clicks the search button
    @chromedriver1.find_element(:id, "logIn").click

    #Clicks the search button
    @chromedriver1.find_element(:id, "logIergdfgdfgdgn").click

  end



end