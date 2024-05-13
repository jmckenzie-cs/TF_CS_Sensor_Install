provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "falcon-helm" {
  name             = "falcon-helm"
  chart            = "falcon-sensor"
  repository       = "https://crowdstrike.github.io/falcon-helm"
  namespace        = "falcon-system"
  create_namespace = true
  reset_values     = true


  set {
    name  = "falcon.cid"
    value = var.cid
  }

  set {
    name  = "node.image.repository"
    value = var.repository
  }
  set {
    name  = "node.image.tag"
    value = var.tag
  }
    set {
    name  = "node.image.registryConfigJSON"
    value = var.registryConfigJSON
  }

}