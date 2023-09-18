variable database_name {
    type = string
    description = "The name of the domain e.g. example"
}

variable table_name {
    type = string
    description = "The name of the table"
}

variable read_capacity {
    type = number
    description = "The name of the domain e.g. example"
    default = 10
}

variable write_capacity {
    type = number
    description = "The name of the domain e.g. example"
    default = 10
}

variable hash_key {
    type = string
    description = "The name of the domain e.g. example"
}

variable hash_key_type {
    type = string
    description = "The name of the domain e.g. example"
}

variable item {
    type = string
    description = "The name of the domain e.g. example"
}