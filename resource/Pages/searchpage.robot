*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/homepage_locators.robot
Resource    ../../locators/cartpage_locators.robot

*** Keywords ***
Search For Product
    [Documentation]    Searches for a product by name on the Gully Labs site
    [Arguments]        ${search_query}
    Click Element      ${SEARCH_ICON}
    Sleep              2s
    Input Text         ${SEARCH_INPUT}    ${search_query}
    Press Keys         ${SEARCH_INPUT}    ENTER
