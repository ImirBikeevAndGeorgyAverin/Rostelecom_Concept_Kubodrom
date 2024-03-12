extends Control

func _ready():
	var scroll_container = ScrollContainer.new()
	scroll_container.rect_min_size = Vector2(200, 200) # Set the size of the scroll container

	var scroll_content = Control.new()
	scroll_content.rect_min_size = Vector2(300, 300) # Set the size of the scrollable content

	# Add some UI elements to the scrollable content
	var label = Label.new()
	label.text = "Scroll me!"
	label.rect_position = Vector2(50, 50) # Position the label inside the scrollable content
	scroll_content.add_child(label)

	# Add the scrollable content to the scroll container
	scroll_container.add_child(scroll_content)
	
	# Add the scroll container to the scene
	add_child(scroll_container)
