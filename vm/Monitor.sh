#!/bin/sh
# 监控 jar是否在运行

# 加载环境变量
. /etc/profile
 
# jar包的绝对路径
jarName="/usr/local/webservice/webservice.jar"

# 日志目录
logDir="/usr/local/webervice/shlog.txt"

# 启动 
start(){  
	nohup java -Xmx2048m -Xmx2048m -jar $jarName >> $logDir 2>&1 &  
}
 
# 监控 
monitor(){
	pid=`ps aux|grep $jarName|awk '/java/{print $2}'`
	if [ ! -n "$pid" ]; then
		date >> $logDir
		echo "service has stopped! restarting~~~" >> $logDir 
		start
	fi
}

monitor
