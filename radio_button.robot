*** Settings ***
Library                             SeleniumLibrary
Test Setup                          Open Browser        ${base_url}        ${browser}
Test Teardown                       Close Browser

*** Variables ***
${base_url}                         https://demoqa.com/radio-button
${browser}                          chrome

*** Test Cases ***
Click radio button impressive
    Maximize Browser Window
    Click Element                   //label[@for="impressiveRadio"]
    Element Should Be Visible       //p[@class="mt-3"]
    Element Should Contain          //span[@class="text-success"]   Impressive

lick radio button yes
    Maximize Browser Window
    Click Element                   //label[@for="yesRadio"]
    Element Should Be Visible       //p[@class="mt-3"]
    Element Should Contain          //span[@class="text-success"]   Yes