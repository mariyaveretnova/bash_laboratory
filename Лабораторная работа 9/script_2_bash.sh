REMOTE_SERVER="user@192.168.0.8"
THRESHOLD=80
EMAIL="your_email@example.com"
SUBJECT="Уведомление: Диск почти заполнен"
BODY_FILE="/tmp/disk_alert_body.txt"

DISK_USAGE_CMD="df -h / | awk 'NR==2 {print \$5}' | sed 's/%//g'"
DISK_USAGE=$(ssh $REMOTE_SERVER $DISK_USAGE_CMD)
echo "Использование диска: $DISK_USAGE%"

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    mail -s "$SUBJECT" "$EMAIL" < $BODY_FILE
fi