#!/bin/bash
<<buatbineripiton
23.10.2023
=======
buat bineri piton supaya okay
14.11.2023
mau rilis ke umum 
copyright endro mei asmoro duitmoro@yahoo.com
02.05.2024
tambah disable audio dengan opsi s / silence kalau tanpa opsi maka play audio
21.02.2025 release untuk umum
buatbineripiton


nama_file=$1
argumenkedua=$2
nama_program=BiPit
namafilenya=$(echo $nama_file | sed 's/.py//g')
cek_namafile=$(echo $nama_file | grep ".py" | wc -l)

direktori_projek=projek_
lokasi_direktoriasal=$(pwd)
file_konfigurasi=$lokasi_direktoriasal/$direktori_projek/configuration_binarypython.txt

buat_filekonfigurasi() {
	# 27.11.2024 buat direktori jika tidak ada
if ! [[ -d $lokasi_direktoriasal/$direktori_projek ]];then	
	mkdir -v $lokasi_direktoriproyek
	echo -e "berhasil membuat $lokasi_direktoriasal/$lokasi_direktoriprojek"
fi

echo "# copyright © $(date +%Y) endro mei asmoro duitmoro@yahoo.com
# setelah tanda pagar tidak dibaca
# lokasi dimana lingkungan virtual python berada.Silakan ubah dan sesuaikan.
lokasiDirektoripython: /media/mint/dataku1/backup/kodeku/phphai/python
lokasiDirektoriproyek: $direktori_projek
fileMp3: /media/mint/dataku1/settingan/cctv_alarm/skripBerguna/mp3buatPlay/Alkhamdulillahproseskompilasisudahselesai.mp3
volumeSpeaker: 40" >  $file_konfigurasi

}

if  ! [ -f $file_konfigurasi ];then
	buat_filekonfigurasi
fi

lokasi_direktoritujuan=$(awk ' /lokasiDirektoripython:/ {print $2}' $file_konfigurasi)
nama_direktoriproyek=$(awk ' /lokasiDirektoriproyek:/ {print $2}' $file_konfigurasi)
filemp3=$(awk ' /fileMp3:/ {print $2}' $file_konfigurasi)
volumespeakernya=$(awk ' /volumeSpeaker:/ {print $2}' $file_konfigurasi)
lokasi_direktoriproyek=$lokasi_direktoriasal/$nama_direktoriproyek

# daftar variabel warna - warna
putih="\033[1;40m"
merah="\033[1;31m"
hijau="\033[1;32m"
kuning="\033[1;33m"
biru="\033[1;34m"
zero=$(tput sgr0)

buat_ceknamafileharusdiisi() {
if [[ $nama_file == "" ]] || [ $cek_namafile -eq 0 ];then
	echo -e "${merah}$nama_file${zero} masih kosong atau ${merah}tidak berakhiran .py${zero}" 
	echo -e "Masukkan nama File ${hijau}yang Akan dibuat Binerinya dengan benar$zero"
	exit 0
fi
}

buat_pindahkedirektoritujuan() {
echo -e "${biru}Mulai program $nama_program${zero}"
echo -e "${hijau}Saat ini Tanggal $(date)${zero}"
echo -e "Lokasi ${kuning}lingkungan virtual${zero} python Anda saat ini berada di ${kuning}$lokasi_direktoritujuan${zero}"
echo -e "Program $nama_program hanya membuat ${hijau}1 file${zero} bineri python"
echo -e "${merah}Tunggu sebentar ...${zero}"
	sleep 3
echo -e "Proses pindah Ke ${kuning}$lokasi_direktoritujuan${zero}"
cd  $lokasi_direktoritujuan && source venv/bin/activate && cd $lokasi_direktoriasal
echo -e "${hijau}horeee ... Berhasil pindah Ke direktori lingkungan virtual python $lokasi_direktoritujuan${zero}"
	sleep 2
}

