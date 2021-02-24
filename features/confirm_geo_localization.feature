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
