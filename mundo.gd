extends Node

var score

func _ready():
	pass
	
func passLevel():
	$level1.translate(Vector2(-3000,0))
	$scoreTimer.stop()
	$passLevelTimer.start()
	$interfaz.mostrarTexto("Siguiente Nivel!")
	$Player.inicio($posicionDeInicio.position)
	$Player.velocidad = 0
	yield($passLevelTimer,"timeout")
	$Player.velocidad = 600
	$level2.translate(Vector2(1080, 0))
	$scoreTimer.start()
	
func nuevoJuego():
	score = 0
	$Player.velocidad = 0
	$inicioTimer.start()
	$Player.inicio($posicionDeInicio.position) # pos de inicio
	$interfaz.mostrarTexto("Listo!")
	$interfaz.updateScore(score)
	$level1.show()
	yield($inicioTimer,"timeout")
	$Player.velocidad = 600
	$Player/AnimatedSprite.playing = true
	


	

func gameOver():
	$scoreTimer.stop()
	$interfaz.gameOver()
	$gameOver.start()
	$level1.hide()
	$Player.hide()
	yield($gameOver,"timeout")
	nuevoJuego()
	
func gameFinish():
	$interfaz.mostrarTexto('terminaste!!')
	$interfaz.finalScore(score)
	$scoreTimer.stop()
	$Player.velocidad = 0
	$Player.hide()
	$level2.hide()
	$interfaz/score.hide()
	yield($passLevelTimer, "timeout")
	#$interfaz/finalScore.hide()
	$interfaz.mostrarTexto("Gracias Por Jugar")
	$interfaz/score.text = "Desarrollado por Juan D. Rodriguez."
	$interfaz/score.show()
	
# ----------TIMERS---------
func _on_inicioTimer_timeout():
	$scoreTimer.start()

func _on_scoreTimer_timeout():
	score += 1
	$interfaz.updateScore(score)
	


# -----level answers ------

func _on_level1_error():
	gameOver()

func _on_level1_correct():
	passLevel()

func _on_level2_secondCorrect():
	gameFinish()

func _on_level2_secondError():
	gameOver()
