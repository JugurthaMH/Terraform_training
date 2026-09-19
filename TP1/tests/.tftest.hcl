# tests/.tftest.hcl

variables {
  prefix    = "dev"
  separator = "-"
}

run "validation_pattern_nom" {
  command = apply

  assert {
    condition = startswith(output.animal_name, "${var.prefix}${var.separator}")
    error_message = "Le nom généré ne respecte pas le pattern attendu."
  }
}