#!/bin/bash
# Colors
RED='\033[0;31m'
NC='\033[0m' # No Color
BLINK='\033[5m'
#
# Time stamp
dt=$(date '+%H:%M');
#
# Install gnutls-devel for CentOS 7
# yum install gnutls-devel libmpc-devel mpfr -y
cd ~
#
# Bash 5.1.8
# start
my_file=bash-5.1.8
my_name=bash
my_ver=5.1.8
ver=`bash --version | grep -Eo 'version [0-9].[0-9].[0-9]' | sed 's/version //g'`
if [[ "$ver" == "$my_ver" ]]
then
    echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
else



echo "  ########     ###     ######  ##     ##    #### ##    ##  ######  ########    ###    ##       ##       "
echo "  ##     ##   ## ##   ##    ## ##     ##     ##  ###   ## ##    ##    ##      ## ##   ##       ##       "
echo "  ##     ##  ##   ##  ##       ##     ##     ##  ####  ## ##          ##     ##   ##  ##       ##       "
echo "  ########  ##     ##  ######  #########     ##  ## ## ##  ######     ##    ##     ## ##       ##       "
echo "  ##     ## #########       ## ##     ##     ##  ##  ####       ##    ##    ######### ##       ##       "
echo "  ##     ## ##     ## ##    ## ##     ##     ##  ##   ### ##    ##    ##    ##     ## ##       ##       "
echo "  ########  ##     ##  ######  ##     ##    #### ##    ##  ######     ##    ##     ## ######## ######## "



    echo "Strating to upgrade $my_name to version $my_ver"
    # read -p "Press enter to continue"
    wget https://ftp.gnu.org/gnu/$my_name/$my_file.tar.gz
    tar -xzf $my_file.tar.gz
    cd $my_file/
    ./configure &
    process_id=$!
    wait $process_id
    make -j 4 &
    process_id=$!
    wait $process_id
    make install &
    process_id=$!
    wait $process_id
    cd ..
    rm -rf $my_file/
    rm -r $my_file.tar.gz
fi
# end
#
#
### SED ###
# start
my_file=sed-4.8
my_name=sed
my_ver=4.8
ver=`sed --version | grep -Eo 'sed \(GNU sed\) [0-9].[0-9]?[0-9]' | sed 's/sed (GNU sed) //g'`
if [[ "$ver" == "$my_ver" ]]
then
    echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
else



echo "   ######  ######## ########     #### ##    ##  ######  ########    ###    ##       ##       "
echo "  ##    ## ##       ##     ##     ##  ###   ## ##    ##    ##      ## ##   ##       ##       "
echo "  ##       ##       ##     ##     ##  ####  ## ##          ##     ##   ##  ##       ##       "
echo "   ######  ######   ##     ##     ##  ## ## ##  ######     ##    ##     ## ##       ##       "
echo "        ## ##       ##     ##     ##  ##  ####       ##    ##    ######### ##       ##       "
echo "  ##    ## ##       ##     ##     ##  ##   ### ##    ##    ##    ##     ## ##       ##       "
echo "   ######  ######## ########     #### ##    ##  ######     ##    ##     ## ######## ######## "


    echo "Strating to upgrade $my_name to version $my_ver"
    # read -p "Press enter to continue"
    wget https://ftp.gnu.org/gnu/$my_name/$my_file.tar.gz
    tar -xzf $my_file.tar.gz
    cd $my_file/
    ./configure &
    process_id=$!
    wait $process_id
    make -j 4 &
    process_id=$!
    wait $process_id
    make install &
    process_id=$!
    wait $process_id
    cd ..
    rm -rf $my_file/
    rm -r $my_file.tar.gz
fi
# end
#
# Grep
# start
my_file=grep-3.6
my_name=grep
my_ver=3.6
ver=`grep --version | grep -Eo 'grep \(GNU grep\) [0-9].[0-9]?[0-9]' | sed 's/grep (GNU grep) //g'`
if [[ "$ver" == "$my_ver" ]]
then
    echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
else

echo "   ######   ########  ######## ########     #### ##    ##  ######  ########    ###    ##       ##       "
echo "  ##    ##  ##     ## ##       ##     ##     ##  ###   ## ##    ##    ##      ## ##   ##       ##       "
echo "  ##        ##     ## ##       ##     ##     ##  ####  ## ##          ##     ##   ##  ##       ##       "
echo "  ##   #### ########  ######   ########      ##  ## ## ##  ######     ##    ##     ## ##       ##       "
echo "  ##    ##  ##   ##   ##       ##            ##  ##  ####       ##    ##    ######### ##       ##       "
echo "  ##    ##  ##    ##  ##       ##            ##  ##   ### ##    ##    ##    ##     ## ##       ##       "
echo "   ######   ##     ## ######## ##           #### ##    ##  ######     ##    ##     ## ######## ######## "

    echo "Strating to upgrade $my_name to version $my_ver"
    # read -p "Press enter to continue"
    wget https://ftp.gnu.org/gnu/$my_name/$my_file.tar.gz
    tar -xzf $my_file.tar.gz
    cd $my_file/
    ./configure &
    process_id=$!
    wait $process_id
    make -j 4 &
    process_id=$!
    wait $process_id
    make install &
    process_id=$!
    wait $process_id
    cd ..
    rm -rf $my_file/
    rm -r $my_file.tar.gz
