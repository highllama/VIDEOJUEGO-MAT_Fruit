extends Area2D

export (int) var velocidad = 600
var movimiento = Vector2()
var limite 
signal golpe


func _ready():
	limite = get_viewport_rect().size
	hide()
	

func _process(delta):
	
	movimiento = Vector2()  # Reiniciar valor 
	
	if Input.is_action_pressed("ui_right"):
		movimiento.x += 1
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= 1
	if Input.is_action_pressed("ui_down"):
		movimiento.y += 1
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= 1
	if movimiento.length() > 0:
		movimiento = movimiento.normalized() * velocidad

	position += movimiento * delta
	position.x = clamp(position.x, 0 ,limite.x - 50)
	position.y = clamp(position.y, 0 ,limite.y - 50)

	if movimiento.x > 0:   # cambios de sprite
		$AnimatedSprite.flip_h = false
	else :
		$AnimatedSprite.flip_h = true


# warning-ignore:unused_argument

	
func inicio (pos):
	position = pos
	show()   # mostrar player
	$CollisionShape2D.disabled = false
