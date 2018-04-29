
pip_update() {
  pip install -U $(pip freeze | sed -e 's/==.*//g')
}

note_push() {
  rsync -avu --exclude=.DS_Store Documents/notes server:/data/documents/
}

note_pull() {
  rsync -avu server:/data/documents/notes Documents/
}
