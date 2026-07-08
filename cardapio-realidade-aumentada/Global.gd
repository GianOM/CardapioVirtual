extends Node


enum Sabores{
	VEGETARIANA,
	PORTUGUESA,
	PEPERONI,
	MARGUERITA,
	QUATROQUEIJOS
}

@warning_ignore("unused_signal")
signal Pizza_Flavor_Selected(sabor_da_pizza: Sabores)
