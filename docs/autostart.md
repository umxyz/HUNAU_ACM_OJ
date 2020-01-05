判题机开机启动
=========

> 以下内容均需要 root 权限。非 root 用户可使用 `sudo`。

## 方法一：

```shell
#创建开机自启判题服务脚本
#cd /usr/bin
#nano /usr/bin/ServiceStart.sh
cd /etc/init.d
nano /etc/init.d/ServiceStart.sh
```

```bash
#!/bin/sh
### BEGIN INIT INFO
# Provides:          land.sh
# Required-start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts the svnd.sh daemon
# Description:       starts svnd.sh using start-stop-daemon
### END INIT INFO

#服务启动
service ssh start
service vsftpd start
service mysql start
service php7.2-fpm start
service nginx start
#ftp服务器挂载
sudo mount /dev/sdb1 /home/disk1
sudo mount /dev/sdc1 /home/disk2
cd /home/judge/jnoj
cd judge
# 运行 OI 模式的判题机进程，请使用 sudo ./dispatcher -o
sudo pkill -9 dispatcher
make
sudo ./dispatcher -o
cd ../polygon
sudo pkill -9 polygon
make
```

```shell
#chmod +x ServiceStart.sh
#cp ServiceStart.sh /etc/init.d
chmod 755 /etc/init.d/ServiceStart.sh
cd /etc/init.d
sudo update-rc.d ServiceStart.sh defaults 95
reboot
```

## 方法二

### 1. Judge

将以下内容保存创建为 `jnoj-judge.service`，保存为 `/etc/systemd/system/jnoj-judge.service`

```
[Unit]
Description=Start JNOJ judge
After=network.target
Wants=mysql.service

[Service]
# 根据安装修改为对应的安装路径，你应该要能在该路径找到可执行文件 dispatcher
ExecStart=-/home/judge/jnoj/judge/dispatcher
RemainAfterExit=yes
KillMode=control-group
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
```

### 2. Polygon

将以下内容保存创建为 `jnoj-polygon.service`，保存为 `/etc/systemd/system/jnoj-polygon.service`

```
[Unit]
Description=Start JNOJ polygon
After=network.target
Wants=mysql.service

[Service]
# 根据安装修改为对应的安装路径，你应该要能在该路径找到可执行文件 polygon
ExecStart=-/home/judge/jnoj/polygon/polygon
RemainAfterExit=yes
KillMode=control-group
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
```

### 3. 执行命令
```
systemctl daemon-reload
systemctl enable jnoj-judge
systemctl enable jnoj-polygon
```
