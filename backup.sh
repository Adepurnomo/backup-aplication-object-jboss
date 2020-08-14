cd /APPS/jboss-eap-6.4/slave*/servers/ > /dev/null 2>&1 
namaNode=$(ls) > /dev/null 2>&1 
echo ""
echo " ========================================================== "
echo "|Jalankan scripts ini di node manapun yang akan anda backup|"
echo " ========================================================== "
echo ""
echo " ------------------------------------------"
echo "|Backup $namaNode ....                     |"
echo " ------------------------------------------"
echo ""
sleep 5
cd /APPS/jboss-eap-6.4/slave*/servers/*/data/content > /dev/null 2>&1
Object=$(find -type f -name content) > /dev/null 2>&1 
mkdir /APPS/backup /APPS/backup/$namaNode > /dev/null 2>&1
rm -f /APPS/backup/$namaNode/* 
\cp $Object /APPS/backup/$namaNode/$namaNode-$(date +\%Y-\%m-\%d).war > /dev/null 2>&1
cd /APPS/backup/$namaNode/
echo " ------------------------------------------"
echo "|Compress objek...                         |"
echo " ------------------------------------------"
echo ""
env GZIP=-9 tar -czf $namaNode-$(date +\%Y-\%m-\%d).tar.gz $namaNode-* > /dev/null 2>&1
echo " ------------------------------------------"
echo "|              Done gans...                |"
echo "|            ---------------               |"
echo "|Cek dsni /APPS/backup/$namaNode ...       |"
echo " ------------------------------------------"
sleep 10

