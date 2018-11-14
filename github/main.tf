########################################
# Infrastructure Team / Repo / Project #
########################################
module "infra-team" {
  source = "team"
  name = "Infrastructure Team"
  maintainer_members = ["yurinnick"]
}

module "infra-helm-repository" {
  source = "repository"
  name = "infra-helm-charts"
  description = "Helm Charts Repository"
  admin_access_teams = [ "${module.infra-team.name}" ]
}

module "infra-terraform-repository" {
  source = "repository"
  name = "infra-terraform"
  description = "Terraform Infrastructure-as-a-Code"
  admin_access_teams = [ "${module.infra-team.name}" ]
}

#################################
# Backend Team / Repo / Project #
#################################
module "app-realworld-backend-team" {
  source = "team"
  name = "RealWorld Backend Team"
  maintainer_members = ["yurinnick"]
}

module "app-realworld-backend-repository" {
  source = "repository"
  name = "app-realworld-backend"
  description = "Realworld App Backend"
  auto_init = false
  push_access_teams = [ "${module.app-realworld-backend-team.name}" ]
  admin_access_teams = [ "${module.infra-team.name}" ]
}

module "app-realworld-backend-project" {
  source = "project"
  name = "RealWorld Backend"
}

#################################
# Frontend Team / Repo / Project
#################################
module "app-realworld-frontend-team" {
  source = "team"
  name = "RealWorld Frontend Team"
  maintainer_members = ["yurinnick"]
}

module "app-realworld-frontend-repository" {
  source = "repository"
  name = "app-realworld-frontend"
  description = "Realworld App Frontend"
  auto_init = false
  push_access_teams = [ "${module.app-realworld-frontend-team.name}" ]
  admin_access_teams = [ "${module.infra-team.name}" ]
}

module "app-realworld-frontend-project" {
  source = "project"
  name = "RealWorld Frontend"
}
