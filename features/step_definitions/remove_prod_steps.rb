require 'pry'

Dado('que o usuário está logado e adiciona produtos na sacola')do
@login= Login.new
@login.verify_if_modal_appears?
@login.enter_login
@address=Address.new
@address.enter_address
end

Quando('irá para finalizar o pedido')do
@order=Order.new
@order.place_order
end

Então('decide remover os produtos da sacola')do
@remove=Remove_prod.new
@remove.remove
end
