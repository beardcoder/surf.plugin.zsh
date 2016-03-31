# surf-zsh-plugin

## Installation for oh-my-zsh

1. In the command line, change to `oh-my-zsh` plugins directory:

    ```console
    $ take ~/.oh-my-zsh/custom/plugins
    ```

2. Clone the repository into a new directory called `surf`:

    ```console
    git clone https://github.com/markussom/surf-zsh-plugin.git surf
    ```

3. Include `surf` plugin to your .zshrc file along with other plugins:

    ```zsh
    ...
    plugins=(osx brew git surf)
    ...
    ```

4. Restart your terminal application.