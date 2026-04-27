*** Settings ***
Library     SeleniumLibrary
Resource    ../../resource/Pages/loginpage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/homepage.robot
Resource    ../../resource/Pages/searchpage.robot
Resource    ../../resource/Pages/cartpage.robot
Resource    ../../resource/Pages/closecartpage.robot
Resource    ../../locators/cartpage_locators.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC005 Verify Product Added Reflects In Cart
    [Documentation]    TC005 - Integration test: verifies the product added to cart matches what was selected on the product page
    [Tags]             integration

    # Step 1: Login
    Sleep    5s
    Click Account Icon
    Log In To Gully Labs    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Sleep    5s

    # Step 2: Search and navigate to product
    Search For Product    Gully Number 001 - Syaahi Blue
    Sleep    3s

    # Step 3: Click the specific product
    Click Element    xpath=//a[contains(text(),'Syaahi Blue')]
    Sleep    3s

    # Step 4: Capture product name from the product page using JavaScript (custom elements)
    ${product_page_name}=    Execute Javascript
    ...    return document.querySelector('section#xtitle') ? document.querySelector('section#xtitle').innerText.trim() : document.querySelector('h1').innerText.trim()
    ${product_name_lower}=   Evaluate    "${product_page_name}".lower()
    Log To Console    Product on page: ${product_name_lower}

    # Step 5: Select size and add to cart
    Click Element    xpath=//label[@data-entity-id="UK_8"]
    Sleep    2s
    Scroll Element Into View    xpath=//span[text()='Add to cart']/parent::button
    Click Element    xpath=//span[text()='Add to cart']/parent::button
    Sleep    5s

    # Step 6: Close the cart drawer
    Click Element    xpath=(//span[text()='Close']/parent::button)[2]
    Sleep    2s

    # Step 7: Open cart page and verify using JavaScript (bypasses shadow DOM / custom tag issues)
    Click Element    xpath=//button[@data-entity-id='CART']
    Sleep    3s

    ${cart_item_name}=    Execute Javascript
    ...    return document.querySelector('span.title a') ? document.querySelector('span.title a').innerText.trim() : ''
    ${cart_item_lower}=   Evaluate    "${cart_item_name}".lower()
    Log To Console    Product in cart: ${cart_item_lower}

    # Step 8: Assert product name matches
    Should Not Be Empty    ${cart_item_name}
    Should Contain         ${cart_item_lower}    ${product_name_lower}
