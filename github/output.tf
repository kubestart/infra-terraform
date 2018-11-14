output "repositories" {
  value = [
    "${module.infra-helm-repository.info}",
    "${module.infra-terraform-repository.info}",
    "${module.app-realworld-backend-repository.info}",
    "${module.app-realworld-frontend-repository.info}"
  ]
}

output "projects" {
  value = [
    "${module.app-realworld-backend-project.info}",
    "${module.app-realworld-frontend-project.info}"
  ]
}
