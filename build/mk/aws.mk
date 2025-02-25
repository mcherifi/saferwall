AWS_CLI_DOWNLOAD_URL=https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip

awscli-install:		## Install aws cli tool and configure it
	sudo apt install curl python3 -y
	curl "${AWS_CLI_DOWNLOAD_URL}" -o "awscliv2.zip"
	unzip awscliv2.zip
	sudo ./aws/install
	rm awscliv2.zip
	aws --version
	@echo "========================================================================================="
	@echo "log in to aws console and get your access and secret key, for more information, consult:"
	@echo "https://aws.amazon.com/blogs/security/wheres-my-secret-access-key/"
	aws configure