***Settings***
Documentation   Ações da página de categorias

***Keywords***
Open Album From
    [Arguments]     ${artist_name}
    Click                       //p[contains(text(), '${artist_name}')]/..
    Wait for Elements State     //h2[contains(text(), 'Músicas')]  visible