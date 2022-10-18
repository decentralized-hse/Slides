[comment]: # (THEME = night)

#   GIT и системы контроля версий

----

![bg fit](media/backdoor.png)

----
##  Обстоятельства

 1. очень распределённый процесс разработки, 
 2. очень высокие ставки ([supply chain attack][a]),
 3. очень большой массив кода,
 4. нет изоляции ([Таненбаум предупреждал][t]).

[a]: https://lwn.net/Articles/57135/
[t]: https://en.wikipedia.org/wiki/Tanenbaum%E2%80%93Torvalds_debate

----
### Prior art

![bg right](media/linus-scale.png)

 1. tarballs
 2. [CVS][c], [SVN][s]
 3. [BitKeeper][b]

[s]: http://subversion.apache.org
[b]: http://www.bitkeeper.org
[c]: https://www.nongnu.org/cvs/ 

----
### Внутреннее устройство
![bg right fit](media/gitca.png)

 1. [blobs][o]
 2. trees
 3. commits

[o]: https://git-scm.com/book/en/v2/Git-Internals-Git-Objects

----
### Persistent data structures

![bg right:60% fit](media/persistent.png)

 1. partially
 2. fully
 3. confluently

----
### Меркелевы деревья

![bg right:60% fit](media/merkel.png)

 1. хэш-функции
 2. деревья М.
 3. Merkle DAG

----
### Deltas and snapshots

![bg right fit](media/weave.png)

 1. snapshots
 2. patches/diffs/deltas
 3. weaves

----
### Myers

![bg fit](media/myers.gif)

----
### Workflow

![bg fit](media/workflow.png)

----
### Complexity 

![bg fit](media/sloc.png)

----
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


