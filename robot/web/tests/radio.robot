*** Settings ***
Documentation    Suite description
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerra sessao

# robot -d ../log radio.robot

*** Test Cases ***
Selecionando por ID
    [Tags]    id
    Go To                           ${url}/radios
    Select Radio Button             movies    cap
    Radio Button Should Be Set To   movies    cap

Selecionando por value
    [Tags]    value
    Go To                           ${url}/radios
    Select Radio Button             movies    guardians
    Radio Button Should Be Set To   movies    guardians

*** Keywords ***
