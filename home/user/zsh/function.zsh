
pip_update() {
  pip install -U $(pip freeze | sed -e 's/==.*//g')
}
