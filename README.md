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

Configure your ~\.bashrc showing working current branch:
paste following lines into ~\.bashrc 
```
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
```
![image](https://user-images.githubusercontent.com/15163807/157628447-bed026c9-2240-479f-89dd-93c61830b82b.png)


```
 git config --global user.email "you@example.com"
 git config --global user.name "Your Name"
 git config --global init.defaultBranch main
 git clone git@github.com:tomisboy/aws-testing.git
```
## Working with this Repo regarding GitHub Actions
for every new deployment you have to create an separate branch.
**It is not advisable to push directly in to main branch**
`git branch -m newsubnet`
make changes in (terraform) files 
```
git add .
git commit -m "new subnet added"
git push -u origin newsubnet
```
### Create Pull Request in Dasboard:
![image](https://user-images.githubusercontent.com/15163807/157630516-7fcd2ba9-3aa9-41a0-802d-3405074d005b.png)

and look in the comments for the GitHub action bot testing the new code:
![image](https://user-images.githubusercontent.com/15163807/157631011-9ed5cc99-18e2-44cc-8283-de9fa900bad4.png)

**merge and delete** this branch.
GitHub action will apply the new configuration with terraform apply 
![Uploading image.png…]()
