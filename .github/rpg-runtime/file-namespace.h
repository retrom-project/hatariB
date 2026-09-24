#ifndef RETROM_HATARIB_FILE_NAMESPACE_H
#define RETROM_HATARIB_FILE_NAMESPACE_H

/* Hatari's file helpers collide with RetroArch's bundled 7-Zip helpers. */
#define File_Read hatarib_File_Read
#define File_Close hatarib_File_Close

#endif
