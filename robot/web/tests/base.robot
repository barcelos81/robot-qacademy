*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Variables ***
${url}      http://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova sessao
    Open Browser                    ${url}      chrome       options=add_experimental_option('excludeSwitches', ['enable-logging'])

Encerra sessao
    Capture Page Screenshot
    Close Browser