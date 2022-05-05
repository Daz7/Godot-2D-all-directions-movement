import KinematicBody2D

export (int) var speed = 100
export (int) var direction : Vector2

func _physics_process(delta):
    # define direction of movement
    direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
    direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))


    # Movement
    if direction:
        # handle the movement of the player and the collision with objects
        move_and_slide(direction * speed)
