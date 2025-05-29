#!/bin/bash

echo "=== Версія ОС ==="
cat /etc/os-release | grep PRETTY_NAME

echo ""
echo "=== Користувачі з Bash shell ==="

grep "/bin/bash" /etc/passwd | cut -d: -f1

echo ""
echo "=== Відкриті порти ==="

sudo netstat -tuln | grep LISTEN
