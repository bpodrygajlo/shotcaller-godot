extends PanelContainer

var leader:String = "random"
var team:String = 'red'

signal select_leader()

func prepare():
	$HBoxContainer/button.prepare(leader)
	$HBoxContainer/Label.text = leader


func clear_color_remap():
	team = 'blue'
	$HBoxContainer/button/sprite.material = null


func _select_leader():
	emit_signal("select_leader")