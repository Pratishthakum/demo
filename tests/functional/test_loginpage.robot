#*** Settings ***
#Resource    ../../resource/Pages/loginpage.robot
#Resource    ../../resource/common_resources.robot
#Resource    ../../resource/Pages/homepage.robot
#
#Suite Setup    Load Environment
#Test Setup     Open Application
#Test Teardown  Close Application
#
#*** Test Cases ***
#TC001 Successful Login
#    [Documentation]    TC001 - Verifies that a registered user can log in successfully
#    [Tags]             functional
#
#    Click Account Icon
#    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
#    Page Should Contain    Log out

*** Settings ***
Resource    ../../resource/Pages/loginpage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/homepage.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC001 Successful Login
    [Documentation]    TC001 - Verifies that a registered user can log in successfully
    [Tags]             functional

    Click Account Icon
    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Page Should Contain    Log out