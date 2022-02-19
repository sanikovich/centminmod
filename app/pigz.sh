
# pigz 2.7
# start
my_file=pigz
# read -p "Press enter to continue"
wget https://www.zlib.net/pigz/$my_file.tar.gz
tar -xvf $my_file.tar.gz
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
# end
