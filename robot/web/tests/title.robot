*** Settings ***
Documentation    Suite description
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerra sessao

# robot -d ../log title.robot

*** Test Cases ***
Should See Page Title
    Title Should Be    Training Wheels Protocol

*** Keywords ***
