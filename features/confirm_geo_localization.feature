# language: pt
# coding: utf-8

@all
Funcionalidade: Confirmar Geo-Localização

@first
Cenário: Usuário não está na Geo-Localização registrada no "Receber agora em:"
Dado que o usuário está logado
E não está na exata Geo-localização do endereço registrado
Quando vai para sacola finalizar o pedido
Então o usuário recebe um pop-up ou aviso de que não está exatamente no endereço registrado
E consegue atualizar o endereço

@second
Cenário: Usuário está na Geo-Localização exata registrada no "Receber agora em:"
Dado que o usuário esta logado
E está na exata geo-localização do endereço registrado
Quando vai para sacola finalizar o pedido
Então recebe somente a janela de confirmação de compra
