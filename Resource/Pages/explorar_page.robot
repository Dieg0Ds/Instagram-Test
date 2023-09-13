*** Settings ***
Resource    ../main.robot

*** Variables ***
${EXPLORAR}          //div[@class='x6s0dn4 x9f619 xxk0z11 x6ikm8r xeq5yr9 x1swvt13 x1s85apg xzzcqpx'][contains(.,'Explorar')]
${PRIMEIRO_VIDEO}    (//div[contains(@class,'_aagw')])[2]
${DIV_MAIN}          //div[contains(@class,'x78zum5 xdt5ytf x1iyjqo2 xdj266r xkrivgy x4n8cb0 x1gryazu x1fawyso xh8yej3 x19b80pe xhae0no xmjrnx3 x16mfq2j x1e49onv x7flfwp x1ugxg0y x1oqrbt2 xgzdhx4')]
${BUTTON_AVANCAR}    //button[@class='_abl-'][contains(.,'Avançar')]
${FECHAR}            //div[@class='x160vmok x10l6tqk x1eu8d0j x1vjfegm'][contains(.,'Fechar')]

*** Keywords ***
Acessar e testar explorar
    Click Element                       ${EXPLORAR}
    Wait Until Element Is Enabled       ${EXPLORAR}
    Wait Until Page Contains Element    ${DIV_MAIN}
    Wait Until Element Is Visible       ${PRIMEIRO_VIDEO}
    Click Element                       ${PRIMEIRO_VIDEO}
    Wait Until Element Is Visible       ${BUTTON_AVANCAR}
    Click Button                        ${BUTTON_AVANCAR} 
    Wait Until Page Contains Element    ${BUTTON_AVANCAR}
    Click Element                       ${FECHAR}                       
    Wait Until Element Is Visible       ${PRIMEIRO_VIDEO}