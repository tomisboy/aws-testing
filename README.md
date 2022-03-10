# How to Work

Linux (Ubuntu) with terraform, aws and git installed

## Connection to Linux
1) Use [pageant ](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) as a ssh-agent and import your private Key

![image](https://user-images.githubusercontent.com/15163807/157621050-5ab2c0ab-f657-43ac-bbf6-3ed62c8d382e.png)

2) ssh into linux host and check your ssh-key with `ssh-add -l`

![image](https://user-images.githubusercontent.com/15163807/157621338-d58a8cb8-c734-497f-8d7e-c196be97b582.png)


## GIT Config
check if git version is git >= 2.28 to set default branch to main instead of master
If version does not match update your git --> 
```sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git --version
```
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git config --global init.defaultBranch main


git clone git@github.com:tomisboy/aws-testing.git
```
