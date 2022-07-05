#!/bin/sh

if [ ! "$1" ]; then
  echo you didn\'t provide a solid template name
  exit
fi

if [ "$(ls -A)" ]; then
  echo project directory is not empty
  exit
fi

templates="js ts ts-minimal ts-unocss ts-windicss ts-router ts-bootstrap ts-tailwindcss ts-sass js-vitest ts-vitest ts-uvu"

for template in $templates
do
  if [ "$1" == "$template" ]; then
    svn export https://github.com/solidjs/templates.git/trunk/"$1"
    for file in $1/* $1/.[!.]* $1/..?*
    do
      if [ -e "$file" ]; then mv -- "$file" ./; fi
    done
    rm -rf $1
    chown -R node /home/node/app
    echo
    echo "solid-$1 template was scaffolded successfully"
    echo
    echo "run:"
    echo "    \`docker compose run npm install\` to install dependencies"
    echo "    \`docker compose run npm start -- --host\` to run the server"
    echo
    exit
  fi
done

echo invalid template name
