git filter-branch -f --commit-filter '
  if [ "$GIT_AUTHOR_NAME" = "old_name" ];
  then
    GIT_AUTHOR_NAME="new_name";
    GIT_AUTHOR_EMAIL="new_email";
    git commit-tree "$@";
  else
    git commit-tree "$@";
  fi' HEAD
