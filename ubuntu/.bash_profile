# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# alias
alias afk="gnome-screensaver-command -l"

# My local environment
export JAVA_HOME=/usr/lib/jvm/jdk1.8
export M2_HOME=~/java/apache-maven-3.3.3
export ANT_HOME=~/java/netbeans-8.0.2/extide/ant
export SCALA_HOME=~/scala-2.11.7
export PATH=$M2_HOME/bin:$ANT_HOME/bin:$SCALA_HOME/bin:$PATH
