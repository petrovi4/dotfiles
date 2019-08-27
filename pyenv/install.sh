# Установка менеджера версий для Питона
# А затем сразу ставим последнюю версию Питона третей ветки
# Если нужно, можно добавить и версию второй ветки

if test "$(uname)" = "Darwin"; then 
	echo "› Installing pyenv ..."
	
	brew install pyenv

	pyenv install 3.7.4
	pyenv global 3.7.4
fi
