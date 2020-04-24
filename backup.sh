#(path sesuaikan/adjust it)
cd /apps/jboss-eap-6.4/slave*/servers/ > /dev/null 2>&1 #
namaNode=$(ls) > /dev/null 2>&1 #########################
#########################################################
echo " ========================================================== "
echo "|Jalankan scripts ini di node manapun yang akan anda backup|"
echo " ========================================================== "
echo "|Backup $namaNode ....                    "
sleep 5
#############################################################
cd /apps/jboss-eap-6.4/slave*/data/content > /dev/null 2>&1 #
Object=$(find -type f -name content) > /dev/null 2>&1 #######
mkdir /apps/backup /apps/backup/$namaNode > /dev/null 2>&1 ##
rm -f /apps/backup/$namaNode/* ##############################
\cp $Object /apps/backup/$namaNode/ > /dev/null 2>&1 ########
mv /apps/backup/$namaNode/content /apps/backup/$namaNode/$namaNode-$(date +\%Y-\%m-\%d-\%T).war > /dev/null 2>&1 
echo " ========================================="
echo "|Done gans...                             "
echo "|Cek disini /apps/backup/$namaNode ...    "
echo " ========================================="
sleep 5 #########################################
