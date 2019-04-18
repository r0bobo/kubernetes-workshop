all:
	ansible-playbook -i hosts setup.yml

poweroff:
	ansible -i hosts all -a "sudo poweroff"

reboot:
	ansible -m reboot --become -i hosts all

upgrade:
	ansible -i hosts all -a "sudo apt update"
	ansible -i hosts all -a "sudo apt upgrade -y"
