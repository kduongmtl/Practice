*** Settings ***
Resource       variables.robot
Library  SeleniumLibrary

*** Keywords ***
Open Web Page
  Open Browser    ${LOGIN_URL}  ${BROWSER}  ff_profile_dir=C:\\FirefoxProfiles


Closing the Browser
  Close Browser




