extends Node2D
signal error
signal correct


func _ready():
	hide()


func _on_supIzquierdo_area_entered(_area):
	emit_signal("error")

func _on_supDerecha_area_entered(_area):
	emit_signal("error")

func _on_infIzquierda_area_entered(_area):
	emit_signal("error")

func _on_infDerecha_area_entered(_area):
	emit_signal("correct")
