# Git Definitions
##By Evans Wang
**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is basically the ability to make copies of a file and allow yourself to make any changes/updates to clones of that file and eventually merge them back into the original file(master file). This is extremely useful because it allows you to work on different "features" you want to add to a program without messing with the original working code for the program in case you add something that could cause the whole thing to not work. This also allows you to create backups of your code, track changes and anyone who has made those changes, what the changes are and when they were made in order to identify any potential issues and how to track them down.

* What is a branch and why would you use one?
A branch is a separate folder in the main repo to work on a clone of the the main code. This allows multiple persons to work on the same code in different ways and can later be merged back into the "master" folder with approval from another coder. The reason for branches is so that the "master" file is not changed or messed with until a "feature" or additional code(updates/bug fixes/etc..) have been worked through, tested and reviewed prior to adding it to the "master" file.

* What is a commit? What makes a good commit message?
A commit is a save point for the particular file you are working on. This means that if you branch out from the master and add some code and you need to take a 90 min lunch break while you figure out some other cool things you want to add to your "feature branch" you can save the file or "commit" it to the git and those changes will be there when you open it next time as well as if you decide to add more to the code later you can go back to any "commit" you have and see how they differ from each other.

A good commit message should be short, actually describe the update to the code and ultimately allow **someone else** to understand what the changes you made to the code does.


* What is a merge conflict?
A merge conflict is when you cannot merge your "feature" with the master. This can be due to the fact that someone or you had changed and commited changes to the master while you were working on your feature and therefore your additions would not be correctly combined into the master.
