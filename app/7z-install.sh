# 7z
# start
my_file=7z2107-linux-x64
# read -p "Press enter to continue"
wget https://www.7-zip.org/a/$my_file.tar.xz
7za x $my_file.tar.xz
tar -xzf $my_file.tar
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
rm -r $my_file.tar.xz
rm -r $my_file.tar
# end
