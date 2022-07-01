# 7-Zip 22.00 X64-X86 with Extracting NSIS script
---
<https://sourceforge.net/p/sevenzip/discussion/45797/thread/cc72419c6f/#826f>:
![IgorLGPLexplanation](https://user-images.githubusercontent.com/61757638/149677339-13d5c962-333c-40ef-9653-f4fe8809d2be.png)

---

Changed default theme to:
<img src="https://i.imgur.com/PDEay1u.png" alt="default theme">

**Installers with Plus (+), OtherFiles and Portable versions contains by default the following**
   *codecs*:
       Zstandard v1.5.1
       Brotli v1.0.9
       LZ4 v1.9.2
       LZ5 v1.5
       Lizard v1.0
       Fast LZMA2 v1.0.1
       SHA-512
   *formats*:
       nrg
       isz
       mdf mds
       cue bin
       cso
       ccd img
       zisofs
       cdi
       gdi
       chd
       ecm

**Added possibility to use External DLL's by the following Portables:**
   7za.exe (Standalone Console)
   7zFM.exe (File Manager Standalone)
   7zr.exe (Reduced Standalone Console)
   7zz.exe (Standalone 2 Console)
If the 7z.dll file exist in this same location as the above mentioned portables, external 7z.dll file will be used instead of internal codecs.
(Please don't care about the error about missing 7z.dll file in above files - it's normal)

**Other files includes (x86/x64):**
   7z.dll (7z Plugin)
   7z.exe (7-Zip Console)
   7za.dll (7z Standalone Plugin)
   7zcl.exe (7-Zip client)
   7-ZipFar.dll (7-Zip Plugin for FAR Manager)
   7zra.dll (7z Reduced Standalone Plugin)
   7zS.sfx (7z Setup SFX)
   7zS2.sfx (7z Setup SFX small)
   7zxa.dll (7z Extracting Standalone Plugin)
   7zxr.dll (7z Extracting Reduced Standalone Plugin)
   LZMA.dll (LZMA library)
   LZMAc.exe (LZMA console)

zcl.exe (7z.dll client) supports only three following commands:
```
     7zcl.exe a archive.7z f1.txt f2.txt  : compress two files to archive.7z
     7zcl.exe l archive.7z   : List contents of archive.7z
     7zcl.exe x archive.7z   : eXtract files from archive.7z
```
And it needs 7z.dll to work.

The 32-bit (x86) version works on all OS's from Windows XP and newer,
and 64-bit (x64) version works on all 64-bit OS's from Windows XP-64 and above.

P.S.
It was compiled using VS2015CE.

---

Preventing being accused of "breaking the license" (qote from www.techopedia.com - link after the text):
#### What Does Lesser General Public License (LGPL) Mean?
* Lesser General Public License (LGPL) is a license for open-source software that allows for provisions for including elements of free software in either free or proprietary software. Lesser General Public License is sometimes referred to as "Library GPL" or "GNU libraries," and some associate it with the idea of engineering for libraries in shared resources.
#### Techopedia Explains Lesser General Public License (LGPL)
* In some ways, LGPL is considered a "weaker" license than the general public license. It provides less of a standard for source code analysis, but there are still requirements for transparency and attribution. For example, some industry insiders differ over the specific requirements attached to LGPL licenses, and in what ways users can put open-source projects into their own applications. Many experts recommend using an attorney to review an LGPL before including free software elements as part of a proprietary product. The wording of a license can make a difference in how it can be used, and some general characterizations fail to provide a full understanding of what an LGPL license allows and covers.

Above text taken from there: <https://www.techopedia.com/definition/3502/lesser-general-public-license-lgpl>

* If you still have a concern, please check the paragraphs 2a and 2b of the LGPL license: <https://www.gnu.org/licenses/lgpl-3.0.html>

## Source
* <https://www.7-zip.org/download.html>

## Licence
* <https://www.7-zip.org/license.txt>

## Credits
* <https://www.7-zip.org>

## Homepage of additional plugins used in the plus versions:
* <https://www.tc4shell.com/en/7zip/>

## Credits
* <https://www.tc4shell.com/>
