- JavaService.exe -install HBaseService "%JAVA_HOME%"/jre/bin/server/jvm.dll -Xmx128m -Djava.class.path="%JAVA_HOME%"/lib/tools.jar;D:/DeployProgram/hbaseService/webservice.jar -start com.datalabchina.ssap.rest.Service -method StartService -stop com.datalabchina.ssap.rest.Service -method StopService -out "%CD%/HBaseServiceLogs/out.log" -err "%CD%/HBaseServiceLogs/err.log" -current "%CD%" -auto



###步骤：
1. 针对你的项目修改上面的cmd命令，以管理员身份打开cmd命令窗口，执行上面的cmd命令
2.启动服务：net start 服务名