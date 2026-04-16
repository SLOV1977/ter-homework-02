locals {
  vm_web_name = "${var.vm_name}-${var.vm_role_web}"
  vm_db_name  = "${var.vm_name}-${var.vm_role_db}"
}