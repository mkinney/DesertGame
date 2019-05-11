/// @desc gets hit
health -= 1;

if (health = 0)
{
	instance_destroy();
	health = 5;
}
