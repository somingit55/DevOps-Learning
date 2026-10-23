### When you will create a folder first time on your Local VS Code or anywhere

- firstly create Readme and .gitignore files on your root folder /DevOps learning
- After you need to initialize your local folder add & commit it from below commands
- Go inside the local folder and run below commands

#### git init
- Initializes a new Git repository in the current folder

#### git branch -M main
- Renames the current branch to main

#### git add .
- Stages all eligible changes in the current directory for the next commit.

#### git commit -m "Initial commit"
- Saves a snapshot of the staged changes with a commit message.

#### git remote add origin https://github.com/somingit55/DevOps-Learning.git
- Adds a remote repository named origin linked to the specified GitHub URL.

#### git push -u origin main
- Uploads the local main branch to GitHub and sets its upstream tracking branch.

#### git status
- Shows the current state of your working directory and staging area, including untracked, modified, and staged files.

#### git remote -v
- Displays the URLs of the remote repositories configured for your local Git repository.

#### Flags and Symbols
- -M — Forcefully renames the current branch.
- -v — Stands for verbose, which displays the remote URLs for fetching and pushing.
- -m — Specifies the commit message.
- -u — Sets the upstream tracking branch for future push and pull commands.
- .  — Represents the current directory and its eligible changes.
- origin — The conventional nickname for a remote repository.
- main — The name of the Git branch.
- git commit -a -m "message" — Automatically stages and commits changes to already-tracked files, but does not include new untracked files.
- git push — Uploads local commits to a remote repository, such as GitHub.
- git pull — Downloads and integrates changes from a remote repository into your current local branch.