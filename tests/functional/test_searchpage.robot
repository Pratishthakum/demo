*** Settings ***
Resource    ../../resource/Pages/homepage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/searchpage.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC003 Search Product
    [Documentation]    TC003 - Verifies that searching a valid product shows relevant results
    [Tags]             functional

    Search For Product    white shoes for women
    Page Should Contain Element    xpath=//div[@id='ProductGridContainer']
