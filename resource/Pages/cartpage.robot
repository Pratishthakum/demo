*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/cartpage_locators.robot

*** Keywords ***
Add Product To Cart
    [Documentation]    Clicks a product, selects size, and adds it to the cart
    Log                Clicking on product
    Click Element      ${PRODUCT_CARD_LINK}
    Sleep              2s
    Select From List By Value    ${SIZE_DROPDOWN}    UK 4
    Sleep              1s
    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}
    Sleep              2s
    Click Element      ${ADD_TO_CART_BUTTON}
    Page Should Contain    Cart
