*** Settings ***
Resource    ../../resource/Pages/homepage.robot
Resource    ../../resource/common_resources.robot
Resource    ../../resource/Pages/searchpage.robot

Suite Setup    Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC008 Search Non-Existing Product
    [Documentation]    TC008 - Verifies that searching for a non-existing product shows a no-results message
    [Tags]             negative

    Search For Product    smartphone
    Page Should Contain    No results
