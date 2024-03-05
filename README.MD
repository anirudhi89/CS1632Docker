# Docker Container for CS1632
Made for Dr. Wonsun Ahn's CS1632 Software Quality Assurance at the University of Pittsburgh

## What is this?
This is a Docker container for CS1632, intended to _simulate_ a Linux environment for students who are using Windows or Mac.

This container allows you to run your code in a Linux environment, without wondering whether thoth is down or not.


## To use:
1. Install and open Docker Desktop: https://www.docker.com/products/docker-desktop/
2. Clone this repository
    - `$ git clone https://github.com/anirudhi89/CS1632Docker.git`
3. Using a text editor of your choice, modify `clone.sh` to contain your git repository URL
4. Run `chmod +x ./run.sh` and `chmod +x ./build.sh` to make the scripts executable
5. Run `./build.sh` to build the Docker image
    - Keep in mind this may take a while
6. Run `./run.sh` to run the Docker container
    - Note: If you are on Apple Silicon, you may see the warning: 
    >WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested
7. You should now be in the container's shell, in the app directory. Run `pwd` to verify.
8. Run `./clone.sh` to clone your repository
    - Input your username and PAT when prompted
9. Use `cd` to navigate to your repository

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
5. You should now be able to edit your code in VS Code and run it in the Docker container


## Disclaimer
This is not an official replacement for thoth, and is not guaranteed to work in all cases. It is merely intended to be a helpful tool for students. Please test your code on thoth before submitting it. I'm not responsible for any lost points due to using this container. 
