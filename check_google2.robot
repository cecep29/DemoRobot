*** Settings ***
Library             SeleniumLibrary
Test Setup          Open Browser        ${base_url}        ${browser}
Test Teardown       Close Browser

*** Variables ***
${base_url}         https://www.google.com/
${browser}          chrome

*** Test Cases ***
I am access Google Page               
    Sleep               3s
