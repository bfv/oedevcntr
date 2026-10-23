
while true; do
	read -p "Project name: " PROJECT_NAME
	if [ -z "$PROJECT_NAME" ]; then
		continue
	fi
	case "$PROJECT_NAME" in
		*" "*)
			printf 'Project name must not contain spaces.\n' >&2
			;;
		*)
			break
			;;
	esac
done

if grep -q '^PROJECT_NAME=' .devcontainer/.env; then
	sed -i "s|^PROJECT_NAME=.*|PROJECT_NAME=${PROJECT_NAME}|" .devcontainer/.env
else
	printf '\nPROJECT_NAME=%s\n' "$PROJECT_NAME" >> .devcontainer/.env
fi

source .devcontainer/.env
sed -i "s|DevContainer_Template|${PROJECT_NAME}|g" .devcontainer/devcontainer.json
sed -i "s|DevContainer_Template|${PROJECT_NAME}|g" openedge-project.json

echo "set PROGRESS_CFG on hosts or in .devcontainer/.env"
echo "Project initialized with name: $PROJECT_NAME"