# Docker Container for CS1632
Made for Dr. Wonsun Ahn's CS1632 Software Quality Assurance at the University of Pittsburgh

## What is this?
This is a Docker container for CS1632, intended to _simulate_ a Linux environment for students who are using Windows or Mac.

This container allows you to run your code in a Linux environment, without wondering whether thoth is down or not.

This container also (if configured correctly) removes the need for a GitHub Personal Access Token, and removes the need to manually clone your repository.

## Dependencies
- Docker
- `gh` (GitHub CLI)
- `git`
- VS Code (optional)


## To use:
1. Install and open Docker Desktop: https://www.docker.com/products/docker-desktop/
2. Clone this repository
    - `$ git clone https://github.com/anirudhi89/CS1632Docker.git`
3. Make sure you have accepted the Github Classroom assignment.
    - Note: Now, the code now automatically clones your repository, without the need to modify the `clone.sh` script.
4. Run `chmod +x ./run.sh` and `chmod +x ./build.sh` to make the scripts executable
5. Run `./build.sh` to build the Docker image
6. Run `./run.sh` to run the Docker container
7. You should now be in the container's shell, in the `root` directory. Run `pwd` to verify.


Note that you should push your changes to your repository before exiting the container, as the container is ephemeral and all data will be destroyed when you exit.
You can push your code to GitHub using the following commands:
```bash
git add .
git commit -m "Your commit message here"
git push
```



<br><br>
Alternatively, you can pair this container with VS Code to edit your code in a more familiar environment:


## To Pair with VS Code:
1. Install the Docker extension in VS Code
2. Build and Run your Docker container
3. Open the Docker tab on the left-hand side of VS Code
4. Right-click on the name of your container (cs1632) and click "Attach Visual Studio Code"
    - Do not click on files and start editing there. Click Attach Visual Studio Code to open a new instance of VS Code in the container.
5. You should now be able to edit your code in VS Code and run it in the Docker container


## To edit your code:
1. Execute `./clone.sh` to clone your repository into the container:
    - Note: You may see a .gitconfig file in the root directory. This file is created by VS Code if you have signed in with GitHub. If you see this file, you can run `./clone.sh` and won't need to input a username/Personal Access Token.



## Disclaimer
This is not an official replacement for thoth, and is not guaranteed to work in all cases. It is merely intended to be a helpful tool for students. Please test your code on thoth before submitting it. I'm not responsible for any lost points due to using this container. 
