*** Settings ***
Library             SeleniumLibrary

*** Test Cases ***
I am access Google Page
    Open Browser        https://www.google.com/         chrome
    Sleep               3s
    Close Browser