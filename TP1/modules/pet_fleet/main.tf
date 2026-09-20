resource "random_pet" "fleet" {
  count  = var.pet_count
  length = 1
}

resource "local_file" "fleet_files" {
  count    = var.pet_count
  content  = random_pet.fleet[count.index].id
  filename = "pet_${count.index}.txt"
}