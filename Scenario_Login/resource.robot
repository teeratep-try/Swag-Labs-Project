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

Go TO Login Page
    Location Should Be    ${WELCOME_URL}
    Title Should Be    Swag Labs

Welcome Page Should Be Open
    Location Should Be    ${WELCOME_URL}
    Title Should Be    Swag Labs

Verify Login
    [Arguments]     ${username}    ${password}    ${expected}    ${expected_error}=None    ${round}=1    
    FOR    ${i}    IN RANGE    ${round}
        Input Text    id=user-name    ${username}
        Input Text    id=password     ${password}
        Click Button  id=login-button
        IF    '${expected}' == 'success'
            Welcome Page Should Be Open
        ELSE
            Element Should Contain    
            ...    css:[data-test="error"]    
            ...    ${expected_error}            
        END
         
    END
    