fi
# end
#
#
# gawk
# start
my_file=gawk-5.1.0
my_name=gawk
my_ver=5.1.0
ver=`gawk --version | grep -Eo 'GNU Awk [0-9].[0-9]?[0-9].[0-9]?[0-9]' | sed 's/GNU Awk //g'`
if [[ "$ver" == "$my_ver" ]]
then
    echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
else



echo "     ###    ##      ## ##    ##    #### ##    ##  ######  ########    ###    ##       ##       "
echo "    ## ##   ##  ##  ## ##   ##      ##  ###   ## ##    ##    ##      ## ##   ##       ##       "
echo "   ##   ##  ##  ##  ## ##  ##       ##  ####  ## ##          ##     ##   ##  ##       ##       "
echo "  ##     ## ##  ##  ## #####        ##  ## ## ##  ######     ##    ##     ## ##       ##       "
echo "  ######### ##  ##  ## ##  ##       ##  ##  ####       ##    ##    ######### ##       ##       "
echo "  ##     ## ##  ##  ## ##   ##      ##  ##   ### ##    ##    ##    ##     ## ##       ##       "
echo "  ##     ##  ###  ###  ##    ##    #### ##    ##  ######     ##    ##     ## ######## ######## "


    echo "Strating to upgrade $my_name to version $my_ver"
    # read -p "Press enter to continue"
    wget https://ftp.gnu.org/gnu/$my_name/$my_file.tar.gz
    tar -xzf $my_file.tar.gz
    cd $my_file/
    ./configure &
    process_id=$!
    wait $process_id
    make -j 4 &
    process_id=$!
    wait $process_id
    make install &
    process_id=$!
    wait $process_id
    cd ..
    rm -rf $my_file/
    rm -r $my_file.tar.gz
fi
# end
#
# coreutils
# start
my_file=coreutils-8.32
my_name=coreutils
my_ver=8.32
ver=`split --version | grep -Eo 'split \(GNU coreutils\) [0-9].[0-9]?[0-9]' | sed 's/split (GNU coreutils) //g'`
if [[ "$ver" == "$my_ver" ]]
then
    echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
else



echo "   ######   #######  ########  ######## ##     ## ######## #### ##        ######     #### ##    ##  ######  ########    ###    ##       ##       "
echo "  ##    ## ##     ## ##     ## ##       ##     ##    ##     ##  ##       ##    ##     ##  ###   ## ##    ##    ##      ## ##   ##       ##       "
echo "  ##       ##     ## ##     ## ##       ##     ##    ##     ##  ##       ##           ##  ####  ## ##          ##     ##   ##  ##       ##       "
echo "  ##       ##     ## ########  ######   ##     ##    ##     ##  ##        ######      ##  ## ## ##  ######     ##    ##     ## ##       ##       "
echo "  ##       ##     ## ##   ##   ##       ##     ##    ##     ##  ##             ##     ##  ##  ####       ##    ##    ######### ##       ##       "
echo "  ##    ## ##     ## ##    ##  ##       ##     ##    ##     ##  ##       ##    ##     ##  ##   ### ##    ##    ##    ##     ## ##       ##       "
echo "   ######   #######  ##     ## ########  #######     ##    #### ########  ######     #### ##    ##  ######     ##    ##     ## ######## ######## "


    echo "Strating to upgrade $my_name to version $my_ver"
    # read -p "Press enter to continue"
    wget https://ftp.gnu.org/gnu/$my_name/$my_file.tar.gz
    tar -xzf $my_file.tar.gz
    cd $my_file/
    export FORCE_UNSAFE_CONFIGURE=1
    ./configure &
    process_id=$!
    wait $process_id
    make -j 4 &
    process_id=$!
    wait $process_id
    make install &
    process_id=$!
    wait $process_id
    cd ..
    rm -rf $my_file/
    rm -r $my_file.tar.gz
