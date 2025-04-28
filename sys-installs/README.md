# Task 3:

## sys-installs.sh explaination
- This script installs the AWS Command Line Interface (AWS CLI) on Linux systems. In This script, we check if root is running and if APT is installed but if not, we would install it with the user's permission. This allows for user control through yes or no and in the background, it will update and install the dependencies needed to install the CLI. We have prompts that will keep the user updated of the background processes and if it's finished, it tells users that the installation was complete and to try it out with the version number that is up-to-date.





## Sources:
- [AWS article](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Check root](https://stackoverflow.com/questions/18215973/how-to-check-if-running-as-root-in-a-bash-script)
- [Check Apt installed](https://stackoverflow.com/questions/1298066/how-can-i-check-if-a-package-is-installed-and-install-it-if-not)
- [User Prompt Y/N](https://www.geeksforgeeks.org/how-to-prompt-for-yes-no-cancel-input-in-a-linux-shell-script/)
- [/dev/null](https://www.geeksforgeeks.org/what-is-dev-null-in-linux/)
