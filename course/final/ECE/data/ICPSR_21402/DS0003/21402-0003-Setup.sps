*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 21402
*         CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
*                     STATES, TERRITORIES, AND TRIBES
*           (DATASET 0003: MARKET RATE SURVEY QUALITATIVE DATA)
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\21402-0003-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  NOTE:  Users should modify this setup file to suit their specific 
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove 
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da21402-0003.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=20231.
DATA LIST FILE=DATA /
            PIN 1-8 (A) STATETERRYTRIBE 9-48 (A)
 COMMENTSA1A1A 49-209 (A)  COMMENTSA2 210-327 (A)  COMMENTSA3 328-679 (A)
 COMMENTSA4 680-1199 (A) COMMENTSA5 1200-1596 (A) COMMENTSA7 1597-2252 (A)
 COMMENTSA8 2253-2460 (A) COMMENTSA8B 2461-2733 (A) COMMENTA9 2734-3410 (A)
 COMMENTSSECTIONA 3411-3812 (A) COMMENTSB1B2 3813-3966 (A) COMMENTSB3A 3967-4120 (A)
 COMMENTSB3B 4121-4290 (A) COMMENTSB3C 4291-4680 (A) COMMENTSB3D 4681-5340 (A)
 COMMENTSB3E 5341-5430 (A) COMMENTSB3F 5431-5596 (A) COMMENTSB3G 5597-5943 (A)
 COMMENTSB3H 5944-6134 (A) COMMENTSSECTIONB 6135-7022 (A) COMMENTSC1 7023-7167 (A)
 COMMENTSC1A 7168-7361 (A) COMMENTSC1B 7362-7866 (A) COMMENTSC2 7867-8192 (A)
 COMMENTSC2B 8193-8339 (A) COMMENTSC4C5 8340-9223 (A) COMMENTSC6 9224-9519 (A)
 COMMENTSC7 9520-9633 (A) COMMENTSC10C11 9634-9860 (A) COMMENTSC12C14 9861-10440 (A)
 COMMENTSC14A 10441-10703 (A) COMMENTSC16A 10704-10940 (A) COMMENTSC17 10941-11573 (A)
 COMMENTSC18 11574-11883 (A) COMMENTSSECTIONC 11884-13254 (A) COMMENTSD1 13255-13341 (A)
 COMMENTSD2A 13342-13718 (A) COMMENTSD3 13719-14127 (A) COMMENTSD4 14128-14550 (A)
 COMMENTSD5 14551-14744 (A) COMMENTSD6 14745-14949 (A) COMMENTSD8 14950-15420 (A)
 COMMENTSD9 15421-15651 (A) COMMENTSSECTIOND 15652-16280 (A) COMMENTSSECTIONE 16281-17049 (A)
 COMMENTSF1 17050-17121 (A) COMMENTSF2 17122-17757 (A) COMMENTSF2A 17758-18023 (A)
 COMMENTSF4 18024-18448 (A) COMMENTSF6 18449-18833 (A) COMMENTSF7F8 18834-19075 (A)
 COMMENTSSECTIONF 19076-20231 (A)
   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   PIN       'Oregon State University''s tracking system unique ID number' /
   STATETERRYTRIBE 'State/Territory/Tribe' /
   COMMENTSA1A1A 'Comments A1-A1a' /
   COMMENTSA2 'Comments A2' /
   COMMENTSA3 'Comments A3' /
   COMMENTSA4 'Comments A4' /
   COMMENTSA5 'Comments A5' /
   COMMENTSA7 'Comments A7' /
   COMMENTSA8 'Comments A8' /
   COMMENTSA8B 'Comments A8b' /
   COMMENTA9 'Comment A9' /
   COMMENTSSECTIONA 'Comments Section A' /
   COMMENTSB1B2 'Comments B1-B2' /
   COMMENTSB3A 'Comments B3a' /
   COMMENTSB3B 'Comments B3b' /
   COMMENTSB3C 'Comments B3c' /
   COMMENTSB3D 'Comments B3d' /
   COMMENTSB3E 'Comments B3e' /
   COMMENTSB3F 'Comments B3f' /
   COMMENTSB3G 'Comments B3g' /
   COMMENTSB3H 'Comments B3h' /
   COMMENTSSECTIONB 'Comments Section B' /
   COMMENTSC1 'Comments C1' /
   COMMENTSC1A 'Comments C1a' /
   COMMENTSC1B 'Comments C1b' /
   COMMENTSC2 'Comments C2' /
   COMMENTSC2B 'Comments C2b' /
   COMMENTSC4C5 'Comments C4-C5' /
   COMMENTSC6 'Comments C6' /
   COMMENTSC7 'Comments C7' /
   COMMENTSC10C11 'Comments C10-C11' /
   COMMENTSC12C14 'Comments C12-C14' /
   COMMENTSC14A 'Comments C14a' /
   COMMENTSC16A 'Comments C16a' /
   COMMENTSC17 'Comments C17' /
   COMMENTSC18 'Comments C18' /
   COMMENTSSECTIONC 'Comments Section C' /
   COMMENTSD1 'Comments D1' /
   COMMENTSD2A 'Comments D2a' /
   COMMENTSD3 'Comments D3' /
   COMMENTSD4 'Comments D4' /
   COMMENTSD5 'Comments D5' /
   COMMENTSD6 'Comments D6' /
   COMMENTSD8 'Comments D8' /
   COMMENTSD9 'Comments D9' /
   COMMENTSSECTIOND 'Comments Section D' /
   COMMENTSSECTIONE 'Comments Section E' /
   COMMENTSF1 'Comments F1' /
   COMMENTSF2 'Comments F2' /
   COMMENTSF2A 'Comments F2a' /
   COMMENTSF4 'Comments F4' /
   COMMENTSF6 'Comments F6' /
   COMMENTSF7F8 'F7-F8' /
   COMMENTSSECTIONF 'Comments Section F' /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
