# ref) https://wlsdn3004.tistory.com/14
k -n workspace delete pods --grace-period=0 --force

# mac 에서 strace 보기 
## dtrace 설치 되어 있음 (sudo 로 사용 해야 함.)
# sudo dtruss -p $(docker ps | grep 'busybox' | cut -f 1 -d ' ' | xargs docker inspect | jq '.[].State.Pid')
-> 안보임

# 컨테이너가 sigterm 시그널을 받으면 트래픽을 계속 받는건가?
# hpa 붙여서 스케일 인 아웃 할때에 그레이스 피리어드 타임 동안 동작 하는지 확인

# trap command signals_list
# 다음은 INT 시그널이 발생할 경우 rm test.txt를 지우는 쉘 스크립트.
$ trap "rm test.txt" 2
# 다음은 ALRM 시그널이 발생할때마다 쉘의 HISTORY 변수 이름을 가지는 파일을 특정 파일에 저장하는 일을 하는 스크립트다. 
# 로그인한 사용자가 이전에 어떤 작업을 했는지 그 내용을 남기고자 할 때 유용하게 사용할 수 있을 것이다.
$ trap 'cp $HISTFILE $HOME/old_hist.bak; exit' ALRM