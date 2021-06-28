# Not in zshenv, because miniconda must be before system python PATH (which appends in "env" step)
#export PATH="/opt/miniconda3/bin:$PATH"

# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
