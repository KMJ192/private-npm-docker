# private-npm-docker

### 사설 NPM 설치

- docker + verdaccio를 이용한 npm repository 생성

### 설치 방법

- sh 파일을 실행하여 docker image 생성 및 컨테이너를 실행한다.

```
sh installer.sh <repository-name>
```

### 설치 환경

##### npm

```
npm set registry <NPM-repository-address>:4873/
```

##### yarn

```
yarn config set registry <NPM-repository-address>:4873/
```

##### yarn berry

- .yarnrc.yml 파일에 다음의 내용을 추가한다.

```
npmRegistryServer: "<NPM-repository-address>:4873/"

unsafeHttpWhitelist:
  - <NPM-repository-address>*
```
