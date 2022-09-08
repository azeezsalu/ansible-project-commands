1. create the ansible machine sg
    - ssh from ip

2. create the server sg 
    ssh from ansible sg
    http from port 80

3. launch the ansible-machine 
    amazon linux 2

4. create key pairs on the ansible-machine 
    ssh-keygen -t rsa -b 2048

5. import public key into the ec2 console
    ansible-pub-key

6. launch the servers
    key pair: ansible-pub-key
    sg: server-sg 

7. test connection 
    ssh private ip

8. install ansible on ansible-machine
    sudo yum update -y
    sudo amazon-linux-extras install ansible2 -y

9. create inventory file

10. create playbook

11. ansible all --key-file ~/.ssh/id_rsa -i inventory -m ping -u ec2-user

12. creat ansible.cfg file 
[defaults]
remote_user = ec2-user 
inventory = inventory 
private_key_file = ~/.ssh/id_rsa

13. run the ansible playbook
    ansible-playbook deploy-techmax.yml