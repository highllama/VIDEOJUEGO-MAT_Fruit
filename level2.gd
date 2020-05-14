extends Node2D

signal secondCorrect
signal secondError

func _on_supIzquierdo_area_entered2(area):
	emit_signal("secondCorrect")

func _on_supDerecha_area_entered2(area):
	emit_signal("secondError")
	
func _on_infIzquierda_area_entered2(area):
	emit_signal("secondError")

func _on_infDerecha_area_entered2(area):
	emit_signal("secondError")
