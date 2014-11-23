*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 21402
*         CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
*                     STATES, TERRITORIES, AND TRIBES
*          (DATASET 0002: MARKET RATE SURVEY OPEN ENDED RESPONSES
*                                  DATA)
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
*  data file is physically located (e.g., "c:\temp\21402-0002-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da21402-0002.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=13989.
DATA LIST FILE=DATA /
             PIN 1-8 (A) STATETERRTRIBE 9-48 (A)
     A2B_OPEN 49-577 (A)  A4A_AGENCY 578-681 (A)     A4A_R_R 682-881 (A)
 A4A_UNIVERSITY 882-971 (A)   A4A_FIRM 972-1011 (A) A4A_OTHER 1012-1057 (A)
   A6AOPEN 1058-1622 (A)   B1DOPEN 1623-1666 (A) B2A_D_6OPEN 1667-1784 (A)
  B3A2OPEN 1785-1958 (A)  B3B2OPEN 1959-2056 (A)   B3COPEN 2057-2135 (A)
  B3C2OPEN 2136-2160 (A)  B3D2OPEN 2161-2174 (A)  B3E2OPEN 2175-2183 (A)
  B3F2OPEN 2184-2295 (A)  B3G2OPEN 2296-2420 (A)  B3H2OPEN 2421-2473 (A)
    C3OPEN 2474-2648 (A)   C5AOPEN 2649-2829 (A)   C5DOPEN 2830-2960 (A)
    C8OPEN 2961-3046 (A)   C9COPEN 3047-3083 (A)   C9EOPEN 3084-3347 (A)
   C15OPEN 3348-4861 (A)  C16_OPEN 4862-5015 (A) NON_STAND_OPEN 5016-5171 (A)
   C19OPEN 5172-5320 (A)  C20GOPEN 5321-5520 (A)  C20POPEN 5521-5871 (A)
  C20WOPEN 5872-5998 (A)  C20XOPEN 5999-6150 (A)   D1GOPEN 6151-6292 (A)
 D1E_1OPEN 6293-6314 (A) D2A_7OPEN 6315-6423 (A) D3_OTHER_OPEN 6424-6593 (A)
  D4A_OPEN 6594-6715 (A)  D4B_OPEN 6716-6797 (A)  D4G_OPEN 6798-7037 (A)
  D5A_OPEN 7038-7214 (A)  D5B_OPEN 7215-8629 (A)  D6A_OPEN 8630-9207 (A)
  D6B_OPEN 9208-9295 (A)  D7_OPEN 9296-10107 (A) D8_OPEN 10108-10331 (A)
 D9A1_OPEN 10332-10836 (A) D10A_OPEN 10837-11516 (A) E1A_OPEN 11517-11670 (A)
 E1B_OPEN 11671-11761 (A) E1D_OPEN 11762-11960 (A) E2F_OPEN 11961-12088 (A)
 F3_OPEN 12089-12319 (A) F5_OPEN 12320-12684 (A) F6_OTHER_OPEN 12685-12884 (A)
 F6C2_OPEN 12885-13336 (A) F7E_OPEN 13337-13525 (A) F8A_OPEN 13526-13989 (A)

   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   PIN       'Oregon State University''s tracking system unique ID number' /
   STATETERRTRIBE 'State/Territory/Tribe' /
   A2B_OPEN  '[open-ended] -- list the number and titles of all statutes'+
     ' or administrative rules that affect or govern MRS'/
   A4A_AGENCY 'to A4a_Other  "[open-ended] -- Organizations names "' /
   A4A_R_R   'Organizations names' /
   A4A_UNIVERSITY 'Organizations names' /
   A4A_FIRM  'Organizations names' /
   A4A_OTHER 'Organizations names' /
   A6AOPEN   '[open-ended] captures their concerns if they indicated 1 or 2' /
   B1DOPEN   '[open-ended] captures the database of the ''other'' source' /
   B2A_D_6OPEN '[open-ended] captures ''other'' reasons' /
   B3A2OPEN  '[open-ended] stratified by what characteristics?' /
   B3B2OPEN  '[open-ended] stratified by what characteristics?' /
   B3COPEN   '[open-ended] specify which ones (family, friends, neighbors)' /
   B3C2OPEN  '[open-ended] stratified by what characteristics?' /
   B3D2OPEN  '[open-ended] stratified by what characteristics?' /
   B3E2OPEN  '[open-ended] stratified by what characteristics?' /
   B3F2OPEN  '[open-ended] stratified by what characteristics?' /
   B3G2OPEN  '[open-ended] stratified by what characteristics?' /
   B3H2OPEN  '[open-ended] stratified by what characteristics?' /
   C3OPEN    '[open-ended] what other languages?' /
   C5AOPEN   '[open-ended] dollar amount of the financial incentive.' /
   C5DOPEN   '[open-ended] other incentives that were used' /
   C8OPEN    '[open-ended] what other languages?' /
   C9COPEN   '[open-ended] dollar amount of the financial incentive.' /
   C9EOPEN   '[open-ended] other incentives that were used' /
   C15OPEN   '[open-ended] describe the procedures used to check for'+
     ' consistency of rate data'/
   C16_OPEN  '[open-ended] other no fee programs' /
   NON_STAND_OPEN '[open-ended] non-standard care is defined as?' /
   C19OPEN   '[open-ended] specify other provider/facility information'+
     ' collected or available.'/
   C20GOPEN  '[open-ended] specify other' /
   C20POPEN  '[open-ended] specify other' /
   C20WOPEN  '[open-ended] specify other' /
   C20XOPEN  '<none>' /
   D1GOPEN   '[open-ended] specify other types of providers/facilities'+
     ' who were excluded'/
   D1E_1OPEN '[open-ended] what percent led to exclusion' /
   D2A_7OPEN '[open-ended] specify other weighting method for child'+
     ' care slots'/
   D3_OTHER_OPEN '[open-ended] other geographic areas' /
   D4A_OPEN  '[open-ended] what hours define part-day?' /
   D4B_OPEN  '[open-ended] How many days defined part-week?' /
   D4G_OPEN  '[open-ended] what other analyses?' /
   D5A_OPEN  '[open-ended] what standard mode was used?' /
   D5B_OPEN  '[open-ended] what method or formula was used to convert'+
     ' the reported rates to the standard mode?'/
   D6A_OPEN  '[open-ended] how was child care accessibility calculated?' /
   D6B_OPEN  '[open-ended] to approximately what percentile of the market'+
     ' do current rates provide access?'/
   D7_OPEN   '[open-ended] describe the methodological problems or issues' /
   D8_OPEN   '[open-ended] describe what changes or revisions were made'+
     ' to the market rate survey methods'/
   D9A1_OPEN '[open-ended] describe this method' /
   D10A_OPEN '[open-ended] if not, why not?' /
   E1A_OPEN  '<none>' /
   E1B_OPEN  '[open-ended] url of web posting' /
   E1D_OPEN  '[open-ended] other way results were published or disseminated' /
   E2F_OPEN  '[open-ended] other groups the results were shared with' /
   F3_OPEN   '[open-ended] describe ''for some categories''' /
   F5_OPEN   '[open-ended] other significant factors, not listed in F4,'+
     ' that influenced setting current payment rates?'/
   F6_OTHER_OPEN '[open-ended] other geographic areas' /
   F6C2_OPEN '[open-ended] how were the payment rates established for'+
     ' family, friends, or neighbors?'/
   F7E_OPEN  '[open-ended] other type of fees paid to providers through'+
     ' the subsidy program?'/
   F8A_OPEN  '[open-ended] how were these rates established for geographic'+
     ' areas with low or no prices?'/
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
