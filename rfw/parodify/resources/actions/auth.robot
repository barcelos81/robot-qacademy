***Settings***
Documentation   Ações da funcionalidade de autorização/autenticação

***Variables***
${LOGOUT_LINK}  a[href$="sign_out"]

***Keywords***
Open Login Page
    New Browser     ${BROWSER}    ${HEADLESS}
    New Page        https://parodify.herokuapp.com/users/sign_in

Login With
    [Arguments]     ${email_arg}        ${pass_arg}
    Fill Text       id=user_email       ${email_arg}
    Fill Text       id=user_password    ${pass_arg}
    Click           input[type=submit]

Alert Should Be
    [Arguments]     ${expect_arg}
    Get Text        css=.is-danger .message-body  equal  ${expect_arg}

Logout Link Should Be Visible
    Wait for Elements State   ${LOGOUT_LINK}   visible

Logout
    Click   ${LOGOUT_LINK}