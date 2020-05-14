extends CanvasLayer

signal iniciarJuego

func mostrarTexto(texto):
	$mensaje.text = texto
	$mensaje.show() 
	$mensajeTimer.start()

func gameOver():
	mostrarTexto("Game Over!")
	yield($mensajeTimer, "timeout")
	$mensaje.text = "intenta de nuevo!"
	$mensaje.show()
	

func updateScore (puntos):
	$score.text = str(puntos)
	
func finalScore(puntaje):
	$finalScore.text = "tu puntaje final es" + " " + str(puntaje) 

func _on_mensajeTimer_timeout():
	$mensaje.hide()


func _on_botonJugar_pressed():
	$botonJugar.hide()
	emit_signal("iniciarJuego")
	
