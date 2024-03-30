echo 'Starting up'; 
trap 'echo Received Terminating signal' QUIT; 
trap 'echo Received TERM signal' TERM; 
while true; 
do 
  echo $(date) 'Hello, World!';
  sleep 1;
done