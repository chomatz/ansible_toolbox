# ansible_toolbox
frequently used automation content

## clone the repository
```
git clone --recurse-submodules git@github.com:chomatz/ansible_toolbox.git
cd ansible_toolbox
```

## install required packages
centos/fedora/redhat/rocky
```
sudo dnf install -y fuse-overlayfs podman python-pip
```
steamdeck
```
sudo steamos-readonly disable
sudo pacman -Syu fuse-overlayfs podman python-pip
sudo steamos-readonly enable
```

## install ansible components
```
python3 -m pip install ansible-navigator --user
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
ansible-navigator -m stdout run <playbook.yml> -- -e "nodes=<inventory_target>"
```
