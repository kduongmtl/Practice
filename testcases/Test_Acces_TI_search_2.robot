*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/keywords.robot
*** Test Cases ***
Valider la recherche retourne au moins un article
  Open Web Page
  Perform a search
  Validate Search Result
  Closing the Browser


Valider la recherche







Valider la recherche retourne aucun resultat
  Open Web Page
  Perform negative search
  Validate negative search result
  Closing the Browser


*** Keywords ***
Perform a search
  Input Text  ${SEARCH}  VPN
  Click Element  ${searchButton}
  Wait Until Element Is Visible  ${searchContainerResult}

Perform negative search
  Input Text  ${SEARCH}  ficus
  Click Element  ${searchButton}
  Wait Until Element Is Visible  ${searchContainerResult}


Validate Search Result
  Page Should Contain  Réseau Distance VPN Calculette Jeton Clé RSA RAD003


Validate negative search result
  Page Should Contain  Aucun résultat n'a été trouvé avec les mots clés suivants
