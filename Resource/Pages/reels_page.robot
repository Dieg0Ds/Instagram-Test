*** Settings ***
Resource    ../main.robot

*** Variables ***
${REELS}                //div[@class='x9f619 x3nfvp2 xr9ek0c xjpr12u xo237n4 x6pnmvc x7nr27j x12dmmrz xz9dl7a xn6708d xsag5q8 x1ye3gou x80pfx3 x159b3zp x1dn74xm xif99yt x172qv1o x10djquj x1lhsz42 xzauu7c xdoji71 x1dejxi8 x9k3k5o xs3sg5q x11hdxyr x12ldp4w x1wj20lx x1lq5wgf xgqcy7u x30kzoy x9jhf4c'][contains(.,'Reels')]
${REELS_CURTIR}         (//div[contains(@role,'button')])[6]
${REELS_COMENTAR}       (//div[contains(@role,'button')])[8]
${INPUT_COMENTAR}       //input[@class='xjbqb8w x76ihet xwmqs3e x112ta8 xxxdfa6 xw2csxc x1odjw0f x1n2onr6 x1hnll1o xs3hnx8 x1db89rt xyfr5zc x7xwk5j xpqswwc xl565be x5dp1im xdj266r x11i5rnm xat24cr x1mh8g0r x1ye3gou xn6708d x5n08af xh8yej3 x13faqbe']    
${FECHAR_COMENTARIO}    //div[@class='x6s0dn4 x78zum5 x19l4sor x1c4vz4f x2lah0s'][contains(.,'Fechar')]
${BUTTON_DIRECT}        (//div[contains(@role,'button')])[9]
${INPUT_DIRECT}         queryBox
${CHECKBOX_DIRECT}      ContactSearchResultCheckbox
${ENVIAR_DIRECT}        //div[contains(@class,'x1i10hfl xjqpnuy xa49m3k xqeqjp1 x2hbi6w x972fbf xcfux6l x1qhh985 xm0m39n xdl72j9 x2lah0s xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r x2lwn1j xeuugli xexx8yu x18d9i69 x1hl2dhg xggy1nq x1ja2u2z x1t137rt x1q0g3np x1lku1pv x1a2a7pz x6s0dn4 xjyslct x1lq5wgf xgqcy7u x30kzoy x9jhf4c x1ejq31n xd10rxx x1sy0etr x17r0tee x9f619 x9bdzbf x1ypdohk x1i0vuye x1f6kntn xwhw2v2 x10w6t97 xl56j7k x17ydfre x1swvt13 x1pi30zi x1n2onr6 x2b8uid xlyipyv x87ps6o xcdnw81 xh8yej3 x1tu34mt xzloghq x3nfvp2')]
${REELS_SALVAR}         (//div[contains(@role,'button')])[10]

*** Keywords ***
Acessar e testar reels
    Click Element                       ${REELS}
    Wait Until Element Is Visible       ${REELS_CURTIR}      10s 
    Click Element                       ${REELS_CURTIR}
    Click Element                       ${REELS_COMENTAR}    
    Wait Until Element Is Visible       ${INPUT_COMENTAR}    10s    
    Input Text                          ${INPUT_COMENTAR}    Testing...
    Sleep    2s  
    Click Element                       ${FECHAR_COMENTARIO}    
    Wait Until Page Contains Element    ${REELS_CURTIR}    
    Click Element                       ${BUTTON_DIRECT}                       
    Wait Until Element Is Visible       ${INPUT_DIRECT}    
    Input Text                          ${INPUT_DIRECT}    ${user5.username}
    Sleep    2s
    Wait Until Element Is Visible       ${CHECKBOX_DIRECT}
    Click Element                       ${CHECKBOX_DIRECT}
    Click Element                       ${ENVIAR_DIRECT}
    Click Element                       ${REELS_SALVAR}
    Capture Page Screenshot 