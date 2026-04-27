#*** Settings ***
#Resource    ../../resource/Pages/logoutpage.robot
#Resource    ../../resource/common_resources.robot
#Resource    ../../resource/Pages/loginpage.robot
#Resource    ../../resource/Pages/homepage.robot
#
#Suite Setup    Load Environment
#Test Setup     Open Application
#Test Teardown  Close Application
#
#*** Test Cases ***
#TC002 Logout Functionality
#    [Documentation]    TC002 - Verifies that a logged-in user can log out successfully
#    [Tags]             functional
#
#    Click Account Icon
#    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
#    Sleep    2s
#    Log Out From Gully Labs
#    Page Should Contain    Log in


*** Settings ***
Resource    ../../resource/Pages/logoutpage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/loginpage.robot
Resource    ../../resource/Pages/homepage.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC002 Logout Functionality
    [Documentation]    TC002 - Verifies that a logged-in user can log out successfully
    [Tags]             functional

    Click Account Icon
    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Sleep    2s
    Log Out From Gully Labs
    Page Should Contain    Sign in
