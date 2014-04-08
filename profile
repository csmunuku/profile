HISTFILESIZE=10000
##### Aliases #####
alias superman='ssh 172.18.210.82'
alias c9='ssh pppdipcal1ty.corp.intuit.net'
alias mysvn='ssh cmunukutla-admin@qymprdeasmsvn01.ie.intuit.net'
#####################################
#####################################
##### Puppet Aliases #####
alias prod_ppm='ssh cmunukutla-admin@qymprdppm03.ie.intuit.net'
alias pp_ppm='ssh cmunukutla-admin@qymrtbppm03.ieptc.intuit.net'
#####################################
#####################################

#####################################    #######  # ###### #  #####################################
##################################  ####  ######  #  ####  #  #####################################
################################  ##############  ##  ##  ##  #####################################
###############################  ###############  ###    ###  #####################################
###############################  ###############  ####  ####  #####################################
################################  ##############  ##########  #####################################
##################################  ############  ##########  #####################################
#####################################   ########  ##########  #####################################

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
# Pharos Env
#####################################
alias pharos='ssh c00000011887.pharos.intuit.com -l pharos_user'
alias pharosP='ssh c00000011887.pharos.intuit.com -l pharos_priv_user'
#####################################
# ES-EAM Aliases
#####################################
alias eam='cd /home/cmunukutla/scripts/text_files/eam; pwd'
alias inq='cd /home/cmunukutla/scripts/text_files/inquira; pwd'
alias ppm='cd /home/cmunukutla/scripts/text_files/ppm; pwd'
alias remedy='cd /home/cmunukutla/scripts/text_files/remedy; pwd'

#####################################
# BOS/OFMSM Aliases
#####################################
alias ofmsm='cd /home/cmunukutla/scripts/text_files/ofmsm; pwd'

#####################################
# WCG Aliases
#####################################
alias shop='sudo su - shopintuit';
alias deploy='cd /intuit/latest_intuit/jboss_server/app1/deploy; pwd'
#ControlTier Aliases
alias ib='cd /export/home/shopintuit/ctier/ctl/depots/Intuit/deployments/IntuitBuilder; pwd'
alias imb='cd /export/home/shopintuit/ctier/ctl/depots/Intuit/deployments/IntuitModuleBuilder; pwd'

#aliases specific to ssh'ing to specific boxes
alias rls='ssh esprdrls4.bos.intuit.com'
alias rls4='ssh esprdrls4.bos.intuit.com'
alias rls2='ssh esprdrls2.bos.intuit.com'
alias rls5='ssh esprdrls5.bos.intuit.com'
alias rls6='ssh esprdrls6.bos.intuit.com'
alias c4='ssh escvsprd4.bos.intuit.com'
alias c5='ssh escvsprd5.bos.intuit.com'
alias c6='ssh escvsprd6.bos.intuit.com -l wcg'
alias c7='echo cmunukutla-admin@escvsprd7.bos.intuit.com; ssh cmunukutla-admin@escvsprd7.bos.intuit.com'
alias qa1='ssh esqa1wsatg.ptc.intuit.com'
alias qa2='ssh esqa2wsatg.ptc.intuit.com'
alias stg='ssh esstgwsatg.ptc.intuit.com'
alias stage='ssh esstgwsatg.ptc.intuit.com'
alias mon='ssh esprdmon4.ie.intuit.com'
alias nfs='ssh esnfs1.ie.intuit.com'
alias nfs1='ssh esnfs1.ie.intuit.com'
alias nfs2='ssh esnfs2.ie.intuit.com'
alias nfs3='ssh esnfs3.ie.intuit.com'
alias ptcnfs='ssh esltnfs1.ptc.intuit.com'
alias enigma='ssh enigma.wcg.intuit.com'
alias cadev='ssh escadevwsatg.ptc.intuit.com'
alias ttdev='ssh esttdevwsatg.ptc.intuit.com'
alias instant='ssh qynprdestap67.ie.intuit.net'
alias atg12='ssh esprdatg12.ie.intuit.com'

#10.1 servers
alias owsm='ssh qyndevowsmgap01.data.bosptc.intuit.net'
alias jb='ssh qymprdctgts01.corp.intuit.net'

