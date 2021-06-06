*** Settings ***
Documentation    Suite description
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerra sessao

# robot -d ../log select.robot

*** Test Cases ***
Selecionar por texto e validar pelo valor
    [Tags]    texto
    Go To                        ${url}/dropdown
    Select From List By Label    class:avenger-list           Scott Lang
    ${select}=                   Get Selected List Value      class:avenger-list
    Should Be Equal              ${select}                    7

Selecionar por valor e validar pelo texto
    [Tags]    valor
    Go To                        ${url}/dropdown
    Select From List By Value    id:dropdown                  6
    ${select}=                   Get Selected List Label      id:dropdown
    Should Be Equal              ${select}                    Loki

*** Keywords ***
