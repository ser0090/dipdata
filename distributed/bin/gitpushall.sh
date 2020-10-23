#!/bin/bash

set -x

DIR="$(dirname "$0")"

git remote | grep -v public | xargs -L1 git push --all

# Push public branch to public repo if exists
"$DIR/gitpushpublic.sh"

exit

echo -n "Actualizar web pages?[y]/n"
read resp

if [ -z "$resp" ] || [ "$resp" == "y" ]
then
    (cd ~/public_html/bigdata/curso/; git pull)
    unison
fi


tambien se puede

git remote add all origin-host:path/proj.git
git remote set-url --add all nodester-host:path/proj.git
git remote set-url --add all duostack-host:path/proj.git

git push all --all

pero dicen que "The only disadvantage is that it does not move remote heads. You need to run git fetch --all right after doing such push"
ver http://stackoverflow.com/questions/5785549/able-to-push-to-all-git-remotes-with-the-one-command
