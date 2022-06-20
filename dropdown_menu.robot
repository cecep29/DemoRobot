*** Settings ***
Library                             SeleniumLibrary
# Test Setup                          Open Browser        ${base_url}        ${browser}
# Test Teardown                       Close Browser
Suite Setup                         Open Browser        ${base_url}        ${browser}
Suite Teardown                      Close Browser

*** Variables ***
${base_url}                         https://the-internet.herokuapp.com/dropdown
${browser}                          chrome

*** Test Cases ***
Select dropdown menu option 2
    Maximize Browser Window
    Element Should Be Visible       //select[@id="dropdown"]
    Select From List By Index       //select[@id="dropdown"]                2
    List Selection Should Be        //select[@id="dropdown"]                Option 2

Select dropdown menu option 1
    Maximize Browser Window
    Element Should Be Visible       //select[@id="dropdown"]
    Select From List By Index       //select[@id="dropdown"]                1
    List Selection Should Be        //select[@id="dropdown"]                Option 1