# InQuira servers


# EASM
alias divirt='echo "as EASM"; ssh divirt.wcg.intuit.com -l easm'
#####

# CVS config
#CVSROOT=:ext:cmunukutla@escvsprd.bos.intuit.com:/cvs/root
#CVS_RSH=ssh
#export CVSROOT CVS_RSH

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
#*****
app()
{
  if [ $# -eq 1 ]; then
     case $1 in
          [2-3][0-9]|[4][0-7]|[5][1-8]) h_numb="$1"
             ssh qynprdestap${h_numb}.ie.intuit.net
            ;;
          *) echo "Wrong input..";;
     esac
  fi
}
alias 92a='cat /export/home/shopintuit/bin/chandra/92_app.txt'
web()
{
  if [ $# -eq 1 ]; then
     case $1 in
          [0-4][0-9]|[15][0-9]) h_numb="$1"
            ssh qypprdestws${h_numb}.ie.intuit.net
            ;;
          *) echo "Wrong input..";;
     esac
  fi
}
alias 92w='cat /export/home/shopintuit/bin/chandra/92_web.txt'
#*****
tomcat()
{
   if [ \( "`uname -n`" = "escvsprd6.bos.intuit.com" -o "`uname -n`" = "escvsprd7.bos.intuit.com" \) -a "$LOGNAME" = "shopintuit" ]; then
       cd /export/home/shopintuit/ctier/workbench/bin; pwd
   fi
   ps -ef | grep "org.apache.catalina.startup.Bootstrap" | grep -v grep
}
#*****
jobcenter()
{
   if [ \( "`uname -n`" = "escvsprd6.bos.intuit.com" -o "`uname -n`" = "escvsprd7.bos.intuit.com" \) -a "$LOGNAME" = "shopintuit" ]; then
       cd /export/home/shopintuit/ctier/pkgs/jobcenter-0.7/bin; pwd
   fi
   ps -ef | grep "/export/home/shopintuit/ctier/pkgs/jobcenter-0.7/start.jar" | grep -v grep
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
#*****
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
#*****
#####*****
urldir()
{
  echo "cd /intuit/latest_intuit/jboss_server/app1/deploy/Intuit.ear/atg_bootstrap.war/WEB-INF/ATG-INF/home/localconfig/intuit/scs/url"
  echo "/JBossATG/intuit/core/atg_server/localconfig/intuit/scs/urlties"
  echo "cd /intuit/latest_csr/jboss_server/csr/deploy/CSR.ear/atg_bootstrap.war/WEB-INF/ATG-INF/home/localconfig/intuit/scs/url"
}
#*****
#####*****
atgpro()
{
  echo "view /intuit/latest_intuit/scripts/.atgbash_profile"
}
#*****
#####*****
cmdlog()
{
  if [ "`uname -n`" = "qymprdeasmct01.ie.intuit.net" ]; then
       echo "want to tail the command.log y/Y/n/N:"
       read uInput
       if [ "$uInput" = "y" -o "$uInput" = "Y" ]; then
          tail -40 /app/ctier/ctl/var/logs/command.log
       else
          echo "Here is the command.log file info"
          echo "tail -f /app/ctier/ctl/var/logs/command.log"
       fi
  fi
}
#*****
#####*****
super()
{
  if [ `uname -n` = "superman" -a "$LOGNAME" = "cmunukutla" ]; then
      echo "Taking Backup of Profile."
      cd ~; cp .bash_profile ~/ProBKP/.bash_profile_`date '+%Y%m%d_%H%M%S'`

      echo "Copying .bash_profile from escvsprd7.bos.intuit.com to Superman"
      scp -q cmunukutla@escvsprd7.bos.intuit.com:/export/home/cmunukutla/.bash_profile /home/cmunukutla

      echo "Copying .bash_profile as .chandra_profile Onto \"wcg\" user account on escvsprd6.bos.intuit.com" 
      scp -q ~cmunukutla/.bash_profile wcg@escvsprd6.bos.intuit.com:/export/home/wcg/.chandra_profile

      echo "Copying .bash_profile Onto esprdrls4.bos.intuit.com" 
      scp -q ~cmunukutla/.bash_profile cmunukutla@esprdrls4.bos.intuit.com:

      echo "Copying .bash_profile Onto esprdrls2.bos.intuit.com" 
      scp -q ~cmunukutla/.bash_profile cmunukutla@esprdrls2.bos.intuit.com:

      echo "Copying .bash_profile Onto esprdrls6.bos.intuit.com" 
      scp -q ~cmunukutla/.bash_profile cmunukutla@esprdrls6.bos.intuit.com:

#      echo "Copying .bash_profile Onto escvsprd4.bos.intuit.com" 
#      scp -q ~cmunukutla/.bash_profile cmunukutla@escvsprd4.bos.intuit.com:

      echo "Copying .bash_profile Onto enigma.wcg.intuit.com" 
      scp -q ~cmunukutla/.bash_profile cmunukutla@enigma.wcg.intuit.com:

      echo "Copying .bash_profile Onto esltnfs1.ptc.intuit.com for cmunukutla-admin account" 
      scp -q ~cmunukutla/.bash_profile cmunukutla-admin@esltnfs1.ptc.intuit.com:
  fi
}
#*****
#####*****
proshop()
{
  if [ "`uname -n`" = "escvsprd7.bos.intuit.com" -a "$LOGNAME" = "shopintuit" ]; then
      echo "Copying .bash_profile from cmunukutla to Shopintuit's home dir as .chandra_profile"
      cp ~cmunukutla/.bash_profile ~shopintuit/.chandra_profile;
      echo "Profile is copied."
      echo "Profile is being copied to other important boxes"
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on escvsprd6.bos.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@escvsprd6.bos.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on escvsprd9.bos.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@escvsprd9.bos.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on escvsprd5.bos.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@escvsprd5.bos.intuit.com:
#      echo "Copying .chandra_profile from esprdrls4.bos.intuit.com to Shopintuit's home dir on escvsprd4.bos.intuit.com"
#      scp -q ~shopintuit/.chandra_profile shopintuit@escvsprd4.bos.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on esprdrls2.bos.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@esprdrls2.bos.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on esprdrls5.bos.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@esprdrls5.bos.intuit.com:
#      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on esprdrls6.bos.intuit.com"
#      scp -q ~shopintuit/.chandra_profile shopintuit@esprdrls6.bos.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on instanttat2.bos.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@instanttat2.bos.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to Shopintuit's home dir on esltnfs1.ptc.intuit.com"
      scp -q ~shopintuit/.chandra_profile shopintuit@esltnfs1.ptc.intuit.com:
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to cmunukutla-admin's home dir as .bash_profile on esnfs1.ie.intuit.com"
      scp -q ~shopintuit/.chandra_profile cmunukutla-admin@esnfs1.ie.intuit.com:/export/home/cmunukutla-admin/.bash_profile
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to cmunukutla-admin's home dir as .bash_profile on esnfs2.ie.intuit.com"
      scp -q ~shopintuit/.chandra_profile cmunukutla-admin@esnfs2.ie.intuit.com:/export/home/cmunukutla-admin/.bash_profile
      echo "Copying .chandra_profile from escvsprd7.bos.intuit.com to cmunukutla-admin's home dir as .bash_profile on esnfs3.ie.intuit.com"
      scp -q ~shopintuit/.chandra_profile cmunukutla-admin@esnfs3.ie.intuit.com:/export/home/cmunukutla-admin/.bash_profile
  fi
}
#*****
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
#*****
#####*****
#To modify the Title of the Putty Window
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}"; echo -ne "\007"'
#export SERVER=`uname -n`
#printf '\033]2;'$SERVER'\07'
#*****
#####*****
my()
{
  cd ~shopintuit/bin/chandra
}
if [ "$LOGNAME" = "shopintuit" ]; then
     case `uname -n` in
       qymprdeasmct01.ie.intuit.net) my
                                 ;;
                              *) uname -n; echo $PWD
                                 ;;
     esac
