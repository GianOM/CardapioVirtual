extends CanvasLayer

enum Sabores{
	VEGETARIANA,
	PORTUGUESA,
	PEPERONI,
	MARGUERITA,
	QUATROQUEIJOS
	
}


var total_de_pedidos: int = 0

@onready var pedido_1: Panel = $"VBoxContainer/Pedido 1"
@onready var pedido_2: Panel = $"VBoxContainer/Pedido 2"
@onready var pedido_3: Panel = $"VBoxContainer/Pedido 3"
@onready var pedido_4: Panel = $"VBoxContainer/Pedido 4"
@onready var pedido_5: Panel = $"VBoxContainer/Pedido 5"

var sabor_atual: Sabores

func Reveal_Canvas():
	visible = true
	
	
func Hide_Canvas():
	visible = false


func _ready() -> void:
	Global.Pizza_Flavor_Selected.connect(Novo_Sabor_Selecionado)
	
	
func Novo_Sabor_Selecionado(sabor_selecionado: Sabores):
	sabor_atual = sabor_selecionado









func Adcionar_Novo_Pedido():
	
	if (total_de_pedidos + 1) <= 5:
		
		total_de_pedidos += 1
		
		var ptr_pedido_atual: Panel = ptr_label_Pedido()
		
		ptr_pedido_atual.Configurar_Pedido(sabor_atual)
		
		ptr_pedido_atual.show()
		
		
	
	
	
	
func ptr_label_Pedido() -> Panel:
	
	match total_de_pedidos:
		1:
			return pedido_1
		2:
			return pedido_2
		3:
			return pedido_3
		4:
			return pedido_4
		5:
			return pedido_5
			
			
			
		_:
			printerr("Numero Limite de Pedidos por usuario excedido")
			return null
	
	
	
	
