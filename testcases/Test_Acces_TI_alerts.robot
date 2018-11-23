*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valider la section Alerte
  Open Web Page
  Verify if the page contains the alert menu
  Hide the Alerts and Validate
  Display the Alerts
  Closing the Browser


Valider le bouton est coche
  Open Web Page
  Hide the Alerts and Validate




*** Keywords ***
Verify if the page contains the alert menu
  Page Should Contain Element  ${alertMenu}

Hide the Alerts and Validate
  Click Element  ${alertMasquerButton}
  Click Element  ${alertMenu}
  Page Should Contain Element  ${alertListElement}

Display the Alerts
  Click Element  ${alertCloseButton}

