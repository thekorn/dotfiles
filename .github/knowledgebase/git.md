# git

## delete all merged git branches locally

```sh
$ git branch -d $( git branch --merged | grep -v '^\*' | grep -v 'master' | grep -v 'main' )
``` 

## delete all merged git branches on the remote

Before running the command you might want to make sure that your local cache is pruned and in sync with the remote state
```sh
$ git fetch -p origin
```

then run
```sh
$ git branch -r --merged | grep -v master | grep -v main | sed 's/origin\///' | xargs -n 1 git push --delete origin
```