#!/bin/bash
{% if vm_type == 'bootstrap' %}
CMD="virt-install -n bootstrap.ocp4.example.com --description Bootstrap_Machine_for_Openshift4Cluster \
     --os-type=Linux --os-variant=rhel8.0 --ram=4096 --vcpus=4 \
     --autostart \
     --disk pool=default,bus=virtio,size=40 \
     --graphics none --serial pty --console pty \
     --pxe --noautoconsole \
     --network bridge=openshift4,mac=52:54:00:a4:db:5f"
{% endif %}
{% if vm_type == 'master01' %}
CMD="virt-install -n master01.ocp4.example.com --description Master1_MachineforOpenshift4Cluster \
     --os-type=Linux --os-variant=rhel8.0 --ram=8192 --vcpus=4 \
     --autostart --noreboot \
     --disk pool=default,bus=virtio,size=40 \
     --graphics none --serial pty --console pty \
     --pxe --noautoconsole \
     --network bridge=openshift4,mac=52:54:00:8b:a1:17"
{% endif %}
{% if vm_type == 'master02' %}
CMD="virt-install -n master02.ocp4.example.com --description Master2MachineforOpenshift4Cluster \
     --os-type=Linux --os-variant=rhel8.0 --ram=8192 --vcpus=4 \
     --autostart --noreboot \
     --disk pool=default,bus=virtio,size=40 \
     --graphics none --serial pty --console pty \
     --pxe --noautoconsole \
     --network bridge=openshift4,mac=52:54:00:ea:8b:9d"
{% endif %}
{% if vm_type == 'master03' %}
CMD="virt-install -n master03.ocp4.example.com --description Master2MachineforOpenshift4Cluster \
     --os-type=Linux --os-variant=rhel8.0 --ram=4096 --vcpus=2 \
     --autostart --noreboot \
     --disk pool=default,bus=virtio,size=40 \
     --graphics none --serial pty --console pty \
     --pxe --noautoconsole \
     --network bridge=openshift4,mac=52:54:00:f8:87:c7"
{% endif %}
{% if vm_type == 'worker01' %}
CMD="virt-install -n worker01.ocp4.example.com --description Worker1MachineforOpenshift4Cluster \
     --os-type=Linux --os-variant=rhel8.0 --ram=4096 --vcpus=4 \
     --autostart --noreboot \
     --disk pool=default,bus=virtio,size=50 \
     --graphics none --serial pty --console pty \
     --pxe --noautoconsole \
     --network bridge=openshift4,mac=52:54:00:31:4a:39"
{% endif %}

exec $CMD

