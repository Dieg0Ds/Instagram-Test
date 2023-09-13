*** Settings ***
Resource    ../Resource/main.robot


Documentation    Teste Instagram

Test Teardown    fail

*** Test Cases ***
Realizar Login
    Open Browser   ${data.url}    #${data.browser} 
    Login
    Pesquisar usuario    
    Seguir usuario
    Deixar de seguir
    Acessar e testar explorar 
    Acessar e testar reels
    Logout
    Close Browser
