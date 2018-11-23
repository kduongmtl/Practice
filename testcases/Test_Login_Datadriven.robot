*** Settings ***
Resource    ../resources/keywords.robot
Documentation  Data Driven Test

Suite Setup  Open Browser To Login Page
Suite Teardown  Close Browser
Test Template  Login With Invalid Credentials


*** Test Cases ***
Invalid Username            invalid         ${VALID PASSWORD}
Invalid Password            ${VALID USER}   ${VALID PASSWORD}







*** Keywords ***
Login With Invalid Credentials
    [Arguments]  $[username]   $[password]

    Input Username  ${username}
    Input Password  ${password}
    Submit Credentials


Input Username
    [Arguments]  ${username}
    Input Text  ${emailField}  ${username}

Input Password
    [Arguments]  ${password}
    Input Password  ${passwordField}  ${password}

Submit Credentials
    Click Button  ${loginButton}

Welcome Page Should Be Open
     Location Should Be


Open Browser To Login Page
    Open Browser    ${LOGIN_URL}  ${BROWSER}  ff_profile_dir=C:\\FirefoxProfiles
