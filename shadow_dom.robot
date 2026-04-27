*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Test Shadow DOM
     Open Browser  ${URL}  Chrome
     Maximize Browser Window
     ${shadow_text_element}=  Get  Shadow Element  div[id="shadow_host"]  input[type="Text"]
     Input Text    ${shadow_text_element}    text