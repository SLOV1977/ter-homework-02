variable "vm_name" {
  type        = string
  default     = "netology-develop-platform"
  description = "Name of the VMs"
}

variable "vms_resources" {
  description = "Resources for all vms"
  type        = map(map(number))
  default     = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "vms_metadata" {
  description = "Metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGpYcgQSMQdW34YAZf8LljZqk0BV8o1HWzu5E+LVv2Hy slov@DESKTOP-PVKD5GR"
  }
}


# netology-develop-platform-web

# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
#   description = "Name of the web VM"
# }

variable "vm_role_web" {
  type        = string
  default     = "web"
  description = "Web role for VM"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform version for the web VM"
}

# variable "vm_web_cores" {
#   type        = number
#   default     = 2
#   description = "Number of cores for the web VM"
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = 1
#   description = "Amount of memory for the web VM"
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 5
#   description = "Core fraction for the web VM"
# }

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Preemptible status for the web VM"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Nat status of network interface for the web VM"
}

# variable "vm_web_serial_port_enable" {
#   type        = number
#   default     = 1
#   description = "Number of enable ports for the web VM"
# }


# netology-develop-platform-db

variable "vpc_name_db" {
  type        = string
  default     = "develop_db"
  description = "VPC network & subnet name for db VM"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_role_db" {
  type        = string
  default     = "db"
  description = "Db role for VM"
}

# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "Name of the db VM"
# }

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Platform version for the db VM"
}

# variable "vm_db_cores" {
#   type        = number
#   default     = 2
#   description = "Number of cores for the db VM"
# }

# variable "vm_db_memory" {
#   type        = number
#   default     = 2
#   description = "Amount of memory for the db VM"
# }

# variable "vm_db_core_fraction" {
#   type        = number
#   default     = 20
#   description = "Core fraction for the db VM"
# }

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Preemptible status for the db VM"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Nat status of network interface for the db VM"
}

# variable "vm_db_serial_port_enable" {
#   type        = number
#   default     = 1
#   description = "Number of enable ports for the db VM"
# }
