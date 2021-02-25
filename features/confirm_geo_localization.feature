# language: pt
# coding: utf-8

@all
Funcionalidade: Confirmar Geo-Localização

@first
Cenário: Usuário quer remover produtos adicionados na sacola
Dado que o usuário está logado e adiciona produtos na sacola
Quando irá para finalizar o pedido
Então decide remover os produtos da sacola


@second
Cenário: Usuário não está na Geo-Localização registrada no "Receber agora em:"
Dado que o usuário está logado
E não está na exata Geo-localização do endereço registrado
Quando vai para sacola finalizar o pedido
Então o usuário recebe um pop-up ou aviso de que não está exatamente no endereço registrado
