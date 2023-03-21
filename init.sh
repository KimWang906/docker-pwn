sudo docker build --network host -t pwn_ubuntu-20.04:0.0 `pwd`
sudo docker run -v $(pwd)/pwn:/home/system-hacking --name pwn_ubuntu --security-opt seccomp=unconfined --net host -i -t pwn_ubuntu-20.04:0.0
