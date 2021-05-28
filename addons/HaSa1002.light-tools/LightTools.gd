tool
extends EditorPlugin

var light3d := preload("res://addons/HaSa1002.light-tools/LightColor.gd").new()


func _enter_tree():
	add_inspector_plugin(light3d)
	pass


func _exit_tree():
	remove_inspector_plugin(light3d)
	pass
