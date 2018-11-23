*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valider la nouvelle est affichee
  Open Web Page
  Select a News
  Validate the News
  Closing the Browser


*** Keywords ***
Select a News
  Click Element  ${nouvelle1}
  Handle Alert    action=ACCEPT
  Wait Until Element Is Visible  ${topHeaderImage}  20s


Validate the News
  Page Should Contain Image  ${newsArticleImage}



