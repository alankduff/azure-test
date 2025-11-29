terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.54.0"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = "2.3.7"
    }
    terracurl = {
      source = "devops-rob/terracurl"
      version = "2.1.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {

  }
  subscription_id = "03023904-9ce2-4006-9526-f002d0a76724"
}

variable "open_webui_user" {
  description = "Username to access the web UI"
  default     = "admin@demo.gs"
}

variable "openai_base" {
  description = "Optional base URL to use OpenAI API with Open Web UI" 
  default     = "https://api.openai.com/v1"
}

variable "openai_key" {
  description = "Optional API key to use OpenAI API with Open Web UI"
  type=string
}

