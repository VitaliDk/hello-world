require 'selenium-webdriver'




class WikiSearchResult

  @chromedriver2
  def initialize(driver)

    @chromedriver2 = driver

  end

  def verifyFirstHeading(search)

    isTrue = @chromedriver2.find_element(:id, "firstHeading").attribute('innerHTML').downcase

    # line below looks for a partial match - where 'search' is the partial text
    if isTrue.include? search.downcase
      puts "Page has the correct header"
    else @chromedriver2.find_element(:id,"dsdcsd23d").click
         puts "Wikipedia article first header does not match the search request"

    end

  end


  # Finds a link element on the page and clicks it if it exists (for another language)
  def verifyAndClickSecondLanguage(secondLanguage)

    secondlanguage1 = @chromedriver2.find_element(:link, secondLanguage)
    secondlanguage1.click

  end

end