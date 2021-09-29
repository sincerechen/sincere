##### 文件标注

```
git blame -L start,end filename
```

##### 二分查找

``` 
git bisect start
git bisect bad
git bisect good commitid
git bisect reset
```

##### 搜索

```
git grep -n val
git grep -p func *.c //显示func所在的函数
git grep --break --heading \
    -n -e '#define' --and \( -e LINK -e BUF_MAX \) v1.8.0
```

##### 日志搜索

```
git log -S VAL --oneline //查找某变量什么时候被引入的
git log -L :func:filename //查找某函数的变更历史
```

##### 暂存补丁

```
git add -p //暂存文件的特定部分
git cat-file -p HEAD
git ls-tree -r HEAD
```

##### 打包

```
git bundle create repo.bundle HEAD master
git clone repo.bundle repo
git bundle verify ../repo.bundle
```

#### repo

```
repo forall -c 'commitId = `git log --before "2021-05-08 12:00" -1 --pretty=format:"%H"`;git reset --hard $commitId'
```

