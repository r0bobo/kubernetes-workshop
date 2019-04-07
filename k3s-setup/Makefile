all:
	ansible-playbook -i hosts setup.yml

poweroff:
	ansible -i hosts all -a "sudo poweroff"

# upgrade:
# 	ansible -i hosts all -a "sudo apt update && sudo apt upgrade"
