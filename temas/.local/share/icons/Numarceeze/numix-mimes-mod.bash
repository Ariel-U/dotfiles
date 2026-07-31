#!/bin/bash
## This script modifies some mimetype icons (by making them more uniform)
## from Numix icon theme and changes "fill" color of some mimetype icons
## from the same icon theme.
## Move it to the directory where your Numix icon theme folder resides and run it.

archs_imgs () {
	local archv
	archv='ln -s application-archive.svg application-'

	rm application-archive-zip.svg
	rm application-vnd.ms-cab-compressed.svg
	rm application-x-ace.svg
	rm application-x-7z-compressed.svg
	rm application-x-arc.svg
	rm application-x-arj.svg
	rm application-x-bzip.svg
	rm application-x-bzip-compressed.svg
	rm application-x-bzip-compressed-tar.svg
	rm application-x-compressed-tar.svg
	rm application-x-cpio.svg
	rm application-x-gzip.svg
	rm application-x-lha.svg
	rm application-x-lhz.svg 
	rm application-x-lrzip.svg 
	rm application-x-lrzip-compressed-tar.svg
	rm application-x-lzip.svg 
	rm application-x-lzip-compressed-tar.svg 
	rm application-x-lzma.svg 
	rm application-x-lzma-compressed-tar.svg 
	rm application-x-lzop.svg 
	rm application-x-rar.svg 
	rm application-x-shar.svg 
	rm application-x-stuffit.svg 
	rm application-x-tar.svg 
	rm application-x-tha.svg 
	rm application-x-thz.svg 
	rm application-x-tzo.svg 
	rm application-x-webarchive.svg 
	rm application-x-xar.svg
	rm application-x-xz.svg 
	rm application-x-xz-compressed-tar.svg 
	rm application-x-zoo.svg
	${archv}archive-zip.svg
	${archv}vnd.ms-cab-compressed.svg
	${archv}x-ace.svg
	${archv}x-7z-compressed.svg
	${archv}x-arc.svg
	${archv}x-arj.svg
	${archv}x-bzip.svg
	${archv}x-bzip-compressed.svg
	${archv}x-bzip-compressed-tar.svg
	${archv}x-compressed-tar.svg
	${archv}x-cpio.svg
	${archv}x-gzip.svg
	${archv}x-lha.svg
	${archv}x-lhz.svg 
	${archv}x-lrzip.svg 
	${archv}x-lrzip-compressed-tar.svg
	${archv}x-lzip.svg 
	${archv}x-lzip-compressed-tar.svg 
	${archv}x-lzma.svg 
	${archv}x-lzma-compressed-tar.svg 
	${archv}x-lzop.svg 
	${archv}x-rar.svg 
	${archv}x-shar.svg 
	${archv}x-stuffit.svg 
	${archv}x-tar.svg 
	${archv}x-tha.svg 
	${archv}x-thz.svg 
	${archv}x-tzo.svg 
	${archv}x-webarchive.svg 
	${archv}x-xar.svg
	${archv}x-xz.svg
	${archv}x-xz-compressed-tar.svg 
	${archv}x-zoo.svg

	rm application-image-jpg.svg  ; ln -s application-images.svg application-image-jpg.svg 
	rm application-image-tga.svg  ; ln -s application-images.svg application-image-tga.svg 
	rm image-x-xpixmap.svg ; ln -s application-images.svg image-x-xpixmap.svg
}

chclr () {
	## IMAGE 38a34e
	sed -r -i -e '/style=\"fill\:#/ s/39a34f/65a557/g' -e '/style=\"fill\:#/ s/38a34e/65a557/g' -e '/style=\"fill\:#/ s/37a34d/65a557/g' -e '/style=\"fill\:#/ s/35a14c/65a557/g' application-image* image*
	## AUDIO
	sed -r -i '/style=\"fill\:#/ s/9b4a85/9c698e/g' application-audio* audio-x-smart* audio-midi*
	## ARCHIVE
	sed -r -i '/style=\"fill\:#/ s/c19553/a7946f/g' application-archive*
	## VIDEO
	sed -r -i -e '/style=\"fill\:#/ s/302490/65829f/g' -e '/style=\"fill\:#/ s/2f238f/65829f/g' -e '/style=\"fill\:#/ s/2f228e/65829f/g' application-video.svg
	## TORRENT
	sed -r -i -e '/style=\"fill\:#/ s/00853e/8b74bc/g' -e '/style=\"fill\:#/ s/00853d/8b74bc/g' application-torrent*
	## VECTOR 04aa9c
	sed -r -i -e '/style=\"fill\:#/ s/05aa9d/4fa59f/g' -e '/style=\"fill\:#/ s/04aa9c/4fa59f/g' -e '/style=\"fill\:#/ s/03aa9c/4fa59f/g' application-vector* 'image-x-svg+xml.svg' image-x-wmf.svg image-x-xfig.svg image-svg* image-wmf.svg image-x-emf.svg image-cgm.svg image-emf.svg
	## PDF
	sed -r -i -e '/style=\"fill\:#/ s/e01818/b34c4c/g' -e '/style=\"fill\:#/ s/df1818/b34c4c/g' -e '/style=\"fill\:#/ s/de1818/b34c4c/g' application-pdf.svg
	## ODT
	sed -r -i '/style=\"fill\:#/ s/3468ce/5f8bd8/g' application-vnd.oasis.opendocument.text* application-word* application-vnd.openxmlformats-officedocument.wordprocessingml* application-rtf* wps-office-doc*
	## JAVA SCRIPT	
	sed -r -i -e '/style=\"fill\:#/ s/e6b81a/c9856d/g' -e '/style=\"fill\:#/ s/e5b819/c9856d/g' application-javascript.svg
	## CSS
	sed -r -i -e '/style=\"fill\:#/ s/0c72ba/b67681/g' -e '/style=\"fill\:#/ s/0b71b9/b67681/g' -e '/style=\"fill\:#/ s/0a70b9/b67681/g' text-x-css.svg
}

cd Numix/16/mimetypes ; archs_imgs ; chclr
cd ../../22/mimetypes ; archs_imgs ; chclr
cd ../../24/mimetypes ; archs_imgs ; chclr
cd ../../32/mimetypes ; archs_imgs ; chclr
cd ../../48/mimetypes ; archs_imgs ; chclr
cd ../../64/mimetypes ; archs_imgs ; chclr

