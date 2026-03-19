# The Open Source Audit — Git

## 👨‍🎓 Student Details
**Name:** [Your Name]  
**Registration Number:** [Your Registration Number]  

## 📖 Project Description
Welcome to my capstone project! I decided to focus on **Git** for this assignment. Git is a distributed version control system that pretty much runs the modern software world. I chose it because even though I use it practically every day to save my code, I don't think I ever really appreciated *how* it works or the philosophy behind it. It's a perfect example of how open-source developers scratching their own itch can end up changing how everyone collaborates.

This repository contains five shell scripts that demonstrate different Linux concepts we've learned, all tied back to checking out our system and understanding FOSS (Free and Open Source Software).

## 🛠️ Scripts Overview

Here's a quick rundown of what each script does:

1. **`system_identity.sh`**  
   It prints out a bunch of info about the current Linux machine (like the distro, kernel, and uptime) and includes a quick note about the GPL license. It mostly uses bash variables and command substitution to format everything nicely.

2. **`package_inspector.sh`**  
   Checks if Git is installed using `dpkg` and prints out some details if it is. It uses `if-else` blocks and a `case` statement to share fun facts about different popular open-source projects.

3. **`disk_auditor.sh`**  
   Loops through main system folders like `/etc` and `/var/log` to check their size, permissions, and who owns them. It also tries to find where the `~/.gitconfig` file is located using a `for` loop and handy tools like `awk` and `cut`.

4. **`log_analyzer.sh`**  
   A practical tool that scans any log file for a specific keyword (it defaults to searching for "error" if you don't provide a word). It uses a `while-read` loop to count occurrences and spits out the last 5 matches so you can see what went wrong.

5. **`manifesto_generator.sh`**  
   An interactive script that asks the user three questions about what they think about software, and turns their answers into a personalized "open-source manifesto" text file. It also slaps today's date on it and displays the final output on the screen.

## 🚀 How to Run the Scripts

To run these on your own machine, you'll need to make them executable first. Open up your terminal and follow these steps:

1. Give execution permission to all the shell scripts:
   ```bash
   chmod +x *.sh
   ```
2. Run whichever script you want by typing `./` right before the script name. For example:
   ```bash
   ./system_identity.sh
   ```
   *(Note: For the log analyzer, you have to tell it which file to read, like this: `./log_analyzer.sh /var/log/syslog fail`)*

## 🖥️ Requirements
* A Linux-based operating system (I tested these on an Ubuntu virtual machine)
* The Bash shell
* Standard utilities installed (like `awk`, `grep`, `dpkg`, and `cut`)

## 📋 Sample Output 
Here is a quick example of what `system_identity.sh` looks like when you run it:
```text
===================================================
       Welcome to My Open Source Audit
===================================================

Here's what this system looks like under the hood:
Distro Info   : Ubuntu 22.04.3 LTS
Kernel Version: 5.15.0-88-generic
Logged in as  : student
Home folder   : /home/student
Uptime        : up 2 hours, 15 minutes
```

## 🎯 Conclusion
Working on these scripts really helped me get more comfortable with the Linux command line. Before this, writing a bash script felt super intimidating, but breaking things down into variables, loops, and conditional statements made it click. I also learned that you don't always need to build complex software to do cool things—stringing together simple commands like `grep` and `awk` is incredibly powerful for automating boring tasks.
