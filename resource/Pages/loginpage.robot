*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/loginpage_locators.robot

*** Keywords ***
Log In To Gully Labs
    [Documentation]    Logs the user into the application using provided credentials
    [Arguments]        ${email}    ${password}
    Log                Entering email address
    Input Text         ${EMAIL_INPUT_FIELD}     ${email}
    Log                Entering password
    Input Text         ${PASSWORD_INPUT_FIELD}  ${password}
    Log                Clicking Sign In button
    Wait Until Element Is Enabled    ${SIGN_IN_BUTTON}
    Click Element      ${SIGN_IN_BUTTON}
    Sleep              5s
