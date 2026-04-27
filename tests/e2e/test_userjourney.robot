*** Settings ***
Resource    ../../resource/Pages/loginpage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/homepage.robot
Resource    ../../resource/Pages/searchpage.robot
Resource    ../../resource/Pages/cartpage.robot
Resource    ../../resource/Pages/closecartpage.robot
Resource    ../../resource/Pages/logoutpage.robot
Resource    ../../locators/cartpage_locators.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC006 Complete User Journey Login To Logout
    [Documentation]    TC006 - E2E test: full user journey from login, search, add to cart, close cart, to logout
    [Tags]             e2e

    # Step 1: Login
    Sleep    5s
    Click Account Icon
    Sleep    5s
    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Sleep    5s

    # Step 2: Search for a product
    Search For Product    shoes
    Sleep    2s

    # Step 3: Add product to cart
    Add Product To Cart
    Sleep    2s

    # Step 4: Close the cart drawer
    Close Cart Drawer
    Sleep    2s

    # Step 5: Logout
    Click Account Icon
    Sleep    5s
    Log Out From Gully Labs
    Sleep    2s
    Page Should Contain    Log in
