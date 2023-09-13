*** Settings ***
Resource    ../main.robot

*** Variables ***
${NOTIFICACOES}          //div[@class='_a9-v'][contains(.,'Ativar notificaçõesSabe de imediato quando alguém te segue ou deixa gostos e comentários nas tuas fotos.AtivarAgora Não')]
${ATIVAR}                //button[@class='_a9-- _a9_0'][contains(.,'Ativar')]
${AGORA_NAO}             //button[@class='_a9-- _a9_1'][contains(.,'Agora Não')]    

${PESQUISAR}             //span[@class='x1lliihq x193iq5w x6ikm8r x10wlt62 xlyipyv xuxw1ft'][contains(.,'Pesquisa')]
${INPUT_PESQUISA}        //input[contains(@aria-label,'Entrada da pesquisa')]
${RESULTADO_PESQUISA}    //div[contains(@class,'x9f619 xjbqb8w x78zum5 x168nmei x13lgxp2 x5pf9jr xo71vjh x1uhb9sk x1plvlek xryxfnj x1c4vz4f x2lah0s x1q0g3np xqjyukv x6s0dn4 x1oa3qoh x1nhvcw1')]

${SEGUIR}                //button[contains(.,'Seguir')]
${DIALOG_DD_SEGUIR}      //button[@class='_acan _acap _acat _aj1-'][contains(.,'SeguindoÍcone de seta para baixo')]
${DD_SEGUIR}             //div[@class='x9f619 xjbqb8w x78zum5 x168nmei x13lgxp2 x5pf9jr xo71vjh x1uhb9sk x1plvlek xryxfnj x1iyjqo2 x2lwn1j xeuugli xdt5ytf xqjyukv x1cy8zhl x1oa3qoh x1nhvcw1'][contains(.,'Deixar de seguir')]


*** Keywords ***
Pesquisar usuario
    Wait Until Page Contains Element   ${PESQUISAR}             10s
    Click Element                      ${PESQUISAR}    
    Input Text                         ${INPUT_PESQUISA}        ${user5.username}   
    Sleep    2
    Wait Until Page Contains Element   ${RESULTADO_PESQUISA}    10s
    Click Element                      ${RESULTADO_PESQUISA} 
    Capture Page Screenshot
Seguir usuario
    Wait Until Element Is Visible    ${SEGUIR}             10S
    Click Button                     ${SEGUIR}
    Wait Until Element Is Visible    ${DIALOG_DDSEGUIR}    10S
    Capture Page Screenshot
Deixar de seguir
    Wait Until Element Is Visible    ${DIALOG_DDSEGUIR}    10s
    Click Button                     ${DIALOG_DDSEGUIR}    
    Wait Until Element Is Visible    ${DD_SEGUIR}          10s
    Click Element                    ${DD_SEGUIR}
    Element Should Be Visible        ${SEGUIR}
    Capture Page Screenshot