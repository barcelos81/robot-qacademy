*** Settings ***
Documentation    Suite description
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    [Tags]    TEST
    ${result}=          Welcome      Adriano
    Should Be Equal     ${result}    Olá, Adriano, bem vindo ao curso básico de Robot Framework!

*** Keywords ***
