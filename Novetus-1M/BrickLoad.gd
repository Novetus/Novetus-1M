extends MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var material = self.get_surface_override_material(0)
	var color = Color8(randi_range(0,255),randi_range(0,255), randi_range(0,255), 255)
	var roughness = randf_range(0,1)
	var metallic = randf_range(0,1)
	var specular = randf_range(0,1)
	var rim = randf_range(0,1)
	var rim_tint = randf_range(0,1)
	var ao_light_affect = randf_range(0,1)
	var subsurf_scatter_strength = randf_range(0,1)
	print("Color: " + str(color))
	print("Roughness: " + str(roughness))
	print("Metallic: " + str(metallic))
	print("Specular: " + str(specular))
	print("Rim: " + str(rim))
	print("Rim Tint: " + str(rim_tint))
	print("AO Level: " + str(ao_light_affect))
	print("Scatter Strength: " + str(subsurf_scatter_strength))
	material.albedo_color = color
	material.roughness = roughness
	material.metallic = metallic
	material.metallic_specular = specular
	material.rim = rim
	material.rim_tint = rim_tint
	material.ao_light_affect = ao_light_affect
	material.subsurf_scatter_strength = subsurf_scatter_strength

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
