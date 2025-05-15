variable "existing_sg_id" {
  description = "ID of the existing security group to attach to the instance"
  type        = string
  default     = "sg-0c20946163121270b"
}

variable "key_name" {
  description = "Name of the EC2 key pair to use"
  type        = string
  default     = "886436941748_NV-Mar-25"
}

