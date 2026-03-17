*** Settings ***
Resource    resource.robot

*** Test Cases ***
TC1
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    standard_user    
    ...    secret_sauce   
    ...    success    
    ...    None    
    [Teardown]    Close Browser
TC2
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    STANDARD_USER    
    ...    secret_sauce   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser

TC3
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    standard_user    
    ...    SECRET_SAUCE   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
TC4
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    stan    
    ...    secret_sauce   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
TC5
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    standard_user    
    ...    secret   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
TC6
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    ${EMPTY}    
    ...    secret_sauce   
    ...    fail    
    ...    Epic sadface: Username is required
    [Teardown]    Close Browser
TC7
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    standard_user    
    ...    ${EMPTY}    
    ...    fail    
    ...    Epic sadface: Password is required
    [Teardown]    Close Browser
TC8
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    ${EMPTY}    
    ...    ${EMPTY}    
    ...    fail    
    ...    Epic sadface: Username is required
    [Teardown]    Close Browser
TC9
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    !@#$%^     
    ...    &*()_+|   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
TC10
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    ${SPACE}standard_user    
    ...    secret_sauce   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
TC11
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    standard_user    
    ...    ${SPACE}secret_sauce   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser
TC12
    [Setup]    Open Browser To Login Page
    [Template]    Verify Login
    stan    
    ...    secret_sauce   
    ...    fail    
    ...    Epic sadface: Username and password do not match any user in this service    
    ...    5
    [Teardown]    Close Browser

