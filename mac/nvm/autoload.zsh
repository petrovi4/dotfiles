echo "$(date +"%H:%M:%S:%s") HERE0"

load_nvm () {
	[ -s "$BREW_NVM_DIR/nvm.sh" ] && . "$BREW_NVM_DIR/nvm.sh"
}

declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")
for cmd in "${NODE_GLOBALS[@]}"; do
	eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done
