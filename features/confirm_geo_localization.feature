# language: pt
# coding: utf-8


Funcionalidade:Confirmar Geo-Localização

@Geo-Localização
Cenário: Usuário não está na Geo-Localização registrada no "Receber agora em:"
Dado que o usuário está logado
E não está na exata Geo-localização do endereço registrado
Quando vai para sacola finalizar o pedido
Então o usuário recebe um pop-up ou aviso de que não está exatamente no endereço registrado
