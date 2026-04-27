*** Settings ***
Resource    ../../resource/Pages/loginpage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/homepage.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC007 Login With Invalid Credentials
    [Documentation]    TC007 - Verifies that an error message is shown when invalid credentials are used
    [Tags]             negative

    Click Account Icon
    Log In To Gully Labs    invalid.user@example.com    WrongPass999
    Page Should Contain    Incorrect email or password.
