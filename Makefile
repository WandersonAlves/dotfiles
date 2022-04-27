step1:
	sh pre-installs/install-core-cli.sh
step2:
	sh pre-installs/install-zsh.sh
step3:
	sh pre-installs/install-fnm.sh
install:
	sh themes.sh && sh applications.sh