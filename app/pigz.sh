
# pigz 2.7
#  https://ostechnix.com/pigz-compress-and-decompress-files-in-parallel-in-linux/
# start
my_file=pigz
# read -p "Press enter to continue"
wget https://www.zlib.net/pigz/$my_file.tar.gz
tar -xvf $my_file.tar.gz
cd $my_file/
make
cp pigz /usr/local/bin/
cp unpigz /usr/local/bin/
cd ..
rm -rf $my_file/
rm -r $my_file.tar.gz
# end
