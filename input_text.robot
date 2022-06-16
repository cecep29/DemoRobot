*** Settings ***
Library             SeleniumLibrary
Test Setup          Open Browser        ${base_url}        ${browser}
Test Teardown       Close Browser

*** Variables ***
${base_url}         http://uitestingplayground.com/textinput
${browser}          chrome

*** Test Cases ***
I am typing a name to field
    Maximize Browser Window
    Input Text              //input[@class="form-control"]      Cecep Efendi
    Sleep                   2s
    Click Element           //button[@id="updatingButton"]
    Sleep                   2s
    Element Should Contain  //button[@id="updatingButton"]      Cecep Efendi
