variable "existing_sg_id" {
  description = "ID of the existing security group to attach to the instance"
  type        = string
  default     = "sg-0f43371e2b71fca11"
}

variable "key_name" {
  description = "Name of the EC2 key pair to use"
  type        = string
  default     = "886436941748_Mum_May-25"
}

