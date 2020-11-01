#!/bin/bash
for dir in $(find gitlab -maxdepth 2 -mindepth 2 -not -name .gitkeep)
do
  sudo rm -rf $dir
done

for dir in $(find gitlab-runner -maxdepth 2 -mindepth 2 -not -name .gitkeep)
do
  sudo rm -rf $dir
done

touch gitlab-runner/config/config.toml
