*** Settings ***
Library    SeleniumLibrary
Library    Process

*** Variables ***
${URL}                                   https://www.amazon.com.br/
${MENU_ELETRONICOS}             //*[@id="nav-xshop"]/ul/li[9]/div/a
${HEADER_ELETRONICOS}           //*[@id="0"]/div/div/h2/span
${ CATEGORIA}                   ///*[@id="anonCarousel3"]/ol/li[1]/div/a/div[1]/img

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar home page site amazon
    [Documentation]    Acessa o site e aguarda o menu de eletrônicos carregar
    Go To    ${URL}
    Wait Until Element Is Visible    ${MENU_ELETRONICOS}

Entrar no menu Eletrônicos
    [Documentation]    Clica no menu de eletrônicos
    Click Element    ${MENU_ELETRONICOS}

Verificar frase
    [Arguments]    ${texto}
    [Documentation]    Aguarda a frase e o cabeçalho da página de eletrônicos
    Wait Until Page Contains    ${texto}
    Wait Until Element Is Visible   ${HEADER_ELETRONICOS}

Verificar se o título da página fica
    [Arguments]    ${titulo}
    Title Should Be    ${titulo}
 Verificar frase da categoria 
    [Arguments]    ${texto}
   Wait Until Page Contains    ${texto}   
