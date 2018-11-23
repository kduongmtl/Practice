*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valider la section Alerte
  Open Web Page
  Input Text  ${emailField}  ${VALID EMAIL}
  Input Password  ${passwordField}  ${VALID PASSWORD}
  Close Browser




*** Keywords ***


