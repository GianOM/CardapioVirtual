extends TextureRect

@onready var label_num_de_pedidos : Label = $"Numero de Pedidos"

var total_de_pedidos: int = 0

func Pedido_Adicionado():
	
	if (total_de_pedidos + 1) <= 5:
		
		show()
		
		total_de_pedidos += 1
		
		_update_label_de_pedidos()
		
		
	
	
func _update_label_de_pedidos():
	
	
	
	label_num_de_pedidos.text = str(total_de_pedidos)
	
	
	pass
