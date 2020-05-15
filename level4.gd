extends Node2D

signal fourthCorrect
signal fourthIncorrect



func _on_infIzquierda_area_entered4(area):
	emit_signal("fourthCorrect")


func _on_supDerecha_area_entered4(area):
	emit_signal("fourthIncorrect")


func _on_supIzquierdo_area_entered4(area):
	emit_signal("fourthIncorrect")


func _on_infDerecha_area_entered4(area):
	emit_signal("fourthIncorrect")
