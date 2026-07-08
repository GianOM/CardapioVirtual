extends Panel


enum Sabores{
	VEGETARIANA,
	PORTUGUESA,
	PEPERONI,
	MARGUERITA,
	QUATROQUEIJOS
}


@onready var title: RichTextLabel = $Title
@onready var ingredients: RichTextLabel = $Ingredients
@onready var preco: RichTextLabel = $Preco
@onready var calorias: RichTextLabel = $Calorias


func _on_Vegetariana_Selected():
	Reveal_Info_Panel()
	
	title.text = "Vegetariana"
	
	ingredients.text = "Molho de tomate, mussarela, tomate, cebola roxa, pimentão, champignon, azeitonas, milho, orégano"
	preco.text = "R$ 64,90"
	calorias.text = "280 kcal/fatia"
	
	Global.Pizza_Flavor_Selected.emit(Sabores.VEGETARIANA)
	
	
	pass
	
func _on_Portuguesa_Selected():
	Reveal_Info_Panel()
	
	title.text = "Portuguesa"
	
	ingredients.text = "Molho de tomate, mussarela, presunto, ovos, cebola, ervilha, azeitonas, orégano"
	preco.text = "R$ 69,90"
	calorias.text = "320 kcal/fatia"
	
	
	Global.Pizza_Flavor_Selected.emit(Sabores.PORTUGUESA)
	pass
	
func _on_Peperoni_Selected():
	Reveal_Info_Panel()
	
	title.text = "Peperoni"
	
	ingredients.text = "Molho de tomate, mussarela, pepperoni, orégano"
	preco.text = "R$ 72,90"
	calorias.text = "350 kcal/fatia"
	
	Global.Pizza_Flavor_Selected.emit(Sabores.PEPERONI)
	
	pass
	
func _on_Marguerita_Selected():
	Reveal_Info_Panel()
	
	title.text = "Marguerita"
	
	ingredients.text = "Molho de tomate, mussarela, tomate fresco, manjericão, azeite de oliva"
	preco.text = "R$ 62,90"
	calorias.text = "290 kcal/fatia"
	
	
	Global.Pizza_Flavor_Selected.emit(Sabores.MARGUERITA)
	pass
	
func _on_4Queijos_Selected():
	Reveal_Info_Panel()
	
	title.text = "4 Queijos"
	
	ingredients.text = "Molho de tomate, mussarela, parmesão, provolone, gorgonzola, orégano"
	preco.text = "R$ 74,90"
	calorias.text = "360 kcal/fatia"
	
	Global.Pizza_Flavor_Selected.emit(Sabores.QUATROQUEIJOS)
	pass
	
	
func Reveal_Info_Panel():
	show()
	
func Hide_Info_Panel():
	hide()
