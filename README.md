# 자동 XSS 정찰 및 취약점 찾기 :smiling_imp:
XSS 취약점을 찾기 위한 Endpoint와 Subdomain을 자동으로 찾고, XSS 취약점을 확인해요.

## 사용목적
Bug Bounty Program을 더욱 더 적극적으로 참여할 수 있도록 만들었어요.

## 주의 :exclamation:
**:boom: 악의적인 목적이나 부주의하여 이용할 시 발생할 수 있는 법적인 책임은 모두 본인에게 있습니다. :boom:**
- 많은 트랙픽이 발생할 수 있어요.

## 사용법
### 설치
### **Linux**  
설치를 위해서 Go를 설치해야해요.  
[Go 설치](https://go.dev/doc/install)  
  
  
설치를 위해서 Python을 2.x, 3.x 버전이 필요해요.
```
apt-get install python3
apt-get install python2.7
apt-get install python-pip
apt-get install python3-pip
```

사용필요한 Tool 들을 자동으로 설치해줘요.
```
git clone github.com/haule21/AutoRecon
cd AutoRecon  
./autoInstall.sh
```

### 정찰
 :exclamation: 많은 트래픽이 발생할 수 있어요.
```
cd AutoRecon/Scripts/XSS
# Subdomain 및 Endpoint를 찾고 싶은 도메인을 입력해 주세요.
./recon.sh example.com
```
__AutoRecon/Datas__ 폴더로 이동하면 __exmaple.com__ 이름으로 폴더가 생성이 되었을거예요.  
해당 도메인의 Subdomain들이 .txt 파일에 저장되어 있어요.
  
**:exclamation: 여러 Tool로 Subdomain을 찾아 중복 데이터가 많을 수 있어요. :exclamation:** 

### 취약점 찾기
 정찰을 먼저 마치고서 진행해야 해요.  
**:exclamation: 실제 XSS 취약점을 찾기위해 트래픽이 발생해요. :exclamation:**
```
cd AutoRecon/Scripts/XSS

# 해당 파일 URL에서 필터 되지 않는 문자가 있는지 확인해주어요.
./usekxss.sh example.com

# 해당 파일 URL에서 parameter를 찾아주어요.
./useParamSpider.sh ../../Datas/example.com/example.com_host_subs.txt
```

### 정찰&취약점 찾기 자동
정찰과 취약점 검증을 자동으로 진행해주어요.
```
cd AutoRecon/Script/XSS
./totalCommand.sh example.com
```



