*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valider un billet peut etre creer
  Open Web Page
  Get Assistance
  Select Dropdown From Ticket Form
  Fill Ticket Form and Submit
  Validate Form Submitted
  Closing the Browser



*** Keywords ***
Get Assistance
  Click Element  ${assistanceButton}
  Click Element  ${assistanceBilletEnLigne}
  Page Should Contain Element  ${ouvrirBilletEnLigne}

Select Dropdown From Ticket Form
  Select From List By Index  ${dropDownSelectSubject}  1
  Select From List By Index  ${dropDownSelectService}  1
  Select From List By Index  ${dropDownSelectSpecificService}  1

Fill Ticket Form and Submit
  Input Text  ${ticketTitle}  Billet Test 123
  Input Text  ${ticketDescription}  Ceci est un billet de test.
  Click Element  ${ticketSubmitButton}
  Wait Until Element Is Visible  ${ticketConfirmationBox}  10s

Validate Form Submitted
  Page Should Contain Element  ${ticketBackButton}


