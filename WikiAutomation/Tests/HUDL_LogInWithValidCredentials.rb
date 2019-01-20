require 'test/unit'
require 'selenium-webdriver'
require '../Base/base'
require '../Pages/wikipedia'
require '../Pages/hudl_log_in_page'
require '../Assertions/assert'




class TC02 < Base

  @@username = "danial.khan@ucl.ac.uk"
  @@password = "H@lc10n!"

  def test_LogInWithValidCredentials

    loginpage = HUDL_LogInPage.new  @@driver
    validation = Assert.new

    loginpage.LogIn(@@username, @@password)

    #Validate correct URL was opened
   # result = validation.ValidateURL @@driver, "https://www.wikipedia.org/"
   # assert_true(result, "Incorrect URL loaded, URL opened was #{@@driver.current_url}")

    # User searches for '@@search' in the language '@@lannguage' in wikipedia
    #wikipedia.searchFor(@@search, @@language)

    #Verify the heading of the resulting page matches what we expect
    #  wikipedia2 =WikiSearchResult.new @@driver
    #wikipedia2.verifyFirstHeading  @@search

    #Verifying that the wikipedia article contains a link to the article in another language while also clicking on the link
    #wikipedia2.verifyAndClickSecondLanguage @@secondlanguage

    #  wikipedia2.verifyFirstHeading @@search
    #  wikipedia2.verifyAndClickSecondLanguage "English"




  end
end