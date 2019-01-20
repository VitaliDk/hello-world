require 'selenium-webdriver'




class Wikipedia

  @chromedriver1

  def initialize(driver)

    @chromedriver1 = driver

  end

  def searchFor(search, language)

    #Enters the text 'search' into the wikipedia home page search field
    @chromedriver1.find_element(:id, "searchInput").send_keys(search)

    #Selects the 'language', from the language drop down
    language_dropdown = @chromedriver1.find_element(:id, "searchLanguage")
    language_chosen = Selenium::WebDriver::Support::Select.new(language_dropdown)
    language_chosen.select_by(:text, language)

    #Clicks the search button
    @chromedriver1.find_element(:xpath, "//button[@type='submit']").click

  end



end