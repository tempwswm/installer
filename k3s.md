## 先安装docker

## 设置环境变量，供后面使用
```shell
export SERVER_TOKEN =""
export NODE_AREA = ""
export NODE_STABLE = "year"
export MASTER_IP = ""
export GHCR_TOKEN = ""
```

## 控制节点

```shell
curl -sfL https://get.k3s.io | sh -s - server \
  --flannel-backend wireguard-native \
  --token $SERVER_TOKEN --docker

```

取消默认的traefik loadBalance 释放端口

```shell
kubectl patch svc/traefik  -n kube-system --patch '{"spec":{"type":"ClusterIP"}}'
```



## 工作节点

```shell
curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP sh -s - agent --token SERVER_TOKEN --docker \
  --node-label area=$NODE_AREA \
  --node-label stable=$NODE_STABLE
```
## 使用ghcr.io
```shell
cat > /etc/rancher/k3s/registries.yaml << EOF
mirrors:
  ghcr:
    endpoint:
      - "https://ghcr.io"
configs:
  "ghcr.io":
    auth:
      username: "user"
      password: $GHCR_TOKEN
EOF

#重启k3s
systemctl restart k3s
```
### 自动补全
```shell
source <(kubectl completion bash)
```

## 安装Kuboard
默认账号密码admin:Kuboard123 
记得修改密码

```shell
docker run -d \
  --restart=unless-stopped \
  --name=kuboard \
  -p 880:80/tcp \
  -p 10081:10081/tcp \
  -e KUBOARD_ENDPOINT="http://$MASTER_IP:880" \
  -e KUBOARD_AGENT_SERVER_TCP_PORT="10081" \
  -v /root/kuboard-data:/data \
  eipwork/kuboard:v3
```
