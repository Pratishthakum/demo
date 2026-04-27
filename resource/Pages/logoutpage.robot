*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/logoutpage_locators.robot

*** Keywords ***
Log Out From Gully Labs
    [Documentation]    Logs the current user out of the application
    Log                Clicking the logout link
    Sleep              5s
    Click Element      ${LOGOUT_LINK}
    Sleep              5s
