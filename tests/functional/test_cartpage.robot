*** Settings ***
Resource    ../../resource/Pages/loginpage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/homepage.robot
Resource    ../../resource/Pages/searchpage.robot
Resource    ../../resource/Pages/cartpage.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC004 Add Product To Cart
    [Documentation]    TC004 - Verifies that a logged-in user can add a product to the cart
    [Tags]             functional

    Sleep    5s
    Click Account Icon
    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Sleep    5s
    Search For Product    shoes
    Sleep    5s
    Add Product To Cart
