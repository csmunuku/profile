#####################################    #######  # ###### #  #####################################
##################################  ####  ######  #  ####  #  #####################################
################################  ##############  ##  ##  ##  #####################################
###############################  ###############  ###    ###  #####################################
###############################  ###############  ####  ####  #####################################
################################  ##############  ##########  #####################################
##################################  ############  ##########  #####################################
#####################################   ########  ##########  #####################################

HISTFILESIZE=10000
##### Aliases #####
#####################################
# PATH and MANPATH
#####################################
PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/ccs:/usr/ucb:$PATH
PATH=/wcg/svnapache1.6/bin:$PATH
PATH=/usr/atria/bin:$PATH:.
PATH=/opt/ant/apache-ant-1.8.2/bin:$PATH:.;export PATH
MANPATH=/usr/local/man:/usr/share/man:$MANPATH:.;export MANPATH
#DISPLAY=localhost:0.0;export DISPLAY

#####################################
# GREP Color Options
#####################################
export GREP_OPTIONS='--color=auto'
GREP_COLORS='ms=1;31:mc=1;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'
export GREP_COLORS

syn()
{
  /home/cmunukutla/startSynergy.sh
}

#####################################
# Solaris Specific Aliases ##########
#####################################
if [ `uname` = "SunOS" ]; then
   alias prtdiag='/usr/platform/`uname -m`/sbin/prtdiag'
fi

#####################################
# GENERAL Aliases ###################
#####################################
# Unalias rm if it exists
if [ `alias | grep -c "alias rm"` -eq 1 ]; then
    unalias rm
fi   
# profile related aliases

if [[ "${OS}" = "Darwin" ]]; then
   alias vpro='vi ~/.profile'
   alias cpro='cat ~/.profile'
else
   alias vpro='vi ~/.bash_profile'
   alias cpro='cat ~/.bash_profile'
fi

# date aliases
alias today='date;cal'

# Clearing the screen aliases
alias c='clear';alias cl='clear';alias cls='clear';alias clar='clear';alias claer='clear';alias clea='clear';alias CLEAR='clear'
alias ckear='clear'
alias lear='clear'

# Directory aliases
alias dirs="ls -AF | grep "/$" | tr '/' ' '"
#alias dirs="ls -AF | grep "/$" | cut -d'/' -f1"

# Disk space aliases
alias d='df -H .'
alias odisk='df -H | grep -A 1 -iE "nfs|ora|nas"'


# ls aliases
alias l='ls -lrt';alias k='ls -lrt';alias ls-lrt='ls -lrt';alias ls-alrt='ls -alrt';alias la='ls -alrt'
alias LS='ls'
alias lf='ls -F';alias lwc='ls | wc -l';
alias ks='ls'
alias KS='ls'

# pwd alises
alias pw='pwd';alias pdw='pwd';

# tail aliases
alias t='tail -f '
alias m='more'

# general aliases specific to cd'ing to directories
alias cs='cd ~/scripts; pwd'
alias loc='cd /usr/local/bin; pwd'
alias temp='cd /tmp; pwd'
alias bin='cd bin;pwd;ls -alrt';
alias b='cd .. ; pwd'
#*****

# stty settings
# stty erase ^H
alias crt='stty erase ^H';alias putty='stty erase ^?'
#putty
#crt

# Sudo Aliases
alias care='echo Logging in as ROOT;sudo su -'
alias power='echo Logging in as ROOT;sudo su -'

#####################################
# ALL FUNCTIONS
#####################################
mcd()
{
  cd $1; pwd; ls -alrt
}
#*****

box()
{
  echo "OS is `uname`"
  echo "Box Name is `uname -n`"
}
#*****
OS=`uname`
BOXNAME=`uname -n`

if [ "${OS}" = "SunOS" ]; then
   XGREP=/usr/xpg4/bin/grep; P=/usr/ucb/ps
   alias p='/usr/ucb/ps -auxwww | grep -i '
elif [[ "${OS}" = "Linux" || "${OS}" = "Darwin" ]]; then
   XGREP=grep
fi
alias g='${XGREP} '

FCEDIT=/usr/bin/vi; export FCEDIT
if [ "$SHELL" = "ksh" ]; then
   set -o vi
