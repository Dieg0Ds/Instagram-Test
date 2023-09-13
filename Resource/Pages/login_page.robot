*** Settings ***
Resource    ../main.robot

*** Variables ***
${TITULO_INSTAGRAM}    //i[contains(@data-visualcompletion,'css-img')]
${USERNAME}            username
${PASSWORD}            password
${BUTTON_ENTRAR}       (//div[contains(.,'Entrar')])[14]

${BUTTON_MAIS}         //div[@class='x9f619 x3nfvp2 xr9ek0c xjpr12u xo237n4 x6pnmvc x7nr27j x12dmmrz xz9dl7a xn6708d xsag5q8 x1ye3gou x80pfx3 x159b3zp x1dn74xm xif99yt x172qv1o x10djquj x1lhsz42 xzauu7c xdoji71 x1dejxi8 x9k3k5o xs3sg5q x11hdxyr x12ldp4w x1wj20lx x1lq5wgf xgqcy7u x30kzoy x9jhf4c'][contains(.,'Mais')]
${TERMINAR_SESSAO}     //span[@class='x1lliihq x193iq5w x6ikm8r x10wlt62 xlyipyv xuxw1ft'][contains(.,'Sair')]

*** Keywords ***
Login
    Wait Until Element Is Visible    ${USERNAME}    10s
    Element Should Be Enabled        ${USERNAME}
    Input Text                       ${USERNAME}    ${user2.username}    
    Input Password                   ${PASSWORD}    ${user2.password}
    Click Element                    ${BUTTON_ENTRAR}   
    Capture Page Screenshot

Logout
    
    Click Element                    ${BUTTON_MAIS}
    Wait Until Element Is Visible    ${TERMINAR_SESSAO}
    Click Element                    ${TERMINAR_SESSAO}
    Wait Until Element Is Visible    ${USERNAME}
    Capture Page Screenshot