fi
# end
#
### Curl ###
# start
# my_file=curl-7.78.0
# my_name=curl
# my_ver=7.78.0
# ver=`curl --version | grep -Eo 'curl [0-9].[0-9]?[0-9].[0-9]?[0-9]' | sed 's/curl //g'`
# if [[ "$ver" == "$my_ver" ]]
# then
  #     echo -e "[$dt] ${BLINK}Your Curl version is $ver is allready updated!${NC}"
  # else
  #     echo "Strating to upgrade $my_name to version $my_ver"
  #     read -p "Press enter to continue"
  #     wget https://curl.se/download/$my_file.tar.gz
  #     tar -xzf $my_file.tar.gz
  #     cd $my_file/
  #     ./configure --with-openssl &
  #     process_id=$!
  #     wait $process_id
  #     make -j 4 &
  #     process_id=$!
  #     wait $process_id
  #     make install &
  #     process_id=$!
  #     wait $process_id
  #     cd ..
  #     rm -rf $my_file/
  #     rm -r $my_file.tar.gz
  # fi
  # end
#
### perl ###
# start
# my_file=perl-5.34.0
# my_name=perl
# my_ver=5.34.0
# ver=`perl --version | grep -Eo 'v[0-9].[0-9]?[0-9].[0-9]?[0-9]' | sed 's/v//g'`
# if [[ "$ver" == "$my_ver" ]]
# then
#     echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
# else
#     echo "Strating to upgrade $my_name to version $my_ver"
#     read -p "Press enter to continue"
#     wget https://www.cpan.org/src/5.0/$my_file.tar.gz
#     tar -xzf $my_file.tar.gz
#     cd $my_file/
#     ./Configure -des -des &
#     process_id=$!
#     wait $process_id
#     make -j 4 &
#     process_id=$!
#     wait $process_id
#     make install &
#     process_id=$!
#     wait $process_id
#     cd ..
#     rm -rf $my_file/
#     rm -r $my_file.tar.gz
# fi
# end
#

### Vim ###
# # start
# my_file=master.zip
# my_name=vim-master
# my_ver=8.2.3331
# ver=`vim --version | grep -Eo 'IMproved [0-9].[0-9]?[0-9].[0-9]?[0-9]?[0-9]?[0-9]' | sed 's/IMproved //g'`
# if [[ "$ver" == "$my_ver" ]]
# then
#     echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
# else
#     echo "Strating to upgrade $my_name to version $my_ver"
#     read -p "Press enter to continue"
#     wget https://github.com/vim/vim/archive/master.zip
#     unzip $my_file
#     cd $my_name/
#     cd src/
#     ./configure &
#     process_id=$!
#     wait $process_id
#     make -j 4 &
#     process_id=$!
#     wait $process_id
#     make install &
#     process_id=$!
#     wait $process_id
#     cd ..
#     cd ..
#     rm -rf $my_name/
#     rm -r $my_file
# fi
# # end
#
### Wget ###
# start
# my_file=wget-1.21.1
# my_name=wget
# my_ver=1.21.1
# ver=`wget --version | grep -Eo 'Wget [0-9].[0-9]?[0-9].[0-9]?[0-9]' | sed 's/Wget //g'`
# if [[ "$ver" == "$my_ver" ]]
# then
  #     echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
  # else
  #     echo "Strating to upgrade $my_name to version $my_ver"
  #     read -p "Press enter to continue"
  #     wget https://ftp.gnu.org/gnu/$my_name/$my_file.tar.gz
  #     tar -xzf $my_file.tar.gz
  #     cd $my_file/
  #     ./configure &
  #     process_id=$!
  #     wait $process_id
  #     make -j 4 &
  #     process_id=$!
  #     wait $process_id
  #     make install &
  #     process_id=$!
  #     wait $process_id
  #     cd ..
  #     rm -rf $my_file/
  #     rm -r $my_file.tar.gz
  # fi
  # Edit in vim /usr/local/src/centminmod/centmin.sh
  # Version of Wget from 1.20.3 to 1.21.1
  # end
  #
  #
  ### GCC Lib ###
  # start
  # my_file=gcc-11.2.0
  # my_name=gcc
  # my_ver=11.2.0
  # ver=`gcc --version | grep -Eo 'gcc \(GCC\) [0-9].[0-9]?[0-9].[0-9]?[0-9]' | sed 's/gcc (GCC) //g'`
  # if [[ "$ver" == "$my_ver" ]]
  # then
    #     echo -e "[$dt] ${BLINK}Your $my_name version is $ver is allready updated!${NC}"
    # else
    #     echo "Strating to upgrade $my_name to version $my_ver"
    #     # read -p "Press enter to continue"
    #     wget https://ftp.gnu.org/gnu/gcc/gcc-11.2.0/$my_file.tar.gz
    #     tar -xzf $my_file.tar.gz
    #     cd $my_file/
    #     ./configure --disable-multilib --enable-languages=c,c++ &
    #     process_id=$!
    #     wait $process_id
    #     make -j 4 &
    #     process_id=$!
    #     wait $process_id
    #     make install &
    #     process_id=$!
    #     wait $process_id
    #     cd ..
    #     rm -rf $my_file/
    #     rm -r $my_file.tar.gz
    # fi
    # end
