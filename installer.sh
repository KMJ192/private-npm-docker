#!/bin/bash

if [ $# -eq 0 ]; then
  echo "파라미터가 전달되지 않았습니다."
elif [ $# -eq 1 ]; then
  docker build -t $1 .
  docker run -d -p 4873:4873 $1
else
  echo "전달된 파라미터가 너무 많습니다. 도커 이름은 하나만 입력해주세요."
fi
