# ansible_toolbox
frequently used automation content

## cloning this repository
`git clone --recurse-submodules git@github.com:chomatz/ansible_toolbox.git`

## usage
`ansible-navigator -m stdout run <playbook.yml> --senv ANSIBLE_STDOUT_CALLBACK=yaml -- -e "nodes=<inventory_target>"`
