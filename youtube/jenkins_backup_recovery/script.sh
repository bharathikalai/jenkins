#!/bin/bash
set -e

export AWS_ACCESS_KEY_ID="your aws key"
export AWS_SECRET_ACCESS_KEY="your secrt key"


# Define your backup directory and filename
BACKUP_DIR="/tmp/jenkins_backup_$(date +%Y%m%d)"
JENKINS_HOME="/var/lib/jenkins"
BACKUP_FILENAME="jenkins_backup_$(date +%Y%m%d).tar.gz"
S3_BUCKET="jenkins-backup-bkbharathi"

# Create the backup directory
mkdir -p "$BACKUP_DIR"

# Copy necessary directories and files
cp -r "$JENKINS_HOME/jobs" "$BACKUP_DIR/"
cp -r "$JENKINS_HOME/config.xml" "$BACKUP_DIR/"
cp -r "$JENKINS_HOME/credentials.xml" "$BACKUP_DIR/"
cp -r "$JENKINS_HOME/plugins" "$BACKUP_DIR/"
cp -r "$JENKINS_HOME/users" "$BACKUP_DIR/"
cp -r "$JENKINS_HOME/secrets" "$BACKUP_DIR/"

# Compress the backup
tar -czvf "/tmp/$BACKUP_FILENAME" -C "$BACKUP_DIR" .

# Upload to S3
aws s3 cp "/tmp/$BACKUP_FILENAME" "s3://$S3_BUCKET/$BACKUP_FILENAME"

# Optional: Clean up
rm -rf "$BACKUP_DIR"
rm -f "/tmp/$BACKUP_FILENAME"

echo "Jenkins backup completed and uploaded to S3 successfully!"
