#*** Settings ***
#Library    SeleniumLibrary
#Library    ../config/env_loader.py
#
#*** Variables ***
#${BROWSER}          chrome
#${ENV}              qa
#
#*** Keywords ***
#Load Environment
#    Load Env    ${ENV}
#    ${base_url}=       Get Env    baseurl
#    ${login_email}=    Get Env    user_email
#    ${login_password}= Get Env    user_password
#
#    Set Global Variable    ${BASE_URL}        ${base_url}
#    Set Global Variable    ${LOGIN_EMAIL}     ${login_email}
#    Set Global Variable    ${LOGIN_PASSWORD}  ${login_password}
#
#Open Application
#    [Documentation]    Opens the browser and navigates to the application
#    Open Browser       ${BASE_URL}    ${BROWSER}
#    Maximize Browser Window
#
#Close Application
#    [Documentation]    Closes all open browsers
#    Close All Browsers


*** Settings ***
Library    SeleniumLibrary
Library    ../config/env_loader.py

*** Variables ***
${BROWSER}          chrome
${ENV}              qa

*** Keywords ***
Load Environment
    Load Env    ${ENV}
    ${base_url}=          Get Env    baseurl
    ${login_email}=       Get Env    user_email
    ${login_password}=    Get Env    user_password
    Set Global Variable    ${BASE_URL}        ${base_url}
    Set Global Variable    ${LOGIN_EMAIL}     ${login_email}
    Set Global Variable    ${LOGIN_PASSWORD}  ${login_password}

Open Application
    [Documentation]    Opens the browser and navigates to the application
    Open Browser       ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Close Application
    [Documentation]    Closes all open browsers
    Close All Browsers