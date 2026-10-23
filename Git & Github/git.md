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
- -c — Creates a new branch.
- .  — Represents the current directory and its eligible changes.
- origin — The conventional nickname for a remote repository.
- main — The name of the Git branch.
- git commit -a -m "message" — Automatically stages and commits changes to already-tracked files, but does not include new untracked files.
- git push — Uploads local commits to a remote repository, such as GitHub.
- git pull — Downloads and integrates changes from a remote repository into your current local branch.

### Creating New Branch on Github

#### git switch -c branch-name
- You are creating new branch dev and switching also → Create + Switch

#### git switch branch-name
- You can only switch branch 

#### git branch
- List of Branches
- * dev (*) means currently you are in dev branch 
- main

#### git branch --show current
- Only Shows current working branch

### Currently I am working in "dev" Branch all works add , commit , push , Pull Request (PR), merge from this branch to another "main" branch

- git branch --show current
- git status
- git add .
- git commit -m "Commit Message"
- git push origin dev

- Note: I have saved all my work on dev branch & pushed it to the dev branch on Github

### Now we will merge "dev" into "main" branch

## Now How can I merge Dev and Main Branch on Github listed below:

- Goto github current repository create Pull Request (PR) & New Pull Request
- Select branches: Base->> main   Compare->> dev
- Click on create Pull Request & Set Title , Name & Description
- Click on Merge Pull Request & Confirm Merge Request
#### git switch main
- Switching branch into main
#### git pull origin main
- Fetches the latest changes from the remote GitHub main branch and integrates them into your current local branch.
