# Development
export DEVROOT="$HOME/Development"
export GIT_REPO_ROOT_DIR="${DEVROOT}/git_repositories"

# Content hub
export NETFLIX_STACK=testintg
export NETFLIX_ENVIRONMENT=test

# Java
export JAVA_HOME=`/usr/libexec/java_home`

# Android development
export ANDROID_HOME="$HOME/Library/Android/sdk"
# export PATH=".:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

# Python
export PYENV_ROOT="${HOME}/.pyenv"
export PIPENV_VENV_IN_PROJECT=1


cdpath=(
    ~
    $DEVROOT
    $GIT_REPO_ROOT_DIR
    $GIT_REPO_ROOT_DIR/Adobe
    $GIT_REPO_ROOT_DIR/ContentHub
    $GIT_REPO_ROOT_DIR/Java
    $GIT_REPO_ROOT_DIR/Java/backend
    $GIT_REPO_ROOT_DIR/Learning
    $GIT_REPO_ROOT_DIR/Mobile
    $GIT_REPO_ROOT_DIR/Python
    $GIT_REPO_ROOT_DIR/Components
    $HOME/Library/Application\ Support/Adobe/CEP
    $HOME/Library/Application\ Support/Adobe/CEP/extensions
)

# PATH
export PATH=".${HOME}/bin:$PATH":
