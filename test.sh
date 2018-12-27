generate_post_data()
{
  cat <<EOF
{

     "topic": "test",
     "publisher": "test-service",
     "userId":1117,
     "meta": { "cmd": "JOINED", "service": "conference-service" },
     "data": { "eventId": {$1}, "MyKey": {$2} }

}
EOF
}
################# WORKING ###################

: '
curl -i \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-H "UserID:1007" \
-X GET --data "$(generate_post_data)" "http://ec2-54-188-163-61.us-west-2.compute.amazonaws.com:8008/v1/events"
'

curl -i \
-H "Content-Type: application/json" \
-H "UserID: 1007" \
-X POST --data "$(generate_post_data)" "http://10.0.3.200:8008/v1/events"

