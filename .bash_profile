#
# X11 set up for bash
#
if [ -z "$DISPLAY" -a "X$TERM_PROGRAM" = "XApple_Terminal" ]; then
  X11_FOLDER=/tmp/.X11-unix
  currentUser=`id -u`
  userX11folder=`find $X11_FOLDER -name 'X*' -user $currentUser -print 2>&1 | tail -n 1`
  if [ -n "$userX11folder" ]; then
    displaynumber=`basename ${userX11folder} | grep -o '[[:digit:]]\+'`
    if [ -n "$displaynumber" ]; then
      DISPLAY=localhost:${displaynumber}
      export DISPLAY
    else
      echo "Warning: DISPLAY not configured as X11 is not running"
    fi
  else
    echo "Warning: DISPLAY not configured as X11 is not running"
  fi
fi


#
# FSL set up for bash
#
FSLDIR=/usr/local/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH


# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH



#
# Alias for matlab from the terminal window
#
alias matlab='/Applications/MATLAB_R2015b.app/bin/matlab -nodesktop -nosplash'
