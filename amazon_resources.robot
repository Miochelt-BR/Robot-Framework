*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://www.amazon.com.br  

*** Keywords ***
Abrir o navegador
    Open Browser    browser= chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar home page site amazon
    Go To    url=${URL} 
   
    

