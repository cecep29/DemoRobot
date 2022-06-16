*** Settings ***
Library                             SeleniumLibrary
Test Setup                          Open Browser        ${base_url}        ${browser}
Test Teardown                       Close Browser

*** Variables ***
${base_url}                         https://demoqa.com/checkbox
${browser}                          chrome

*** Test Cases ***
Click Notes checkbox
    Maximize Browser Window
    Click Element                   (//button[@aria-label="Toggle"])[1]
    Click Element                   (//button[@aria-label="Toggle"])[2]
    Click Element                   (//span[@class="rct-checkbox"])[3]
    Element Should Be Visible       //div[@id="result"]
    Element Should Contain          //span[@class="text-success"]           notes
