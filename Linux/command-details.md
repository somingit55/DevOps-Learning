## Linux Commands with Details:

#### ubuntu@ip-172-31-11-153:~$
#### root@ip-172-31-11-153:~#


- **ubuntu** - You login as username ubuntu
- **@**      - It separates the user and coumputer hostname
- **ip-172-31-11-153**  -  Hostname of the machine, It is a private ip of machine of aws ec2
- **:**  - Separation between hostname and current directory
- **~**  - Current User's directory
- **$**  - This means you are using terminal as a normal user, and you have limited access.
- **#**  - This means you are using terminal as a root user, and you have admin access.
- **root** - you login as root user

#### .  ..  .bashrc  .profile  Documents

- **.**  Current folder where you are working or inside
- **..** Parent folder, The directory one level above (pehle upar) the current directory.
- **.bashrc** If the filename start with Dot the it is a Hidden file
- **.profile** Hidden File
- **Document** Normal folder

#### pwd
- Present working directory,Displays the current working directory.

#### cd
- Changes the current directory.

#### ls
- Show Lists files and directories in current folder.

#### cd <foldername>
-Changes the current directory.

#### cd /home
- Changes the current directory to /home.

#### cd ..
- Moves to the parent (one step backward) directory. if you are in this /home/ubuntu/Documents after command you will here /home/ubuntu

#### ls -a
- Lists all files, including hidden files.

#### ll
- Commonly an alias for ls -l with showing deatiled information like, permissions, owner, size aur modification date.

#### whoami
- Displays the current username.

#### sudo -i
- Opens an interactive login shell as the root user. You can use commands as admin level.

#### history
- Displays previously executed commands.

#### clear
- Clears the terminal screen.

#### logout
- Logs out from the current login shell.

#### exit
- Exits the current shell.

#### mkdir
- Creates a new directory.

 #### mkdir -p my-website/car-dekho
 - you can crate nested folders using above commands.

 #### vim
 - Vim is a text editor used to create and edit files in Linux.

 - **i** Goto insert mode
 - **ESC** Goto normal mode
 - **:w** save the files
 - **:q** Exit from the editor
 - **:wq** Save the content and exit from the editor
 - **:q!** Without saving files and exit from editor

 #### cat 
 - Used to display, combine, and create file content.
 - Used -n for line numbers after cat

 #### cp
 - Used to copy files and directories from one location to another.
 - cp source destination 

 #### less
 - 
