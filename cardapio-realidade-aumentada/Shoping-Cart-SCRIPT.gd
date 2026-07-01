extends Button

@onready var carrinho_canvas: CanvasLayer = $Carrinho_Canvas

func _on_button_pressed():
	carrinho_canvas.visible = true
