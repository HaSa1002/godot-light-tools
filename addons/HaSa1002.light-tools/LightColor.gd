@tool
extends EditorInspectorPlugin


func _can_handle(object) -> bool:
	return object is Light3D || object is Light2D


func _parse_property(object, type, path, hint, hint_text, usage, wide) -> bool:
	if ((path == "light_color" and object is Light3D) ||
			(path == "color" and object is Light2D)):
		add_property_editor(path, LightColorEditor.new())
		return true
	return false
