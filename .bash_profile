
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/nickphillips/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/nickphillips/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nickphillips/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/nickphillips/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Pyspark setup
export JAVA_HOME=$(/usr/libexec/java_home)
export SPARK_HOME=~/spark-2.3.0-bin-hadoop2.7
export PATH=$SPARK_HOME/bin:$PATH
export PYSPARK_PYTHON=python3
export PYSPARK_SUBMIT_ARGS="--master local[2] pyspark-shell"

# mysql setup 
export PATH=${PATH}:/usr/local/mysql/bin/

#Git Setup
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Vim mode Bash
set -o vi

# Aliases
alias mysql='mysql -u root -p'
alias vim=nvim
alias py=python3
