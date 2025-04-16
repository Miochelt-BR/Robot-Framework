*** Settings ***
Documentation     Essa suite testa o site da Amazon 
Resource          amazon_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Verifica o menu Eletrônicos e categoria "Computadores e Informática"
    
    [Tags]             menus
     
    Acessar home page site amazon
    #  Entrar no menu Eletrônicos
    # Verificar título da página
    # Verificar frase Eletrônicos e Tecnologia
    # Verificar categoria Computadores e Informática

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Verifica a busca por um produto
    [Tags]             busca_produtos
    Acessar home page
    Digitar nome do produto "Xbox Series S" np campo de pesquisa
    Clicar botão de pesquisa
    Verificar resultado da pesquisa
