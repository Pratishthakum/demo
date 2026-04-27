*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/homepage_locators.robot

*** Keywords ***
Click Account Icon
    [Documentation]    Clicks the account icon to open account options
    Click Element      ${ACCOUNT_ICON}

Click Search Icon
    [Documentation]    Clicks the search icon to open the search bar
    Click Element      ${SEARCH_ICON}

Navigate To Homepage
    [Documentation]    Clicks the Gully Labs logo to return to the homepage
    Click Element      ${GULLYLABS_LOGO}
