code="/home/szujek/code/"

start_vp2_tiger() {
  (
  cd ${code}PulsateVolumePushDelivery || exit
  eb scale 1 VPC-VP2-tiger
  ) && (
  cd ${code}PulsatePushDataSync || exit
  eb scale 1 VPC-PDS-tiger
  )
}

stop_vp2_tiger() {
  (
  cd ${code}PulsateVolumePushDelivery || exit
  eb scale 0 VPC-VP2-tiger
  ) && (
  cd ${code}PulsatePushDataSync || exit
  eb scale 0 VPC-PDS-tiger
  )
}

get_vp2_logs_tiger() {
  (
  cd ${code}PulsateVolumePushDelivery || exit
  eb logs VPC-VP2-tiger
  )
}

start_tiger_cms() {
  aws ec2 start-instances --region eu-west-1 --instance-ids i-377eb8bd
}

stop_tiger_cms() {
  aws ec2 stop-instances --region eu-west-1 --instance-ids i-377eb8bd
}
