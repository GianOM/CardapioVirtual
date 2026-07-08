extends Panel

enum Sabores {
	VEGETARIANA,
	PORTUGUESA,
	PEPERONI,
	MARGUERITA,
	QUATROQUEIJOS
	
}


# Textures
const TEXTURE_VEGETARIANA = preload("uid://crxjgpnempefk")
const TEXTURE_PORTUGUESA = preload("uid://dnsbocgy3jpn3")
const TEXTURE_PEPERONI = preload("uid://cmthrayj8sn6h")
const TEXTURE_MARGUERITA = preload("uid://pj02coarex5v")
const TEXTURE_4_QUEIJOS = preload("uid://kbkbogrni3tf")



@onready var pedido_image_preview: TextureRect = $"Pedido Image Preview"
@onready var pizza_title: Label = $"Pedido Image Preview/Pizza Title"
@onready var pizza_ingredientes: RichTextLabel = $"Pedido Image Preview/Pizza Title/Pizza Ingredientes"


func Configurar_Pedido(sabor_pizza: Sabores):
	
	match sabor_pizza:
		Sabores.VEGETARIANA:
			pedido_image_preview.texture = TEXTURE_VEGETARIANA
			pizza_title.text = "Vegetariana"
			pizza_ingredientes.text = "Molho de tomate, mussarela, tomate, cebola roxa, pimentão, champignon, azeitonas, milho, orégano"
			
		Sabores.PORTUGUESA:
			pedido_image_preview.texture = TEXTURE_PORTUGUESA
			pizza_title.text = "Portuguesa"
			pizza_ingredientes.text = "Molho de tomate, mussarela, presunto, ovos, cebola, ervilha, azeitonas, orégano"
			
		Sabores.PEPERONI:
			pedido_image_preview.texture = TEXTURE_PEPERONI
			pizza_title.text = "Peperoni"
			pizza_ingredientes.text = "Molho de tomate, mussarela, pepperoni, orégano"
			
		Sabores.MARGUERITA:
			pedido_image_preview.texture = TEXTURE_MARGUERITA
			pizza_title.text = "Marguerita"
			pizza_ingredientes.text = "Molho de tomate, mussarela, tomate fresco, manjericão, azeite de oliva"
			
		Sabores.QUATROQUEIJOS:
			pedido_image_preview.texture = TEXTURE_4_QUEIJOS
			pizza_title.text = "4 Queijos"
			pizza_ingredientes.text = "Molho de tomate, mussarela, parmesão, provolone, gorgonzola, orégano"
			
		
	
	
	pass
