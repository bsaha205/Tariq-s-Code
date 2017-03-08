myname=$(head -n 1 name.txt)
ssh "$1" << EOF
echo "$myname""namenode">initiator.txt
./slavetask.sh
EOF
exit
