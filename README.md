Basic Shell Scripting with Vim: Disk Space, File Management, and RAM Monitoring
Welcome to the Basic Shell Scripting repository! This project is designed for anyone wanting to get started with shell scripting in a Linux environment, covering the basics of loops, functions, and scripted automation. The scripts are written to be simple yet effective for system administration tasks, such as disk space monitoring, file archiving, and RAM monitoring.

Getting Started
Before diving into the scripts, ensure you have Vim installed on your system. Vim is a powerful text editor for efficiently creating and editing scripts in the command line. 

If you're new to Vim, here are a few essential commands to get started:
Basic Vim Commands
i - Switch to insert mode to start editing text.
Esc - Exit insert mode.
:w - Save the file.
:q - Quit Vim.
:wq - Save and quit Vim.
If you're unfamiliar with loops and functions in shell scripting, don't worry! Each script contains commented explanations of these components to help you understand how they work.

Included Scripts
This repository includes the following scripts:
1. Monitoring_free_disk_space_Send_email_alert.sh
This script monitors the disk space usage on your system and sends an email alert if the disk usage exceeds a specified threshold. It's useful for ensuring you don't unexpectedly run out of storage.
Usage: Set the desired disk usage threshold, and the script will periodically check disk usage. If the limit is reached, an alert is sent.
Key Concepts: if statements, df command, email functions.
Features:
Customizable disk usage threshold.
Sends an email alert to a specified address when usage exceeds the threshold.
2. Move_big_old_Files_into_Archive_Folder.sh
This script finds large files that haven’t been modified recently and moves them to an archive folder. This is especially helpful for keeping your main directories uncluttered while retaining old files for future reference.
Usage: Set the file size and modification age limits, and the script will automatically move files meeting the criteria to the archive folder.
Key Concepts: find command, loops, file archiving.
Features:
Customizable file size and age limits.
Moves files to a specified archive directory.
3. Ram_monitoring_Status.sh
This script monitors the system’s RAM usage and provides a real-time status update. It's useful for ensuring your system has adequate memory available for tasks and identifying potential memory bottlenecks.
Usage: Run the script to check the current RAM usage status.
Key Concepts: free command, while loops.
Features:
Provides real-time monitoring of RAM usage.
Displays memory usage as a percentage and triggers alerts if usage exceeds a certain threshold.

How to Use These Scripts
Clone the Repository:

git clone (https://github.com/tpsv/Vim-Scripting-Linux)
cd Basic-Shell-Scripting


Edit the Scripts in Vim:
Open a script in Vim to customize parameters such as disk thresholds or email addresses:

vim Monitoring_free_disk_space_Send_email_alert.sh

Run the Scripts:
Make the scripts executable:
 
chmod +x Monitoring_free_disk_space_Send_email_alert.sh

Execute the script:
 
./Monitoring_free_disk_space_Send_email_alert.sh


Summary
This repository is a great starting point for anyone learning shell scripting. Each script includes basic loop structures, functions, and conditional statements essential for automating system tasks. The examples are easy to understand and customize, providing a practical approach to learning shell scripting fundamentals.
