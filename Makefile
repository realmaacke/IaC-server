SHELL := /bin/zsh

.PHONY: multipass-del multipass-up


multipass-del:
	multipass delete iac-vm && multipass purge

multipass-up:
	multipass launch --name iac-vm --cloud-init provisioning/autoinstall/cloud-init