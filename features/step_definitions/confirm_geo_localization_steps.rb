
Dado('que o usuário está logado') do

  @login= Login.new

  @login.enter_login

end

Dado('não está na exata Geo-localização do endereço registrado') do

  @address=Address.new

  @address.enter_address

end

Quando('vai para sacola finalizar o pedido') do
  @order=Order.new
  @order.place_order_incorrect

end

Então('o usuário recebe um pop-up ou aviso de que não está exatamente no endereço registrado') do

@order.should include 'Suas bebidas já vão geladinhas!'
end

Então('consegue atualizar o endereço') do
  pending # Write code here that turns the phrase above into concrete actions
end
