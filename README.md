# fuzu
a minimal cli todo list using fzf

# IDEA
a minimal cli todo list application using fzf tool and bat for preview (task description)
flow :
- adding task: normal user input
- saving tasks: adding file with title name and content of description
- showing tasks: using fzf and bat, fzf showing task and bat will show a preview of content
- deleting a task: selecting a task using Enter and delete it using rm

# INSTALL

follow these steps:

* clone or download the repo:
```
git clone https://github.com/shimodii/fuzu
```

then: 
```bash
cd fuzu
make fun
sudo make install
```

after installing you can use fuzu simply by run it in your terminal with ```fuzu``` command.