fi
#*****
#####*****
#####*****
chkBlds()
{
  case `uname -n` in
      qymprdeasmct01.ie.intuit.net)
                              ctl_command=ctl
                               ;;
	  oprdestct400.corp.intuit.net)
                              ctl_command=ctl
                               ;;
	  qymprdeasmmgt01.ie.intuit.net)
                              ctl_command=ctl
                               ;;
     							   
        *) uname -n; echo $PWD;;
  esac
   ps -ef | grep "${ctl_command} -p Intuit" | grep "buildstamp" | grep -v grep | grep -v "org.apache.catalina.startup.Bootstrap"
   echo "##############################################################################"
   ps -ef | grep "${ctl_command} -p Intuit" | grep "buildstamp" | grep -v grep | grep -v "org.apache.catalina.startup.Bootstrap"  | awk '{print $2,$NF}'

   echo "##############################################################################"
   if [ `ps -ef | grep "load-objects -- -format projectxml" | grep -cv grep` -gt 0 ]; then
      echo "load-objects running currently"
      echo "##############################################################################"
      ps -ef | grep "load-objects -- -format projectxml" | grep -v grep
   fi
}
#*****
blds()
{
# Checks if any builds are running and displays them
  if [ "$LOGNAME" = "shopintuit" -o "$LOGNAME" = "cmunukutla" ]; then
     case `uname -n` in       
       qymprdeasmct01.ie.intuit.net) chkBlds
                               ;;
	   oprdestct400.corp.intuit.net) chkBlds
                               ;;							  
	   qymprdeasmmgt01.ie.intuit.net) chkBlds
                               ;;
                              *) uname -n; echo $PWD
                                 ;;
     esac
  fi
}
#####*****
if [ "`uname -n`" = "superman" ]; then
   JAVA_HOME="/opt/jdk1.6.0_13"
   export JAVA_HOME
   alias tom='cd /opt/tomcat/apache-tomcat-6.0.18/; pwd'
   PATH=/opt/wcg/svnapache1.6/bin:$PATH; export PATH
