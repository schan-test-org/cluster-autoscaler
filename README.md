# cluster-autoscaler

- [cluster-autoscaler](https://github.com/kubernetes/autoscaler/tree/master/charts/cluster-autoscaler)

# Usage

  - 클러스터의 Kubernetes 버전이 `1.25`이라면 `1.25`으로 시작하는 Cluster Autoscaler 릴리스를 검색. `ca_image_tag`에 릴리즈의 해당 이미지 버전을 입력 (e.g. v1.25.1)

  REF > Cluster Autoscaler [릴리스](https://github.com/kubernetes/autoscaler/releases)


# Configuration

|파라미터|타입|기본값|설명|
|--------|--------|--------|--------|
|project|string|""|프로젝트 코드명|
|env|string|""|프로비전 구성 환경 </br>(예시: dev, stg, qa, prod, ...)|
|region|string|""|리전명|
|eks_cluster_name|string|""|EKS클러스터명<br/>* eks_s3_key 설정시 자동 설정됨|
|eks_endpoint_url|string|""|EKS Endpoint URL<br/>* eks_s3_key 설정시 자동 설정됨|
|eks_cluster_certificate_authority_data|string|""|EKS CA Data<br/>* eks_s3_key 설정시 자동 설정됨|
|eks_oidc_provider_arn|string|""|EKS OIDC Provider ARN<br/>* eks_s3_key 설정시 자동 설정됨|
|eks_oidc_provider_url|string|""|EKS OIDC Provider URL<br/>* eks_s3_key 설정시 자동 설정됨|
|eks_auth_token|string|""|EKS Auth Token<br/>* eks_cluster_name 설정하면 자동 설정됨|
|helm_release_name|string|""|helm release명|
|helm_chart_name|string|""|helm 차트명|
|helm_chart_version|string|""|helm 차트버전|
|helm_repository_url|string|""|helm repository url|
|create_namespace|bool|true|namespace 생성여부|
|namespace|string|""|namespace명|
|replica_count|number|"2"|replica개수|
|service_monitor_enabled|bool|false|service monitor 설정여부|
|resources|string|""|resources 설정(yaml)<br/><pre>limits:<br/>  memory: "100Mi"<br/>requests:<br/>  cpu: "100m"<br/>  memory: "100Mi"</pre>|
|affinity|string|""|affinity 설정(yaml)<br/><pre>nodeAffinity:<br/>  requiredDuringSchedulingIgnoredDuringExecution:<br/>    nodeSelectorTerms:<br/>    - matchExpressions:<br/>      - key: role<br/>        operator: In<br/>        values:<br/>        - ops</pre>|
|node_selector|string|""|*TODO LIST*<br/>nodeSelect설정(yaml)<br/><pre>role: ops</pre>|
|tolerations|string|""|*TODO LIST*<br/>tolerations설정(yaml)<br/><pre>- key: "role"<br/>  operator: "Equal"<br/>  value: "ops"<br/>  effect: "NoSchedule"</pre>|
|topology_spread_constraints|string|""|*TODO LIST*<br/>topologySpreadConstraints설정(yaml)</br>|
|ca_image_tag|string|""|kubernetes 버전에 맞는 cluster autoscaler 이미지 버전을 입력|