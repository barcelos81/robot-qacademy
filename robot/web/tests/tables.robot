*** Settings ***
Documentation    Suite description
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerra sessao

# robot -d ../log tables.robot

*** Test Cases ***
Verificar o valor ao informar o numero da linha
    [Tags]    tables
    Go To                        ${url}/tables
    Table Row Should Contain     id:actors    2    @vindiesel

Descobrir a linha pelo texto chave e valida os demais valores
    [Tags]    tables
    Go To           ${url}/tables
    ${target}=      Get WebElement    xpath:.//tr[contains(.,'@chadwickboseman')]
    Log             ${target.text}
    Log To Console  ${target.text}
    Should contain  ${target.text}    $ 700.000
    Should contain  ${target.text}    Pantera Negra

*** Keywords ***
