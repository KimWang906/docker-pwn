sudo docker build --network host -t pwn_ubuntu-20.04:0.0 `pwd`
sudo docker run -v $(pwd)/pwn:/home/system-hacking --net host -i -t pwn_ubuntu-20.04:0.0
