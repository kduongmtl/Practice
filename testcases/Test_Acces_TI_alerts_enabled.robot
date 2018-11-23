*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valider le bouton est coche
  Open Web Page
  Click Element  ${alertMasquerButton}
  Click Element  ${configureAlert}
  Checkbox Should Not Be Selected  ${composante1}
  Checkbox Should Be Selected  ${composante15}
  Capture Page Screenshot  test_Access_TI_enabled-{index}.png

  Close Browser





*** Keywords ***
Verify if the page contains the alert menu
  Page Should Contain Element  ${alertMenu}

Hide the Alerts and Validate
  Click Element  ${alertMasquerButton}
  Click Element  ${alertMenu}
  Page Should Contain Element  ${alertListElement}

Display the Alerts
  Click Element  ${alertCloseButton}