fi
#*****
# PS1="$LOGNAME@`uname -n | cut -f1 -d'.'`:$PWD $ "
# PS1="[\u@\h \W]\$ "
ps1()
{
if [ "$LOGNAME" = "root" ];then
     rootuser=`echo $LOGNAME | /usr/bin/tr '[a-z]' '[A-Z]'`; PS1="$rootuser@$BOXNAME # "
else
     PS1='$BOXNAME: $ '
fi
}
#*****
ops1()
{
if [ "$LOGNAME" = "root" ];then
     rootuser=`echo $LOGNAME | /usr/bin/tr '[a-z]' '[A-Z]'`; PS1="$rootuser@$BOXNAME # "
else
     PS1='$LOGNAME@${BOXNAME}:$PWD $ '
#     PS1='$LOGNAME@${BOXNAME}-`/sbin/ifconfig -a | grep -A 1 eth0 | grep "inet addr:" | cut -d: -f2 | cut -d" " -f1`:$PWD $ '
fi
}
#*****
ops1
#*****
myip()
{
  /sbin/ifconfig -a | grep -A 1 eth0 | grep "inet addr:" | cut -d: -f2 | cut -d" " -f1
}
#*****
ch()
{
   if [ $# -gt 2 ]; then
       echo "usage: ch  ---> same as cd ../.."
       echo "                OR          "
       echo "usage: ch dirPattern ---> for changing directory based on pattern"  
       echo "                OR          "
       echo "usage: ch str1 str2 ---> for Changing dir by replacing the str1 with str2" 
   elif [ $# -eq 0 ]; then
       cd ../..
       pwd
   elif [ $# -eq 1 ]; then
          if [ 1 -eq `eval echo $1 | grep -c /` ]; then
               cd $1
               pwd
          else
               myString=`eval pwd | tr '/' ' '`;echo $myString | grep $1 > /dev/null
               if [ $? -ne 0 ]; then
                   echo "I cannot find what you are searching for"
                   echo "Please try again"
               else
                   gotoDir=
                   variable=
 
                   for i in $myString
                   do
                      variable="$i"
                      if [ 1 -ne `eval echo $variable | grep -c $1` ]; then
                           if [ "$gotoDir" = "" ]; then
                               gotoDir=/$variable
                           else
                               gotoDir=$gotoDir/$variable
                           fi
                      else
                          break
                      fi
                   done
                   cd "$gotoDir/$variable"
                   pwd
               fi
            fi
    else
        myString=`echo $PWD | eval sed 's/$1/$2/g'`
        cd $myString
        pwd
    fi
}
#********************************************************************
port()
{
   if [ $# -eq 0 -o $# -gt 1 ]; then
       echo "You need to specify a port number"
       echo "netstat -an | grep :<portNumber> | grep LISTEN"
   else
       echo "netstat -an | grep :<portNumber> | grep LISTEN"
       portinfo=`netstat -an | grep ":${1} " | grep LISTEN`
       if [ "$portinfo" = "" ]; then
          echo "The port '$1' is NOT Active"
       else
          echo "$portinfo"
       fi
   fi
} 
#*****
inf()
{
   arguments=
   arg=
   if [ $# -lt 1 ]; then
       echo "You need to specify the name(s) of the people you want to find as argument(s) to this script"
   elif [ $# -eq 1 ]; then
       ${XGREP} -i $1 /etc/passwd
   else
      arguments="$*"
      arg="`echo $arguments | tr -s ' ' '|'`"
      ${XGREP} -iE "$arg" /etc/passwd
   fi
}
#*****
lg()
{
   arguments=
   arg=
   if [ $# -eq 0 ]; then
       echo "USAGE: lg abcd.txt"
       echo "     : lg abcd.txt hello.txt good.txt dir1"
   elif [ $# -eq 1 ]; then
       ls | $XGREP -i $1
   else
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`"; ls | $XGREP -iE "$arg"
   fi
}
#*****
ltg()
{
   arguments=
   arg=
   if [ $# -eq 0 ]; then
       echo "USAGE: ltg abcd.txt"
       echo "     : ltg abcd.txt hello.txt good.txt dir1"
   elif [ $# -eq 1 ]; then
       ls -alrt | ${XGREP} -i "${1}"
   else
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`"; ls -alrt | ${XGREP} -iE "$arg"
   fi
}
#*****
nltg()
{
   arguments=
   arg=
   if [ $# -eq 0 ]; then
       echo "USAGE: nltg abcd.txt"
       echo "     : nltg abcd.txt hello.txt good.txt dir1"
   elif [ $# -eq 1 ]; then
       ls -alrt | ${XGREP} -iv "${1}"
   else
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`"; ls -alrt | ${XGREP} -ivE "$arg"
   fi
}
#*****
disk()
{
   OS=`uname`
   echo "On ${OS}"
   # ts is TimeStamp
   ts="`date '+%Y%m%d_%H%M%S'`"
   if [ "${OS}" = "Linux" ]; then
#      df -h
#       df -h | sort -k 5
      df -h | sort -n -k 5
   elif [ "${OS}" = "SunOS" ]; then
       df -k > /tmp/$USER_$ts.txt
       if [ $1 ]; then
          awk -F' ' '{ printf "%8s %15s %15s %25s \t%10s \n",$5,$2,$4,$6,$1 }' /tmp/$USER_$ts.txt | sort | grep $1
          if [ $? -eq 0 ]; then
              awk -F' ' '{ printf "%8s %15s %15s %25s \t%10s \n",$5,$2,$4,$6,$1 }' /tmp/$USER_$ts.txt | sort | grep Mounted
          else
             echo "There is no filesystem which contains '$1' in it to look for. Thank you :)"
          fi
       else
          awk -F' ' '{ printf "%8s %15s %15s %25s \t%10s \n",$5,$2,$4,$6,$1 }' /tmp/$USER_$ts.txt | sort
       fi
       rm /tmp/$USER_$ts.txt
   elif [ "${OS}" = "HP-UX" ]; then
         df -k | more
   fi
}
#*****
copy()
{
    ts="`date '+%Y%m%d_%H%M%S'`"
    if [ $# -eq 0 -o $# -gt 2 ]; then
         echo "Usage: You need to provide the file/dir that you want to copy, as first argument."
         echo "And your second argument - optional - can be a special tag that you want to attach "         
    elif [ $# -eq 1 ]; then
          if [ -d ${1} -o -f ${1} ]; then
              if [ -d ${1} ]; then
                 if [ `echo $1 | grep -c "/$"` -eq 1 ]; then
                    dirToBkp=`echo $1 | cut -d/ -f1` 
                    tar cvf - ${dirToBkp} | gzip -9c > ${dirToBkp}_${ts}.tgz
                 else
                    tar cvf - ${1} | gzip -9c > ${1}_${ts}.tgz
                 fi
              else
                 cp -p ${1} ${1}_${ts}
              fi
          else
              echo "\"${1}\" is neither a directory nor a regular file"
          fi    
    elif [ $# -eq 2 ]; then
         if [ -d ${1} -o -f ${1} ]; then
             if [ -d ${1} ]; then
                if [ `echo $1 | grep -c "/$"` -eq 1 ]; then
                   dirToBkp=`echo $1 | cut -d/ -f1`
                   tar cvf - ${dirToBkp} | gzip -9c > ${dirToBkp}_${2}.tgz
                else
                   tar cvf - ${1} | gzip -9c > ${1}_${2}.tgz
                fi
             else
                cp -p ${1} ${1}_${2}
             fi
         else
             echo "\"${1}\" is neither a directory nor a regular file"
          fi  
    fi
    echo "###################################################"
    if [ $# -gt 0 ]; then
       ltg ${1}
    fi
}
#*****
lt()
{
   if [ $# -eq 1 ]; then
       ls -lrt | tail -${1}
   else
       ls -lrt | tail -10
   fi
}
#*****
lat()
{
   if [ $# -eq 1 ]; then
       ls -alrt | tail -${1}
   else
       ls -alrt | tail -10
   fi
}
#*****
nsl()
{
if [ $# -eq 0 ]; then
   echo "Please provide FQDN of boxes as arguments to this script to find the nslookup"
elif [ $# -eq 1 -a -f ${1} ]; then
   for i in `cat ${1}  |grep -v "^#"`
   do
     nslookup $i
   done
else
  for i in $*
  do
    nslookup $i
  done
fi
}
#*****
dns()
{
  if [[ $# -eq 0 ]] && [[ "`uname`" = "Linux" || "`uname`" = "Darwin" ]]; then
      ts="`date '+%Y%m%d_%H%M%S'`"
      /sbin/ifconfig -a | grep "inet addr:" | cut -d: -f2| cut -d" " -f1 > test_$ts.txt
      for i in `cat test_$ts.txt | grep -v "127.0.0.1"`
      do
        echo -en "${i} "; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
      done
      rm test_$ts.txt
  else
     if [[ "`uname`" = "SunOS" ]]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do
              getent hosts ${i}
            done
        else 
           for i in $*
           do
             getent hosts ${i}
           done
        fi
    elif [[ "`uname`" = "Linux" || "`uname`" = "Darwin" ]]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do              
              echo -en "${i}\t\t"; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
            done
        else
           for i in $*
           do             
             echo -en "${i}\t\t"; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
           done
        fi
    fi
  fi
}
#*****
dnsc()
{
  if [ $# -eq 0 ]; then
   echo "Please provide FQDN of boxes as arguments to this script to find the nslookup"
  else
     if [ "`uname`" = "SunOS" ]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do
              getent hosts ${i}
            done
        else
           for i in $*
           do
             getent hosts ${i}
           done
        fi
    elif [ "`uname`" = "Linux" ]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do
              echo -en "${i},"; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
            done
        else
           for i in $*
           do
             echo -en "${i},"; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
           done
        fi
    fi
  fi
}
#*****
dnss()
{
  if [ $# -eq 0 ]; then
   echo "Please provide FQDN of boxes as arguments to this script to find the nslookup"
  else
     if [ "`uname`" = "SunOS" ]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do
              getent hosts ${i}
            done
        else
           for i in $*
           do
             getent hosts ${i}
           done
        fi
    elif [ "`uname`" = "Linux" ]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do
              echo -en "${i} "; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
            done
        else
           for i in $*
           do
             echo -en "${i} "; host $i | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
           done
        fi
    fi
  fi
}
#*****
cdns()
{
  if [ $# -eq 0 ]; then
   echo "Please provide FQDN of boxes as arguments to this script to find the nslookup"  
  else
     if [[ "`uname`" = "SunOS" ]]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#"`
            do
	      hostInfo=`echo $i | tr -s ',' ' '`
              getent hosts ${hostInfo}
            done
        else 
           for i in $*
           do
	     hostInfo=`echo $i | tr -s ',' ' '`
             getent hosts ${hostInfo}
           done
        fi
    elif [[ "`uname`" = "Linux" || "`uname`" = "Darwin" ]]; then
        if [ $# -eq 1 -a -f ${1} ]; then
            for i in `cat ${1}  |grep -v "^#" | tr -s ',' ' '`
            do
              hostInfo="$i"
              echo -en "${hostInfo} "; host ${hostInfo} | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
            done
        else
           for i in $*
           do
	     hostInfo=`echo $i | tr -s ',' ' '`
             echo -en "${hostInfo} "; host ${hostInfo} | grep -v ";;" | awk '{print $NF}' | sed 's/\.$//g'
           done
        fi
    fi
  fi
}
#*****

go()
{
   if [ `ls -F | grep -c \/` -gt 1 ]; then
       echo "More than one directory exists in this directory"
   else
     cd `ls -F | grep \/`
     pwd
   fi
}
#*****
#File Descriptors
fd()
{
   if [ $# -gt 0 ]; then
      for i in $*
      do
        if [ "`uname`" = "SunOS" ]; then
           /usr/proc/bin/pfiles $i 2>/dev/null| grep "ino:" | wc -l
        elif [ "`uname`" = "Linux" ]; then
             lsof -p $i | wc -l
        fi
      done
   else
      echo "Please provide PID as argument to this script"
   fi
}
#*****
conf()
{
   mydir=
   if [ -d config -a -d conf ]; then
      echo "Both config and conf directories exist. Which directory do you want to go into"
      echo "config or conf:\c";read mydir; cd ${mydir}; pwd
   elif [ -d config ]; then 
      cd config; pwd
   elif [ -d conf ]; then
      cd conf; pwd
   else
      echo "There is no \"config\" or \"conf\" directory to go into"; pwd
   fi
}
#*****
log()
{
   mydir=
   if [ -d logs -a -d log ]; then
      echo "Both logs and log directories exist. Which directory do you want to go into"
      echo "logs or log:\c"; read mydir
      cd ${mydir}; pwd
   elif [ -d logs ]; then 
      cd logs; pwd
   elif [ -d log ]; then
      cd log; pwd
   else
      echo "There is no \"logs\" or \"log\" directory to go into"; pwd
   fi
}
#*****
apid()
{
   ps -ef | grep -v grep | grep java | awk '{print $NF,$2}'
}
#*****
wpid()
{
   ps -ef | grep -v grep | grep httpd | grep root | awk '{print $2,$NF}'  | awk -F"/" '{print $3,$1}'
}
#*****
pg()
{
  if [ $# -gt 1 ]; then
      arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`";
      ps -ef | ${XGREP} -iE "$arg" | ${XGREP} -v grep
  else
      ps -ef | more
  fi
}
#*****
dir()
{
   count=1
   TF=`ls -1F | grep -c "/$"`
   if [ ${TF} -gt 0 ]; then
      ((TF1=TF+1))
      DirList=(`ls -1F | grep "/$" | tr '/' ' '`)
      for i in ${DirList[*]}
      do
        echo "$count - ${DirList[((count - 1))]}"
        ((count = count + 1))
      done
      echo "Please choose from the above options:"
      read userchoice
      if [ `echo ${userchoice} | grep -c "^[0-9]*$"` -eq 1 ]; then
         if [ ${userchoice} -lt ${TF1} ]; then
             cd ${DirList[((userchoice - 1))]}
             ls -lrt;pwd
         fi
      else
         echo "Your selection is NOT valid."
         echo "You are in your current directory - `pwd`"
      fi
   else
      echo "There are no directories with in your current directory - `pwd`"
   fi
}
#*****
h()
{
   arguments=
   arg=
   if [ $# -eq 0 ]; then
       echo "Your History is as follows:"
       history | tail -15
   elif [ $# -eq 1 ]; then
       history | grep "${1}"
   else
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`"; history | ${XGREP} -iE "$arg" | tail -15
   fi
}
#*****
gpro()
{
   arguments=
   arg=
   if [ $# -eq 0 ]; then
       echo "Please provide arguments to grep in your \".bash_profile\" file"
   elif [ $# -eq 1 ]; then
       ${XGREP} -i "${1}" ~/.bash_profile
   else
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`";
       ${XGREP} -iE "$arg" ~/.bash_profile
   fi
}
#*****
cg()
{
  arguments=
   arg=
   if [ $# -eq 0 ]; then
       crontab -l
   elif [ $# -eq 1 ]; then
       crontab -l | ${XGREP} -i "${1}"
   else
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`";
       crontab -l | ${XGREP} -iE "$arg"
   fi
}
#####*****
gc()
{
  arguments=
   arg=
   if [ $# -eq 0 -a -f /etc/clusters ]; then
       less /etc/clusters
   elif [ -f /etc/clusters ]; then
       arguments="$*"; arg="`echo $arguments | tr -s ' ' '|'`";
       ${XGREP} -iE "$arg" /etc/clusters
   else
       echo "/etc/clusters file doesn't exist on this box."
   fi
}
#####*****
ipaddr()
{
  if [ "`uname`" = "SunOS" ]; then
      echo "/sbin/ifconfig -a | grep inet | cut -d\" \" -f2"
      /sbin/ifconfig -a | grep inet | cut -d" " -f2
  elif [ "`uname`" = "Linux" ]; then
      echo "/sbin/ifconfig -a | grep \"inet addr:\" | cut -d: -f2 | cut -d\" \" -f1"
      /sbin/ifconfig -a | grep "inet addr:" | cut -d: -f2 | cut -d" " -f1
  fi
}
#####*****
#To modify the Title of the Putty Window
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}"; echo -ne "\007"'
#export SERVER=`uname -n`
#printf '\033]2;'$SERVER'\07'
#####*****
emailMe()
{
# emails output of command(s) we run on localhost
   if [ `ps -ef | grep -i mail | grep -cv grep` -lt 1 ]; then
      echo "No Mail Client is Running on this box... so No emails will be sent."
      echo "exiting gracefully now...."
   else
      ts="`date '+%Y%m%d_%H%M%S'`"
      tmpFileName="/tmp/output_${ts}.txt"

###### Team Email Addresses
      Chandu="csmunuku@gmail.com"
      ToAddress="${Chandu}"

      stty erase ^H
      if [ $# -gt 0 -a $# -lt 2 ]; then
          ToArg=`echo ${1} | tr A-Z a-z`
          case "${ToArg}" in
               chandu) ToAddress="${Chandra},${Chandu}"
                      ;;
               *) ToAddress="${Chandu}"
                  echo "Default - Sending email to ${Chandu}"
                      ;;
          esac
      fi

      echo "Please specify the Command(s) you would like to run:"
      read commandToRun
      echo "Subject for your email:"
      read MailSubject
      date > ${tmpFileName}
      uname -n >> ${tmpFileName}
      pwd >> ${tmpFileName}
      echo ${commandToRun} >> ${tmpFileName}
      echo "" >> ${tmpFileName}
      echo "###################################################################################################" >> ${tmpFileName}
      eval $commandToRun >> ${tmpFileName}

      if [ "`uname`" = "Linux" ]; then
          /bin/mail "${ToAddress}" -s "${MailSubject}" < ${tmpFileName}
      elif [ "`uname`" = "SunOS" ]; then
#          /usr/sbin/sendmail ${ToAddress} < ${tmpFileName}
           mailx -s "${MailSubject}" "${ToAddress}" < ${tmpFileName}
      fi
      rm ${tmpFileName}
   fi
}
#*****
#####*****
spro()
{
 source ~/.bash_profile
}
#*****
#####*****
scpro()
{
 source ~/.chandra_profile
}
#*****
#####*****
ca()
{
# to login to various hosts using different application accounts
  echo "Date = `date`"
  account="cmunukutla-admin"
  if [ $# -lt 1 ]; then
     echo "Please provide the FQDN of boxes as arguments OR a file name containing FQDNs of boxes as other args to this function"
  else
     userInput=
     if [ $# -eq 1 -a -f ${1} ]; then
        for i in `cat ${1}  |grep -v "^#"`
        do
          echo "Yes, No, Exit - y,n,e - provide your input"
          echo "Do you want to log on to the box $i y/n/e"
          read userInput
          if [ "$userInput" = "e" ]; then
             echo "Exiting this script now..."
             break;
          fi
          if [ "$userInput" = "y" -o "$userInput" = "Y" -o "$userInput" = "yes" -o "$userInput" = "YES" ]; then
              echo "On $i ..."
              ssh -o ConnectTimeout=5 -x -l $account $i
              if [ $? -gt 0 ]; then
                 echo "Timed out connecting to the server ${i}"
              fi
              echo "*****************************************************"
          fi
        done
     elif [ $# -eq 1 -a ! -f ${1} -o $# -gt 1 ]; then
        for i in $*
        do
           echo "Yes, No, Exit - y,n,e - provide your input"
           echo "Do you want to log on to the box $i y/n/e"
           read userInput
           if [ "$userInput" = "e" ]; then
              echo "Exiting this script now..."
              break;
           fi
           if [ "$userInput" = "y" -o "$userInput" = "Y" -o "$userInput" = "yes" -o "$userInput" = "YES" ]; then
              echo "On $i ..."
              ssh -o ConnectTimeout=5 -x -l $account $i
              if [ $? -gt 0 ]; then
                 echo "Timed out connecting to the server ${i}"
              fi
              echo "*****************************************************"
           fi
        done
    fi
  fi

  echo "Done"
}
#####*****
links()
{
# Checks and Displays the ls -alrt of links in the current directory
  if [ `ls -1F | grep -c "@$"` -gt 0 ]; then
     for i in `ls -1F | grep "@$"`
     do
       ls -alrt `echo $i | cut -d'@' -f1`
     done
  else
     echo "There are no links in this Directory"
  fi
}
#*****
#####*****
cf()
{
  for i in $*
  do
    if [ -f "${i}" ]; then
       echo "############# ${i} #############"
       cat ${i}
       echo "################################"
    fi
  done
}
#*****
#####*****
append()
{
if [ $# -ne 1 ]; then
   echo "Please provide a file name as an argument to this script"
elif [ $# -eq 1 -a -f ${1} ]; then
   echo "What do you want to append to the lines in the file you provided"
   read appendInfo
   for i in `cat $1`
   do
     echo ${i}${appendInfo}
   done
else
   echo "Please provide a file name as an argument to this script"
fi
}
#####*****
pscp()
{
  if [ $# -ne 1 ]; then
     echo "Please provide a file name with a List of FQDNs of hosts as an argument to this script"
  elif [ $# -eq 1 -a -f ${1} ]; then
     for i in `cat $1  |grep -v "^#"`
     do
       host $i
       if [ $? -eq 0 ]; then 
          scp ~cmunukutla/.bash_profile cmunukutla@$i: 
          if [ $? -ne 0 ]; then
             echo "FAILED to SCP on: $i" 
          fi
       else
          echo "host - $i - NOT found"
       fi
     done
  else
     for i in $*
     do
       host $i
       if [ $? -eq 0 ]; then 
          scp ~cmunukutla/.bash_profile cmunukutla@$i: 
          if [ $? -ne 0 ]; then
             echo "FAILED to SCP on: $i" 
          fi
       else
          echo "host - $i - NOT found"
       fi
     done
  fi
}
#####*****
ts()
{
  echo "`date '+%Y%m%d_%H%M%S'`"
}
#####*****
zero()
{
  if [ $# -lt 1 ]; then
     echo "Please provide either a file which has the list of all the other files that we need to zero out"
     echo "OR"
     echo "Provide a list of files to this scripts as arguments which needs to be zero'ed out"
  elif [ -f $1 ]; then
     for i in `cat $1`
     do
       echo "Zero'ing out file $i"
       > $i
     done
  else
     for i in $@
     do
       if [ -f $i ]; then
          echo "Zero'ing out file $i"
          > $i
       fi
     done
  fi
}
#####*****
del()
{
  if [ $# -ne 1 ]; then
     echo "Please provide a file which has the list of all the other files to delete."
  elif [ $# -eq 1 -a -f ${1} ]; then
     for i in `cat $1  |grep -v "^#"`
     do
       rm $i
     done
  fi
}
#######################################
mscp()
{
  if [ $# -lt 2 ]; then
    echo "mscp AFile.txt user@DestHost:/AbsolutePathOnDestHost" 
    echo "mscp AFile.txt user@DestHost1:/AbsolutePathOnDestHost user@DestHost2:/AbsolutePathOnDestHost ... etc" 
  else
    fileOnSource="$1"
    shift
    for i in $@
    do
      echo "scp $fileOnSource $i"
      echo
  #   echo "here is what we are reading \"$i\""
      scp $fileOnSource "$i"
      echo "##########################################################################"
    done
  fi
}
#######################################
csv()
{
  if [ $# -eq 1 -a -f "${1}" ]; then
     /usr/bin/tr '\n' ',' < $1
  else
     echo "provide a file as argument to this script"
     echo "To get the comma separated list of the file contents"
  fi
}
#######################################
spsep()
{
  if [ $# -eq 1 -a -f "${1}" ]; then
     /usr/bin/tr '\n' ' ' < $1
  else
     echo "provide a file as argument to this script"
     echo "To get the comma separated list of the file contents"
  fi
}
#######################################
cat()
{
   if [ $# -eq 1 ]; then
      if [ `file $1 | egrep -c "ASCII|script text|empty"` -eq 1 ]; then
	  /bin/cat ${1}
      elif [ `file $1 | egrep -c "LSB executable"` -eq 1 ]; then
	  echo "Argument provided - \"$1\" is an Executable.. So Cannot use \"cat\" command on it.."
      elif [ `file $1 | egrep -c "symbolic link"` -eq 1 ]; then
          echo "\"${1}\" provided is a symbolic link.."
          absPathForFile=`readlink -f ${1}`
          if [ `file ${absPathForFile} | egrep -c "LSB executable"` -eq 1 ]; then
             echo "symbolic link ${1} points to an executable.."       
          fi
      fi
   elif [ $# -gt 1 ]; then
        for i in $*
	do
	      if [ `file ${i} | egrep -c "ASCII|script text|empty"` -eq 1 ]; then
	          /bin/cat ${i}
              elif [ `file ${i} | egrep -c "LSB executable"` -eq 1 ]; then
	          echo "Argument provided - \"${i}\" is an Executable"
              elif [ `file $i | egrep -c "symbolic link"` -eq 1 ]; then
                  echo "\"${i}\" provided is a symbolic link.."
                  absPathForFile=`readlink -f ${i}`
                  if [ `file ${absPathForFile} | egrep -c "LSB executable"` -eq 1 ]; then
                     echo "symbolic link ${i} points to an executable.."       
                  fi
	      fi
	done
   elif [ $# -eq 0 ]; then
       echo "Provide an argument to \"cat\" command"
   fi
}
#######################################
# Your previous /Users/cmunukutla/.profile file was backed up as /Users/cmunukutla/.profile.macports-saved_2014-02-05_at_14:23:13

# MacPorts Installer addition on 2014-02-05_at_14:23:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#######################################
