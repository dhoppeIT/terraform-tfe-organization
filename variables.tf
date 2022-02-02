variable "name" {
  type        = string
  description = "Name of the organization"
}

variable "email" {
  type        = string
  description = "Admin email address"
}

variable "session_timeout_minutes" {
  type        = number
  default     = 20160
  description = "Session timeout after inactivity"
}

variable "session_remember_minutes" {
  type        = number
  default     = 20160
  description = "Session expiration"
}

variable "collaborator_auth_policy" {
  type        = string
  default     = "password"
  description = "Authentication policy"
}

variable "owners_team_saml_role_id" {
  type        = string
  default     = null
  description = "The name of the 'owners' team"
}

variable "cost_estimation_enabled" {
  type        = bool
  default     = false
  description = "Whether or not the cost estimation feature is enabled for all workspaces in the organization"
}

variable "send_passing_statuses_for_untriggered_speculative_plans" {
  type        = bool
  default     = false
  description = "Whether or not to send VCS status updates for untriggered speculative plans"
}

variable "members" {
  type        = list(string)
  default     = []
  description = "Email of the users to add"
}

variable "force_regenerate" {
  type        = bool
  default     = false
  description = "If set to true, a new token will be generated even if a token already exists"
}
