all:
	ansible-playbook -i hosts setup.yml

config:
	ansible-playbook -i hosts -t config setup.yml

pass:
	ansible-playbook -K -i hosts setup.yml

upgrade:
	ansible-playbook -i hosts upgrade.yml

poweroff:
	ansible -i hosts all -a "sudo poweroff"

reboot:
	ansible -m reboot --become -i hosts all
