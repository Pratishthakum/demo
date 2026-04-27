*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/cartpage_locators.robot

*** Keywords ***
Close Cart Drawer
    [Documentation]    Closes the cart drawer/slide-out panel
    Wait Until Element Is Visible    ${CLOSE_CART_BUTTON}    timeout=20s
    Click Element      ${CLOSE_CART_BUTTON}
    Sleep              2s