fi
#*****
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
      Harry="harish_gundecha@intuit.com"
      Chad="chad_smith@intuit.com"
      Bhanu="bhanu_nagarur@intuit.com"
      Suman="suman_kanuganti@intuit.com"
      Chris="christopher_endsley@intuit.com"
      WCGInfra="globalwcginfrastructure@intuit.com"
      Chandra="chandra_munukutla@intuit.com"
      Chandu="csmunuku@gmail.com"
      ToAddress="chandra_munukutla@intuit.com"

      stty erase ^H
      if [ $# -gt 0 -a $# -lt 2 ]; then
          ToArg=`echo ${1} | tr A-Z a-z`
          case "${ToArg}" in
               harry) ToAddress="${Chandra},${Harry}"
                      ;;
               chad) ToAddress="${Chandra},${Chad}"
                      ;;
               bhanu) ToAddress="${Chandra},${Bhanu}"
                      ;;
               suman) ToAddress="${Chandra},${Suman}"
                      ;;
               chris|christopher) ToAddress="${Chandra},${Chris}"
                      ;;
               wcg|wcginfra|infra) ToAddress="${Chandra},${WCGInfra}"
                      ;;
               chandra) ToAddress="${Chandra}"
                      ;;
               chandu) ToAddress="${Chandra},${Chandu}"
                      ;;
               *) ToAddress="${Chandra}"
                  echo "Default - Sending email to ${Chandra}"
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
# to login to various hosts using different application accoutns
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
#*****
#####*****
ui()
{
  if [ "$LOGNAME" = "shopintuit" -a "`uname -n`" = "escvsprd6.bos.intuit.com" -o "`uname -n`" = "escvsprd7.bos.intuit.com" ]; then
       cd ~shopintuit/ctierui
       pwd
  fi
}
#*****
#####*****
benv()
{
# benv function expects BuildName as argument and displays the Environment name
   if [ "$#" -eq 1 ]; then
      if [ "$LOGNAME" = "shopintuit" -a "`uname -n`" = "escvsprd6.bos.intuit.com" -o "`uname -n`" = "escvsprd7.bos.intuit.com" ]; then
         if [ -f /export/home/shopintuit/ctierui/${1}.xml ]; then
            grep "setting type=\"AtgEnvironment\" description=\"ATG Environment\"" /export/home/shopintuit/ctierui/${1}.xml | cut -d'=' -f5 | cut -d"\"" -f2
         fi
      fi
   else
      echo "Please provide BuildName as argument to this function"
   fi
}
#*****
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
surl()
{
  HOSTNAME=`hostname`
  if [ `echo $HOSTNAME | grep -c ^qy` -eq 1 ]; then
     echo "cmunukutla@`hostname -s`.data.bosptc.intuit.net:${PWD}"
  else
     echo "cmunukutla@${HOSTNAME}:${PWD}"
  fi
}
#####*****
listLY()
{
# Lists all the files which has LY in them and not having latest in the text.
# Easier to get a list of the things needed to be deleted when the space is getting filled.
  if [ $# -eq 1 ]; then
     ls -alrt | grep LY | grep -v latest | awk '{print $NF}' | sort | tr '\n' ' '
  else
     ls -alrt | grep LY | grep -v latest | awk '{print $NF}' | sort
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
#######################################

alias vvp='cd /home/cmunukutla/Priya;pwd'
alias pd='cd /home/cmunukutla/Priya/Domains; pwd'
alias wls='cd /app/Oracle/Middleware/wlserver_10.3; pwd'
alias sshpt='~cmunukutla/sshpt/sshpt.py'
alias pt='cd ~cmunukutla/scripts/text_files/primetime; pwd'

#######################################
#######################################
webdav()
{
  case `hostname` in
     qymprdeasmct01.ie.intuit.net) echo "cd /app2/www/webdav";;
     qymprdeasmmgt01.ie.intuit.net) echo "cd /app/www/webdav";;
     oprdestct400.corp.intuit.net) echo "cd /app_local/www/webdav";;
     qymrtbeasmct02.ieptc.intuit.net) echo "cd /app/www/webdav";;
     qymrtbeasmct01.ieptc.intuit.net) echo "cd /app/www/webdav";;
     oprdestct401.corp.intuit.net) echo "cd /app_local/www/webdav";;
     *) echo "Not a CT host??";;
  esac
}
alias tools='cd /app2/www/tools; pwd'
#######################################
alias 101='ssh shopintuit@qymprdeasmmgt01.ie.intuit.net'
alias 92lv='ssh shopintuit@oprdestct400.corp.intuit.net'
alias 92pre='ssh shopintuit@qymrtbeasmct02.ieptc.intuit.net'
alias eos='ssh shopintuit@oprdestct401.corp.intuit.net'
alias eospre='ssh shopintuit@qymrtbeasmct01.ieptc.intuit.net'
dirTo=/app/chandra
#######################################
#######################################
92appsync()
{
  for i in 20 21
  do
    rsync -aruvz --delete /export/home/shopintuit/bin/chandra/app/. shopintuit@qynprdestap${i}.ie.intuit.net:${dirTo}
  done
}
#######################################
#######################################
92websync()
{
  for i in 01 02
  do
    rsync -aruvz --delete /export/home/shopintuit/bin/chandra/web/. shopintuit@qypprdestws${i}.ie.intuit.net:${dirTo}
  done
}
#######################################
#######################################
92appsync_lvdc()
{
  for i in 400 401
  do
    rsync -aruvz --delete /export/home/shopintuit/bin/chandra/app/. shopintuit@qynprdestap${i}.ie.intuit.net:${dirTo}
  done
}
#######################################
#######################################
92websync_lvdc()
{
  for i in 01 02
  do
    rsync -aruvz --delete /export/home/shopintuit/bin/chandra/web/. shopintuit@qypprdestws${i}.ie.intuit.net:${dirTo}
  done
}
#######################################
#######################################
101appsync()
{
  for i in 01 02
  do
    rsync -aruvz --delete /export/home/shopintuit/bin/chandra/101app/. shopintuit@qynprdestap${i}.ie.intuit.net:${dirTo}
  done
}
#######################################
#######################################
101websync()
{
  for i in 50 51
  do
    rsync -aruvz --delete /export/home/shopintuit/bin/chandra/101web/. shopintuit@qypprdestws${i}.ie.intuit.net:${dirTo}
  done
}
#######################################
#######################################
101sync()
{
  rsync -aruvz /export/home/shopintuit/bin/chandra/101app/. shopintuit@qymprdeasmmgt01.ie.intuit.net:/export/home/shopintuit/bin/chandra/101app
  rsync -aruvz /export/home/shopintuit/bin/chandra/101web/. shopintuit@qymprdeasmmgt01.ie.intuit.net:/export/home/shopintuit/bin/chandra/101web
}
#######################################
#######################################
pp_sync()
{
  scp shopintuit@esqa1wsatg.ptc.intuit.com:/ehp/latest_ehp/profile/shopintuit/bin/* /export/home/shopintuit/bin/chandra/pp_scripts/
}
#######################################
#######################################
ct()
{
  echo "9.2 CT        --> 92ct		--> qymprdeasmct01.ie.intuit.net"
  echo "9.2 LVDC CT   --> 92lvct	--> oprdestct400.corp.intuit.net"
  echo "9.2 QDC-PP CT --> 92ppct	--> qymrtbeasmct02.ieptc.intuit.net"
  echo "10.1 CT       --> 101ct		--> qymprdeasmmgt01.ie.intuit.net"
  echo "EOS QDC CT    --> eosct		--> qymrtbeasmct01.ieptc.intuit.net"
  echo "EOS LVDC CT   --> eoslvct	--> oprdestct401.corp.intuit.net"
}
#######################################
#######################################
ctc()
{
  echo "9.2 CT        --> 92ct		--> qymprdeasmct01.ie.intuit.net"
  alias 92ct='ssh cmunukutla-admin@qymprdeasmct01.ie.intuit.net'
  echo "9.2 LVDC CT   --> 92lvct	--> oprdestct400.corp.intuit.net"
  alias 92lvct='ssh cmunukutla-admin@oprdestct400.corp.intuit.net'
  echo "9.2 QDC-PP CT --> 92ppct	--> qymrtbeasmct02.ieptc.intuit.net"
  alias 92ppct='ssh cmunukutla-admin@qymrtbeasmct02.ieptc.intuit.net'
  echo "10.1 CT       --> 101ct		--> qymprdeasmmgt01.ie.intuit.net"
  alias 101ct='ssh cmunukutla-admin@qymprdeasmmgt01.ie.intuit.net'
  echo "EOS QDC CT    --> eosct		--> qymrtbeasmct01.ieptc.intuit.net"
  alias eosct='ssh cmunukutla-admin@qymrtbeasmct01.ieptc.intuit.net'
  echo "EOS LVDC CT   --> eoslvct	--> oprdestct401.corp.intuit.net"
  alias eoslvct='ssh cmunukutla-admin@oprdestct401.corp.intuit.net'
}
#######################################
#######################################
cts()
{
  echo "9.2 CT        --> ssh shopintuit@qymprdeasmct01.ie.intuit.net"
  echo "9.2 LVDC CT   --> ssh shopintuit@oprdestct400.corp.intuit.net"
  echo "9.2 QDC-PP CT --> ssh shopintuit@qymrtbeasmct02.ieptc.intuit.net"
  echo "10.1 CT       --> ssh shopintuit@qymprdeasmmgt01.ie.intuit.net"
  echo "EOS QDC CT    --> ssh shopintuit@qymrtbeasmct01.ieptc.intuit.net"
  echo "EOS LVDC CT   --> ssh shopintuit@oprdestct401.corp.intuit.net"
}
#######################################
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
#######################################
email()
{
  cat /export/home/shopintuit/bin/chandra/email.txt
}
#######################################
#######################################
cmds()
{
  cat /export/home/shopintuit/bin/chandra/cmds.txt
}
#######################################
#######################################

##
# Your previous /Users/cmunukutla/.profile file was backed up as /Users/cmunukutla/.profile.macports-saved_2014-02-05_at_14:23:13
##

# MacPorts Installer addition on 2014-02-05_at_14:23:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

