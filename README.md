# ansible_toolbox
frequently used automation content

## clone the repository
```
git clone --recurse-submodules git@github.com:chomatz/ansible_toolbox.git
cd ansible_toolbox
```

## install podman
centos/fedora/redhat/rocky
```
dnf install -y podman
```

## build the ansible container
```
podman build -t ansible:latest containers
```

## install required collections
```
# this assumes that ~/.ansible/collections is empty
ansible-galaxy install -r collections/requirements.yml
mv ~/.ansible/collections/ansible_collections collections/.
```

## usage
```
ansible-navigator -m stdout run <playbook.yml> --senv ANSIBLE_STDOUT_CALLBACK=yaml -- -e "nodes=<inventory_target>"
```
