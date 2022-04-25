# MS-DOS 6.22 Custom Setup
MS-DOS 6.22 Custom Installer - Visual Basic for DOS
## Bootdisk directory
The installer must be booted from a floppy disk or image of DOS to successfully install MS-DOS 6.22. In addition to the uploaded files, the following files must be added to the image.
### Files not included:
* xdvd2.sys
* vide-cdd.sys
* gcdrom.sys
* eltorito.sys (or any other CD drivers)
* shsucdx.exe (or replacement)
* ctmouse.exe (or other mouse driver - optional but highly recommended)
* doskey.com (optional if autoexec.bat edited)
* xmsdsk.exe (or other ramdisk with manual drive letter)
* shutdown.com
## DOS622 directory
This directory must be placed inisde the root of the CD image. It also needs the components in ZIP files, as well as PKUNZIP. The files can be recreated with successful searches for them, most were found in Wengier and Roy's MS-DOS 7.1 unoffical CD.
