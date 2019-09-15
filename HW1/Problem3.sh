touch "./permissions.out"
chmod 44 "./permissions.out"
stat "./permissions.out" | grep -Eo "File: .+\.out||Access: \(.+?\)"
echo "Done."
