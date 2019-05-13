# Instructions

1. Made for Fedora IoT
1. Don't install docker
1. Setup ssh keys on all pi:s
1. Configure the `hosts` with the correct hostnames
1. Configure version to use in `setup.yml`
1. Run `make` or `ansible-playbook -K -i hosts setup.yml`
1. Kube config is written to `k3s_config.yml`
