#ansible-playbook main.yaml -i hosts --tags zk --extra-vars "my_hosts=zookeeper"
ansible-playbook local.yaml -i localhost --tags 'java,zk,kafka' --extra-vars "my_hosts=$2"
# Task tags: cache, cache-clean
