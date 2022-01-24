[comment]: # (THEME = night)

#   GIT и системы контроля версий

[comment]: # (!!!)
![backdoor attempt](media/backdoor.png) <!-- .element: style="float:right; width: 100%;" -->

 1. очень распределённый процесс разработки, 
 2. очень высокие ставки (supply chain attack),
 3. очень большой массив кода,
 4. нет изоляции (Таненбаум предупреждал).

[comment]: # (!!!)

### Prior art

![gitca](media/linus-scale.png) <!-- .element: style="float:right; width: 50%;" -->
 1. tarballs
 2. CVS
 3. BitKeeper

[comment]: # (!!!)

### Внутреннее устройство
![gitca](media/gitca.png) <!-- .element: style="width: 80%;" -->

 1. blobs
 2. trees
 3. commits

[comment]: # (!!!)

### Persistent data structures

![persistent d.s.](media/persistent.png) <!-- .element: style="width: 50%; float: right;" -->

 1. partially
 2. fully
 3. confluently

[comment]: # (!!!)
### Меркелевы деревья

![merkel](media/merkel.png) <!-- .element: style="float:right; width: 50%;" -->
 1. хэш-функции
 2. деревья М.
 3. Merkle DAG

[comment]: # (!!!)

### Deltas and snapshots

![weave](media/weave.png) <!-- .element: style="float:right; width: 50%;" -->

 1. snapshots
 2. patches/diffs/deltas
 3. weaves

[comment]: # (!!!)

### Myers

![myers](media/myers.gif) <!-- .element: style="width: 70%;" -->

[comment]: # (!!!)

### Workflow

![workflow](media/workflow.png) <!-- .element: style="width: 80%;" -->

[comment]: # (!!!)

### Complexity 

![sloc](media/sloc.png) <!-- .element: style="width: 80%;" -->

[comment]: # (!!!)

### Практика 

````bash [1|2-3|4-5|6|7|8]
gpg --full-generate-key
git config --global user.email user@domain.com
git config --global user.name "Vasily Petrov"
git init
git clone https://github.com/decentralized-hse/Cirriculum.git
git add file
git commit -S -m 'short message'
cat .git/objects/xy/z | openssl zlib -d 
````

[comment]: # (!!!)

