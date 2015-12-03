How does tracking and adding changes make developers' lives easier?

Tracking and adding changes make developers' lives easier by allowing them to access previous states of work. If someone makes a mistake on the code, he/she can revert back to a previous commit and work from there.

What is a commit?

A commit is basically a save point in git. Its purpose is to allow developers to go back to previous code/versions so that they don't have to start from scratch.

What are the best practices for commit messages?

Git messages start with the header line which is more or less capped at 50 characters. It serves as the subject of the message. The body that follows is separated by one line from the header/subject and includes the reason for the changes. Another key point of writing Git messages is writing in the present imperative form primarily for continuity with commit messages made by Git commands.

What oes HEAD^ argument mean?

The HEAD^ argument refers to the last commit; HEAD is the current commit; HEAD~3 is the third, and so on.

What are the 3 stages of a git change and how do you move from one stage to the other?

The three stages include untracked files ,changes not staged for commit, and changes to be committed.
Creating a new file will result in an "untracked file" message. Making a change to that file will move it to the "changes not staged for commit". Adding that file and committing it will have Git commit the change.
Write a handy cheatsheet of the commands you need to commit your changes.

git status to see the state of the files
git add to begin tracking of the file
git commit -m to commit changes


What is a pull request and how do you ceate and merge one?

A pull request is one way to merge code from a feature branch into a master branch. To create a pull request, (assuming that you have pushed the branch already to GitHub) you use the "compare and pull request" on Github, set the base branch as master and comparison branch as the new branch, and hit "create pull request".

Why are pull requests preferred when working with teams?
Pull requests allow developors to review code together. It informs others about changes you've made to to repo.
