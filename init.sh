

while true; do
	read -p "Project name: " PROJECT_NAME
	if [ -n "$PROJECT_NAME" ]; then
		break
	fi
done

if grep -q '^PROJECT_NAME=' .devcontainer/.env; then
	sed -i "s|^PROJECT_NAME=.*|PROJECT_NAME=${PROJECT_NAME}|" .devcontainer/.env
else
	printf '\nPROJECT_NAME=%s\n' "$PROJECT_NAME" >> .devcontainer/.env
fi

source .devcontainer/.env
sed -i "s|DevContainer Template|${PROJECT_NAME}|g" .devcontainer/devcontainer.json
