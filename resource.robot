*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${BASE_URL}    https://www.saucedemo.com
${BROWSER}    Chrome
${DELAY}    0
${LOGIN_URL}    ${BASE_URL}
${WELCOME_URL}    ${BASE_URL}/inventory.html
${ERROR_URL}    ${BASE_URL}    



*** Keywords ***
Login Page Should Be Open
    Title Should Be    Swag Labs

Open Browser To LOgin Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open