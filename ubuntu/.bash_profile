
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export JAVA_HOME=/usr/lib/jvm/jdk1.8

# My local environment
export M2_HOME=~/java/apache-maven-3.3.3
export ANT_HOME=~/java/netbeans-8.0.2/extide/ant
export SCALA_HOME=~/scala-2.11.7
export PATH=$M2_HOME/bin:$ANT_HOME/bin:$SCALA_HOME/bin:$PATH
