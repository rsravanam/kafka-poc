generate_post_data()
{
cat <<EOF
{
     "topic": "test",
     "publisher": "test-service",
     "userId":1117,
     "meta": { "cmd": "JOINED", "service": "conference-service" },
     "data": { "eventId": "1234560982347", "MyKey": "qwertsfasdfxfdsfgfdhgsfh" }
}
EOF
}
################# WORKING ###################

curl -i \
-H "Content-Type: application/json" \
-H "UserID: 1007" \
-X POST --data "$(generate_post_data)" "http://localhost:8008/v1/events"
