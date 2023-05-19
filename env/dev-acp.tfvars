###############################################################################
# Common Variables
###############################################################################

project     = "dev.test"
aws_region  = "ap-northeast-2"

default_tags = {
  dept  = "Platform Service Architect Group / DevOps SWAT Team"
  email = "schan@mz.co.kr"
}

env = "dev"

########################################
# workspace setting
########################################
tfc_org = "schan-test"
tfc_wk = "1-dev-eks-tfc"

###############################################################################
# eks
###############################################################################
eks_cluster_name       = "deveks-test"

###############################################################################
# helm-v
###############################################################################

helm_release_name   = "cluster-autoscaler"
helm_chart_name     = "cluster-autoscaler"
helm_chart_version  = "9.28.0"
helm_repository_url = "https://kubernetes.github.io/autoscaler"

create_namespace = true
namespace        = "cluster-autoscaler"

replica_count           = 1
service_monitor_enabled = false

# 참고: https://github.com/kubernetes/autoscaler/releases
ca_image_tag = "v1.24.1"
# ca_image_tag = "v1.25.1"

resources = <<EOF
limits:
  memory: "100Mi"
requests:
  cpu: "100m"
  memory: "100Mi"
EOF

affinity = <<EOF
nodeAffinity:
  requiredDuringSchedulingIgnoredDuringExecution:
    nodeSelectorTerms:
    - matchExpressions:
      - key: role
        operator: In
        values:
        - ops
EOF

node_selector = ""
# node_selector = <<EOF
# role: ops
# EOF

# tolerations   = ""
tolerations = <<EOT
- key: "role"
  operator: "Equal"
  value: "ops"
  effect: "NoSchedule"
- key: "role"
  operator: "Equal"
  value: "apps"
  effect: "NoSchedule"
EOT


topology_spread_constraints = ""
