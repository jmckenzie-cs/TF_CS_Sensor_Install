# variables.tf [variables.tf]

variable "cid" {
  description = "CrowdStrike CID"
  type        = string
}

variable "repository" {
  description = "Node image repository"
  type        = string
}

variable "tag" {
  description = "Node image tag"
  type        = string
}

variable "registryConfigJSON" {
  description = "Node image registry configuration in JSON format"
  type        = string
}
