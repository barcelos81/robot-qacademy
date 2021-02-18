***Settings***
Documentation   Ações da página home logada

***Variables***
${LOGOUT_LINK}  a[href$="sign_out"]

***Keywords***
Logout Link Should Be Visible
    Wait for Elements State   ${LOGOUT_LINK}   visible

Logout
    Click   ${LOGOUT_LINK}

Go To Search Page
    Click                       a[href*=search]
    Wait for Elements State     //h2[contains(text(), 'Buscar')]  visible