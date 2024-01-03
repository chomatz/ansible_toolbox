# ansible_toolbox
frequently used automation content

## cloning this repository
`git clone --recurse-submodules git@github.com:chomatz/ansible_toolbox.git`

## installing ansible collections
```
ansible-galaxy install -r collections/requirements.yml
mv ~/.ansible/collections/ansible_collections collections/.
```

## usage
`ansible-navigator -m stdout run <playbook.yml> --senv ANSIBLE_STDOUT_CALLBACK=yaml -- -e "nodes=<inventory_target>"`