buat_installnya() {
echo -e "${biru}Mulai proses Pembuatan bineri File $nama_file${zero}"
	pyinstaller --onefile $nama_file
echo -e "${hijau}Tanggal hari ini : $(date)${zero}"
echo -e "${hijau}$nama_file${zero} Berhasil dibuat Binarinya menjadi \033[1;35m$namafilenya\033[0m"
	rm -rf $lokasi_direktoriasal/buatAwalshalat.spec
echo -e "${kuning}$lokasi_direktoriasal/buatAwalshalat.spec Berhasil dihapus${zero}"
echo -e "${hijau}Silakan tunggu Sebentar cuma 2 detik aja${zero}"
	sleep 2
}

hapus_filedandirektoritakberguna() {
# 23.02.2025 19:27:36 hapus direktori dan file tak berguna
if [[ -d $lokasi_direktoriproyek ]];then
	cp -rf $lokasi_direktoriasal/dist/* $lokasi_direktoriasal && mv -f $lokasi_direktoriasal/dist/* $lokasi_direktoriproyek
	echo -e "${kuning}Berhasil duplikat $namafilenya ke $lokasi_direktoriasal dan $lokasi_direktoriproyek${zero}"
else
	mkdir -v $lokasi_direktoriproyek
	echo -e "berhasil membuat $lokasi_direktoriprojek"
	cp -rf $lokasi_direktoriasal/dist/* $lokasi_direktoriasal && mv -f $lokasi_direktoriasal/dist/* $lokasi_direktoriasal/projek_
fi
echo -e "${hijau}hasil Bineri $namafilenya Tersimpan di :${zero}"
echo -e "$lokasi_direktoriasal/$namafilenya"
	ls -alh $lokasi_direktoriasal/$namafilenya
echo -e "$lokasi_direktoriproyek/$namafilenya"
	ls -alh $lokasi_direktoriproyek/$namafilenya

echo -e "Hapus file dot spec $lokasi_direktoriasal/$namafilenya.spec"
	rm -rf $lokasi_direktoriasal/$namafilenya.spec
echo -e "Hapus direktori dist spec $lokasi_direktoriasal/dist"
	rm -rf $lokasi_direktoriasal/dist
echo -e "Hapus diirektori build $lokasi_direktoriasal/build"
	rm -rf $lokasi_direktoriasal/build
if [ -f $lokasi_direktoriasal/__pycache__ ];then
echo -e "Hapus direktori build $lokasi_direktoriasal/__pycache__"
	rm -rf $lokasi_direktoriasal/__pycache__
fi

modif_volumespeaker() {
        # 21.02.2025 beda versi beda kolom sesuaikan jika ada masalah
		baca_awalamixer=$(amixer sget 'Master'| grep -E '[%]+' | awk '{print $3}')
		amixer sset 'Master' $volumespeakernya &>/dev/null	
}

buat_memutaraudiodaftarjamataumenit() {
daftar_fileyangdiputar=$1
		modif_volumespeaker
		# 24.11.2024 menghilangkan -l 0 -d 0.6 --pitch 0.6 
		mpg123  -q --stereo --continue  $daftar_fileyangdiputar &>/dev/null
		amixer sset 'Master' $baca_awalamixer &>/dev/null
}

# 23.02.2025 19:29:53 tanpa parameter setelah selesai buat bineri memutar file audio
if [[ $argumenkedua == "s" ]];then
echo ""
else
buat_memutaraudiodaftarjamataumenit $filemp3
fi	
	
echo -e "${kuning}Lokasi direktori Terakhir adalah di $lokasi_direktoriasal${zero}"
echo -e "${hijau}Alkhamdu lillah. Ya Allah semoga program $namafilenya bermanfaat dunia akhirat.${zero} ${biru}Semoga doaku Dikabulkan Ya Allah.${zero}"
}

	buat_ceknamafileharusdiisi
	buat_pindahkedirektoritujuan
	buat_installnya
	hapus_filedandirektoritakberguna


