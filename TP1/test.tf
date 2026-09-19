provider "random" {

}

variable "prefix" {
    type = string
    # default = "dev"
}

variable "separator" {
    type = string
    # default = ": "
}

resource "random_pet" "server" {
    prefix = var.prefix
    separator = var.separator
    length = 1
}

resource "local_file" "foo" {
    lifecycle {
        precondition {
            condition = var.prefix != "" && var.prefix != null
            error_message = "Il doit y avoir un préfix !"
        }

        precondition {
            condition = var.separator == "_" || var.separator == "-"
            error_message = "Il doit y avoir un séparateur !"
        }

        postcondition {
            condition = random_pet.server.id == self.content
            error_message = "Le contenu du fichier doit contenir le nom généré !"
        }
    }

    content  = random_pet.server.id
    filename = "animal.txt"
}

output "animal_name" {
    value = local_file.foo.content
}

output "filename" {
    value = local_file.foo.filename
}