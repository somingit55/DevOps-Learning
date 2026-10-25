#### Linux commands with their uses

- How Linux organizes everything?
- What each major directory used for?
- How to remember them forever?
- Linix does not have seperate drives like windows C:\ D:\ E:\
- Linux has single starting point **/** Slash Root directory
- Everything becomes part of one tree **(/)** (Files,Folder,Application,Hard Drive,USB Drive)
- Everything Starts from root **(/)**

### / 
- Remember: **/** is the entire file system everything starts from here.

### /home
- Here user files are stored, everything related to your document.
- if user name is john then **/home/john** here you can store document, picture, project and everything else.
- Every **User** gets their own home directory like as **/home/user1,** **/home/user2,** **/home/user3**

### /root
- The root user's home directory
- This is not the root of the file system
- It simply the **home directory** of **Administrator** account
- Remember: **/** is the entire file system  **/** The Root   **/root** is just folder inside the Root file system

### /bin
- The word **bin** stands for **binaries**
- This folder contains essential command line programs that Linux needs to function.
- Commands like: **ls cp mv mkdir cat** and many other live here
- Think of **/bin** as the toolbox  that Linux to operate. Without these commands, the system would'nt be very useful

### /sbin
- The word **s** stands for **system**
- This folder contains administrative tools used for managing the operating system
- Commands for **networking, disk management, booting the system, system recovery** are commonly found here
- Most regular users don't use these commands everyday, but **System Administrators** certainly do

### /etc
- One of the most important folder in Linux **/etc**
- This is where Linux stores **configuration** files. Almost every application has a configuration file somewhere inside **/etc**
- Want to change **network settings, ssh settings, DNS settings** **/etc/network/interfaces, /etc/ssh/sshd_config, /etc/resolv.conf**
- Instead of storing configuration inside the application itself, Linux keeps mos settings here.
- A simple way to remember it is **/etc** is the settings folder for your entire operating system.

### /usr
- Many people assume it stands for user.
- It actually comes from **Unix System Resources**.
- This folder contains most of the software installed on your system **Applications, Libraries, Documentation, Development Tools, Shared Resources** all live here.
- **/usr/bin** contains thousands of executable programs.
- Think of **/usr** as the main software library of your Linux machine.
- Applications also need shared code thats where **/lib** comes in.
- Libraries are reusable pieces of code that many applications share.
- Instead of every program including the same code repeatedly, Linux stores common funtionality in shared Libraries.
- This save **Disk Space** and makes updates much easier.
- You can think of Libraries as shared building blocks that applications borrow whenever they need them.

### /tmp
- Now Let's look at where Linux stores temporary files **/tmp**.
- As the name suggests, this directory is used for temporary data.Applications create files here while they are running.
- Many Linux systems automatically clean this directory during reboot.So don't store anything important inside **/tmp** unless you are okay with losing it.

### /var
- The word **var** stands for **variable**.
- Unlike application software, which rarely changes, this folder contains files that constantly grow and change.
- Things like **system logs, application log, email queues, databases, printer queues and cache files**.
- Whenever you are troubleshooting **Linux** **/var/log** is one of the first places you will check because it contains log files that explain what sytem has been doing.

### /media
- Suppose you plug in a USB Drive, Where does it appear? Usually inside directories like **/media** or **/mnt**
- The **/media** directory is commonly used for automatically mounted devices such as **USB Drives and DVDs**
- The **/mnt* is often used by administrators when manually **mounting disks, network shares, other storage** devices.
- This is another major difference from window Instead of assigning drive letter Linux simply sttaches a new storage somewhere within the existing directory tree.

### /dev
- In Linux everything is treated as a file. **Hard Drives, USB Devices, Keyboard, Mice, Printers, even terminals** they all appear as file inside **/dev**
- For example, your hard disk might appear as **/dev/sda**. This design allow program to interact with hardware using the same file-based interface they use for regular files.
- It is one of the reasons Linux is so flexible.

### /proc
- It is a virtual file system created by the Linux Kerne.It cantains live informations of running processes, CPU usages, memory, system configuration, and much more.
- Whenever monitoring tools need information about your system, they often read it from **/proc**

### /boot

- Think of it as a live dashboard of whats happenning inside Linux right now.There also **/boot**
- As the name suggests this folder contains everything needed to start Linux. The **Linux Kernel, Boot loader files and startup configuration files** all live here.
- Without these files your operating system would not be able to boot.

#### Don't memorise names group them by purpose

- **User Files** - /home
- **Programs**   - /bin /sbin /usr
- **Configuration Files** - /etc
- **Shared Libraries** - /lib
- **Logs and Changing Data** - /var
- **Temporary Files** - /tmp
- Hardware Devices** - /dev
- **System Information** - /proc
- **Boot Files** - /boot
- **External Storage** - /media /mnt

