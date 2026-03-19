#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
  PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
  echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
  echo "$DIR does not exist on this system"
 fi
done

# Check if Git's config file exists and print its permissions
echo "----------------------"
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
  GIT_PERMS=$(ls -ld $GIT_CONFIG | awk '{print $1, $3, $4}')
  echo "Git config ($GIT_CONFIG) exists."
  echo "Permissions/Owner: $GIT_PERMS"
else
  echo "Git config ($GIT_CONFIG) does not exist."
fi
