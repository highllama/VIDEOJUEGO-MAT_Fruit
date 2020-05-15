extends Node2D

signal thirdCorrect
signal thirdIncorrect



func _on_supDerecha_area_entered3(area):
	emit_signal("thirdCorrect")

func _on_supIzquierdo_area_entered3(area):
	emit_signal("thirdIncorrect")

func _on_infIzquierda_area_entered3(area):
	emit_signal("thirdIncorrect")

func _on_infDerecha_area_entered3(area):
	emit_signal("thirdIncorrect")
