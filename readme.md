# System Hacking - Learning

이 리포지토리는 "해킹, 공격의 예술"이라는 책과 각종 pwn 지식을 정리하는 리포지토리입니다.

## Ready

현재 **`디렉터리(/system-hacking)`** 에 들어온 후 다음 명령을 실행해야 합니다.

* Script init

```sh
chmod +x init.sh
./init.sh
```

또는 아래와 같이 직접 설정할 수 있습니다.

* Docker init

```sh
docker build --network host -t pwn_ubuntu-20.04:0.0 `pwd`
```

* Docker run

```sh
docker run -v $(pwd)/pwn:/home/system-hacking --net host -i -t pwn_ubuntu-20.04:0.0
```

* Docker start

```sh
docker exec -it pwn_ubuntu-20.04:0.0 /bin/bash
```

* Container 삭제

```sh
docker -f rm pwn_ubuntu-20.04
```

* 모든 Container 삭제 **(위험)**

```sh
docker rm -f $(docker ps -a -q)
```

## Tools

* Pwngdb
* tmux
* vim
* git
