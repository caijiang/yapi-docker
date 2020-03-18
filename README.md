# yapi-docker

完全参照官方指引的[Yapi](https://github.com/YMFE/yapi) Docker Image.

诸如插件安装或者版本更新之类都可参照官网提示操作。

默认输出 3000 端口。

## 构建

```bash
docker build -t yapi .
```

## 运行

```bash
mkdir -p ./data/db
mkdir -p ./data/yapi
docker-compose up -d
```

初次安装时，数据库地址请填写`db`并在安装完成之后重启或者重建.

```bash
docker-compose down
docker-compose up -d
```
