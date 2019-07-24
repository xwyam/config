
pip_update() {
  pip install -U $(pip freeze | sed -e 's/==.*//g')
}

search_build() {
    grep "$1" . -rn --color --include='Makefile'
    grep "$1" . -rn --color --include='*.mk'
    grep "$1" . -rn --color --include='*.sh'
}

search_source() {
    grep "$1" . -rn --color --include='*.c'
    grep "$1" . -rn --color --include='*.h'
}

