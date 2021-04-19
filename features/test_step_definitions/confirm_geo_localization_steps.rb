
Dado('que o usuário está logado') do
  @login= Login.new
  sleep(5)
  @login.verify_if_modal_appears?
  sleep(3)
  @login.verify_if_modal_appears?
  @login.enter_login
end
Dado('não está na exata Geo-localização do endereço registrado') do
  @address=Address.new
  @address.enter_address
end
Quando('vai para sacola finalizar o pedido') do
  @order=Order.new
  @order.place_order
end
Então('o usuário recebe um pop-up ou aviso de que não está exatamente no endereço registrado') do
  @order.message_validation
end
