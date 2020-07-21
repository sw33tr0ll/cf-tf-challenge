variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default = "animated-spider-270323"
}

variable "enable_flow_logs" {
    description = "Whether to enable flow logging for this subnetwork."
    type        = bool
    default     = true
}
