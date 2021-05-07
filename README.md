# rocketmqdev

RocketMQ 镜像包含nameserver broker 和rocketmq-console 主要用于开发环境调试.
**请勿用于生产环境**

## 端口映射
| 端口 | 服务 |
| --- | --- |
| 9876 | rocket nameserver|
| 8080 | rocketmq-console |

## 磁盘映射
| 路径   |
| --- |
| /var/rocketmq|

## 构建

```sh
docker build -t rocketmqdev ./
```

## 运行

```sh

docker run -d --restart=always -v /Users/vincentmi/data/rocketmq_data:/var/rocketmq --name=rocketmqdev -p 9876:9876 -p 9877:8080  vincentmi/rocketmqdev:latest

```


