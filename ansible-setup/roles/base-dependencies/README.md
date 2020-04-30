Role Name
=========

base-dependencies

Requirements
------------
Run install-ansible-macOSx.sh to install ansible-playbook. Currently this playbook is being developed to run on MacOSX.  

Role Variables
--------------
chefdk_version: Chef Development Kit version to install (default: 3.11.3)
chefdk_url_dmg: URL to obtain the chefdk from.
vagrant_version: Vagrant version to install
vagrant_url_dmg: URL to obtain the vagrant dmg from 


Example Playbook
----------------

    - hosts: localhost
      roles:
         - { role: base-dependencies }

License
-------

MIT

Author Information
------------------

vino.ravikumar@highspot.com
