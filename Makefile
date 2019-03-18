PROJECTNAME="shell"

#1.默认运行第一个
#2.必须tab健缩进
#3.@不打印执行命令
#4. default:first  default依赖first 执行default先执行first

echo:
	@echo ${PROJECTNAME}
default:first
	echo ${PROJECTNAME}
first:
	@go version

.PHONY: default echo
