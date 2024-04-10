#compress and decompress file
clear
echo "File Compression"
echo "============================================================"
echo "Enter the file name to be Compressed"
read fname
echo "Size of the file before compression"
echo "------------------------------------------------------------"
wc -c $fname
gzip $fname
echo "Results of file compression"
echo "============================================================"
gzip -l $fname.gz
echo "Decompressing the file"
gunzip $fname.gz
echo "Size of the after decompression"
echo "-------------------------------------------------------------"
wc -c $fname
