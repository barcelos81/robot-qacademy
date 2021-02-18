***Settings***
Documentation   Ações de navegação no parodify

***Keywords***
Go To Search Page
    Click                       a[href*=search]
    Wait for Elements State     //h2[contains(text(), 'Buscar')]  visible

Go To Sertanejo Category
    Click                       //img[contains(@src, 'sertanejo.png')]/..
    Wait for Elements State     //h2[contains(text(), 'Sertanejo')]  visible

Open Album From
    [Arguments]     ${artist_name}
    Click                       //p[contains(text(), '${artist_name}')]/..
    Wait for Elements State     //h2[contains(text(), 'Músicas')]  visible
    