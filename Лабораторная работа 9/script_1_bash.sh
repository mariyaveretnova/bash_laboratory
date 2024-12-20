REMOTE_USER="user"
REMOTE_HOST="192.168.0.8"
REMOTE_DIR="/path/to/remote/directory"
ARCHIVE_NAME="backup_$(date +%Y%m%d).tar.gz"
LOCAL_DIR="f:/example"
ssh "$REMOTE_USER@$REMOTE_HOST" "tar -czf /tmp/$ARCHIVE_NAME -C $(dirname "$REMOTE_DIR") $(basename "$REMOTE_DIR")"
mkdir -p "$LOCAL_DIR"
scp "$REMOTE_USER@$REMOTE_HOST:/tmp/$ARCHIVE_NAME" "$LOCAL_DIR/"
ssh "$REMOTE_USER@$REMOTE_HOST" "rm /tmp/$ARCHIVE_NAME"
tar -xzf "$LOCAL_DIR/$ARCHIVE_NAME" -C "$LOCAL_DIR"
