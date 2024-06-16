class_name Character

extends CharacterBody2D

@export var maximumHealth: int
@export var currentHealth: int
@export var attackSpeed: int
@export var movementSpeed: int
@export var physicalResistance: int
@export var magicalResistance: int
@export var strength: int
@export var intelligence: int
@export var lifeSteal: int
@export var size: CharacterSize
@export var attackRange: int
@export var inventory: Array[String] # TODO: Change for Weapon

# TODO: define animations triggers for every function
func die():
	queue_free()

func receiveDamage(damageAmount: int):
	currentHealth -= damageAmount
	if currentHealth <= 0:
		die()

func heal(healAmount: int):
	currentHealth += healAmount
	if currentHealth > maximumHealth:
		currentHealth = maximumHealth
