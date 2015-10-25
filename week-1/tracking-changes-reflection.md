* How does tracking and adding changes make developers' lives easier? : As I understand it, tracking allows developers to see what files/directories have been changed and what kind of changes have been made. Adding changes to the stage to be committed acts like a confirmation that these files/directories are in fact part of the changes a developer wants to make in a project. Together they make developers' lives easier by allowing them to follow along exactly what, when, and why changes were made.

* What is a commit? : When you commit, the changes you have made are saved. You can go back to an earlier commit if there is a problem. A commit is almost like a snapshot in time of your changes, that you can move forward from or return to if need be.  

* What are the best practices for commit messages? : A commit message should tell someone what applying the commit *will* do, therefore, it should be in the imperative tone & present tense. The first line of a commit message should be short and around 50 characters long. If more information is needed, other paragraphs can be added under that first 50-character line. 

* What does the HEAD^ argument mean? : HEAD^ is the last commit, that is, the one before the one you are currently on. You can use the command "git reset --soft HEAD^" to bring you back to the last commit while keeping your changes.

* What are the 3 stages of a git change and how do you move a file from one stage to the other? : The three stages of a git change (I think) are unstaged, staged, and committed. Before you explicitly stage a file for committment with *git add* a file is considered unstaged. When you use *git add* on the file, it becomes staged. Then when you commit (your branch?) with *git commit* all the staged files become committed.

* Write a handy cheatsheet of the commands you need to commit your changes?
To commit changes, the process I use is
- view files that have been changed with *git status*
- add files to be committed with *git add [file name]*
- commit files with *git commit -m "Commit message"* for a short message or *git commit -v* to open the text editor to create a longer message.

* What is a pull request and how do you create and merge one? : After your changes are made and committed and pushed to GitHub, the next step is to make a pull request. This allows you/other reviewers to make a final comparison of the changed version to the original before you merge. To create a pull request, go the the repository on GitHub. There should be a green button that reads "Compare & pull request" (or go to the left side of the screen and click on "Pull request", then select "New pull request" on the following screen). Press it, then choose your master and branch to compare it to from the drop-downs on the following screen. Then on the next screen confirm the pull request by pressing "Create Pull Request". To merge the pull request, press the button "Merge Pull Request" then "Confirm Merge" on the next screen. Then (and I forgot to do this the firs time! It is important!) update your local master from the remote by typing *git pull origin master* into the command line.

* Why are pull requests preferred when working with teams? : Making a pull request allows others to review your changes before they are merged into the master. This allows people to be on the same page about what happens to a master that everyone is contributing to.