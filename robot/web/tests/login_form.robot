*** Settings ***
Documentation    Suite description
Resource         base.robot
Test Setup       Nova sessao
Test Teardown    Encerra sessao

# robot -d ../log login_form.robot

*** Test Cases ***
Login com sucesso
    [Tags]    success
    Go To            ${url}/login
    Login With             stark    jarvis!
    Should See Logged User  Tony Stark

Senha invalida
    [Tags]    fail
    Go To            ${url}/login
    Login With       stark    12345
    ${message}=      Get WebElement                id:flash
    Should Contain Login Alert  Senha é invalida!

Usuario nao existe
    [Tags]    fail
    Go To            ${url}/login
    Login With       adriano    12345
    ${message}=      Get WebElement                id:flash
    Should Contain Login Alert  O usuário informado não está cadastrado!

*** Keywords ***
Login With
    [Arguments]      ${user}    ${pwd}
    Input Text       css:input[name='username']    ${user}
    Input Text       css:input[name='password']    ${pwd}
    Click Element    class:btn-login

Should Contain Login Alert
    [Arguments]         ${expected_message}
    ${message}=         Get WebElement    id:flash
    Should Contain      ${message.text}   ${expected_message}

Should See Logged User
    [Arguments]      ${full_name}
    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!

