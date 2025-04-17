*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                           https://www.amazon.com.br/
${MENU_ELETRONICOS}             //*[@id="nav-xshop"]/ul/li[9]/div/a
${HEADER_ELETRONICOS}           //*[@id="0"]/div/div/h2/span
${TEXTO_HEADER_ELETRONICOS}     Eletrônicos e Tecnologia
${TITULO_PAGINA_ELETRONICOS}    Eletrônicos e Tecnologia | Amazon.com.br

${CATEGORIA_COMPUTADORES}       xpath=//span[text()='Computadores e Informática']
${NOME_PRODUTO_BUSCA}           Xbox Series S
${CAMPO_PESQUISA}               id=twotabsearchtextbox
${BOTAO_PESQUISA}               id=nav-search-submit-button
${RESULTADO_BUSCA}              xpath=//span[contains(text(), 'resultados')]

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
    [Documentation]    Aguarda a frase e o cabeçalho da página de eletrônicos
    Wait Until Page Contains    ${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible   ${HEADER_ELETRONICOS}

Verificar se o título da página fica
    [Documentation]    Verifica se o título da aba está correto
    Title Should Be    ${TITULO_PAGINA_ELETRONICOS}

Verificar categoria Computadores e Informática
    [Documentation]    Verifica se a categoria "Computadores e Informática" está visível
    Wait Until Element Is Visible    ${CATEGORIA_COMPUTADORES}

Digitar nome do produto
    [Documentation]    Digita o nome do produto no campo de pesquisa
    Input Text    ${CAMPO_PESQUISA}    ${NOME_PRODUTO_BUSCA}

Clicar botão de pesquisa
    [Documentation]    Clica no botão de pesquisa
    Click Button    ${BOTAO_PESQUISA}

Verificar resultado da pesquisa
    [Documentation]    Aguarda o retorno de resultados na página
    Wait Until Element Is Visible    ${RESULTADO_BUSCA}
