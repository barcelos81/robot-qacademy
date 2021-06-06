*** Settings ***
Documentation    Suite description
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerra sessao

*** Variables ***
${id}       id:thor
${css}      css:input[value='iron-man']
${xpath}    xpath://form[@id='checkboxes']/input[@value='black-panther']

# robot -d ../log checkbox.robot
# robot -d ../log -i id checkbox.robot
# robot -d ../log -i css checkbox.robot
# robot -d ../log -i xpath checkbox.robot

*** Test Cases ***
Marcando opção com ID
    [Tags]    id
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${id}
    Checkbox Should Be Selected     ${id}

Marcando opção com CSS selector
    [Tags]    css
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${css}
    Checkbox Should Be Selected     ${css}

Marcando opção com XPATH
    [Tags]    xpath
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${xpath}
    Checkbox Should Be Selected     ${xpath}

*** Keywords ***

