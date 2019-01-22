#ansible-playbook main.yaml -i hosts --tags zk --extra-vars "my_hosts=zookeeper"
ansible-playbook main.yaml -i hosts --tags $1 --extra-vars "my_hosts=$2"
# Task tags: cache, cache-clean
