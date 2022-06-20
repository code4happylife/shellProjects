docker  exec -it d00c7388e913 /bin/bash
docker  exec -it d00c7388e913 /bin/bash
docker  ps
docker  restart d00c7388e913
docker  exec -it d00c7388e913 /bin/bash
docker  ps
docker  inspect d00c7388e913
docker  ps
docker  exec -it d00c7388e913 /bin/bash
docker  exec -it d00c7388e913 /bin/bash
docker  info
# docker /daemon.json
docker 
docker  ps
docker  ps -a\
docker  ps -a
docker  start systemctl restart 
docker  start d00c7388e913
docker  ps
docker  rm 38beba247259
docker  ps
docker  ps -a
docker  pull ubuntu
docker  images
docker  run -itd ubuntu /bin/bash
docker  ps
docker  exec -it 03cc4bb2d5a7 /bin/bash
docker  pull python:3.8-alpine
docker  images
docker  image ls
docker  images
docker  rmi python:3.8-alpine 
docker  run ubuntu:latest /bin/echo "hello world"
docker  ps
docker  ps -a
docker  run ubuntu:latest /bin/echo "hello world"
docker  ps -a
docker  container ls -a
docker  ps -a
docker  logs e5f79fd7cbe9
docker  ps
docker  exec -it 03cc4bb2d5a7 /bin/sh
docker  exec -it 03cc4bb2d5a7 /bin/bash
docker  pull ubuntu
docker  run -i ubuntu:latest
docker  ps -a
docker  run -it ubuntu:latest /bin/bash
docker  exec -it 03cc4bb2d5a7 /bin/bash
docker  run redis
docker  run redis:alpine
docker  ps -a
docker  run -d redis:alpine
docker  ps
docker  exec -it d71d14f8128f /bin/bash
docker  run -it -e VIP=TEST ubuntu /bin/bash
docker  run --name test12 redis:alpine
docker  run -d --name test12redis redis:alpine
docker  ps
docker  run -d --rm  --name test12redisdc redis:alpine
docker  ps
docker  stop e15231226ec5
docker  ps -a
docker  run -it --rm ubuntu:latest /bin/bash
docker  ps
docker  ps -a
docker  run -it --rm ubuntu:latest /bin/bash
docker  run -it --restart=always --rm ubuntu:latest /bin/bash
docker  run -d --restart=always  redis-alpine
docker  run -d --restart=always  redis:alpine
docker  ps
docker  stop 1a7e62d195ea
docker  ps
docker  ps
docker  ps
docker  ps -a
docker  inspect 1a7e62d195ea
docker  inspect 1a7e62d195ea| grep Restart
docker  inspect 1a7e62d195ea| grep Restart -C 5
docker  start 1a7e62d195ea
docker  ps
docker  top 1a7e62d195ea
docker  ps
docker  ps
docker  run -d --restart=always --name dctest redis-alpine
docker  run -d --restart=always --name dctest redis:alpine
docker  ps
docker  top dctest
docker  ps
docker  run -d --name dctest_redis -p 3000:6379 redis:alpine
docker  ps
docker  exec dctest_redis
docker  exec dctest_redis /bin/sh
docker  exec  -it dctest_redis /bin/sh
docker  pull ubuntu:18.04
docker  run -itd ubuntu:18.04 /bin/echo "hello world"
docker  run  ubuntu:18.04 /bin/echo "hello world"
docker  pull redis:alpine
docker  run -itd --name dctest_for_redis -p 5555:6379 redis:alpine
docker  ps | grep dctest_for_redis
docker  exec -it dctest_for_redis /bin/bash
docker  exec -it dctest_for_redis /bin/sh
