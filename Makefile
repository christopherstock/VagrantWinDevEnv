all: compile deploy

compile:
	vagrant winrm default -s powershell -c 'C:/vagrant/scripts/compile.ps1'

deploy:
	vagrant winrm deployment -s powershell -c 'C:/vagrant/scripts/deploy.ps1'
