Feature: Verify login for Swag labs
    As a QA,
    I want to verify login page
    So that I can secure the website

    Background: open the web page
        Given user opens the page url "https://www.saucedemo.com/"

    Scenario Outline: Verify login with correct username and password
        When user enters <username> under Username textbox
        And  user enters <password> under Password textbox
        And  user clicks on "Login" button
        Then user verify the successful login
        And  user verify that product <page_loaded> 
        Examples:
            | username      | password     | page_loaded                              |
            | standard_user | secret_sauce | https://www.saucedemo.com/inventory.html |

    Scenario Outline: Verify login with incorrect username and password
        When user enters <username> under Username textbox
        And  user enters <password> under Password textbox
        And  user clicks on "Login" button
        Then user verify that login attempt failed
        And  user verify error message appeared
        Examples:
            | username | password |
            | qwerty   | abcd     |
