*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 21402
*         CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
*                     STATES, TERRITORIES, AND TRIBES
*              (DATASET 0004: MARKET RATE SURVEY MERGED DATA)
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
*  data file is physically located (e.g., "c:\temp\21402-0004-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da21402-0004.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=35835.
DATA LIST FILE=DATA /
                 ID 1-10           PIN 11-18 (A)
                A1 19-26           STT 27-76 (A)               A1A 77-84
 COMMENTSA1A1A 85-245 (A)              A2 246-253  COMMENTSA2 254-371 (A)
            A2A1 372-379            A2A2 380-387            A2A3 388-395
            A2A4 396-403            A2A5 404-411            A2A6 412-419
    A2B_OPEN 420-948 (A)              A3 949-956 COMMENTSA3 957-1308 (A)
           A4A 1309-1316           A4B 1317-1324           A4C 1325-1332
           A4D 1333-1340           A4E 1341-1348           A4F 1349-1356
           A4G 1357-1364           A4H 1365-1372           A4I 1373-1380
           A4J 1381-1388 A4A_AGENCY 1389-1492 (A)   A4A_R_R 1493-1692 (A)
 A4A_UNIVERSITY 1693-1782 (A)  A4A_FIRM 1783-1822 (A) A4A_OTHER 1823-1868 (A)
 COMMENTSA4 1869-2388 (A)            A5 2389-2396 COMMENTSA5 2397-2793 (A)
           A5A 2794-2801          A6_1 2802-2809          A6_2 2810-2817
          A6_3 2818-2825   A6AOPEN 2826-3390 (A) A7_LEAD_STAFF1 3391-3398
 A7_LEAD_STAFF2 3399-3406 A7_LEAD_STAFF3 3407-3414   A7_LEAD_NON 3415-3422
 A7_OTHER_STAFF1 3423-3430 A7_OTHER_STAFF2 3431-3438 A7_OTHER_STAFF3 3439-3446
  A7_OTHER_NON 3447-3454 COMMENTSSECTIONA 3455-3856 (A)         A7_RR 3857-3864
 A7_UNIVERSITY 3865-3872       A7_FIRM 3873-3880      A7_OTHER 3881-3888
      A7_TOTAL 3889-3896 COMMENTSA7 3897-4552 (A)            A8 4553-4560
 COMMENTSA8 4561-4768 (A)           A8A 4769-4776           A8B 4777-4784
 COMMENTSA8B 4785-5057 (A)           B1A 5058-5065           B1B 5066-5073
           B1C 5074-5081           B1D 5082-5089   B1DOPEN 5090-5133 (A)
         B2A_1 5134-5141         B2A_2 5142-5149         B2A_3 5150-5157
         B2A_4 5158-5165         B2A_5 5166-5173         B2A_6 5174-5181
 B2A_D_6OPEN 5182-5299 (A)         B2B_1 5300-5307         B2B_2 5308-5315
         B2B_3 5316-5323         B2B_4 5324-5331         B2B_5 5332-5339
         B2B_6 5340-5347         B2C_1 5348-5355         B2C_2 5356-5363
         B2C_3 5364-5371         B2C_4 5372-5379         B2C_5 5380-5387
         B2C_6 5388-5395         B2D_1 5396-5403         B2D_2 5404-5411
         B2D_3 5412-5419         B2D_4 5420-5427         B2D_5 5428-5435
         B2D_6 5436-5443 COMMENTSB1B2 5444-5597 (A)           B3A 5598-5605
          B3A1 5606-5613          B3A2 5614-5621  B3A2OPEN 5622-5795 (A)
 COMMENTSB3A 5796-5949 (A)           B3B 5950-5957          B3B1 5958-5965
          B3B2 5966-5973  B3B2OPEN 5974-6071 (A) COMMENTSB3B 6072-6241 (A)
           B3C 6242-6249   B3COPEN 6250-6328 (A)          B3C1 6329-6336
          B3C2 6337-6344  B3C2OPEN 6345-6369 (A) COMMENTSB3C 6370-6759 (A)
           B3D 6760-6767          B3D1 6768-6775          B3D2 6776-6783
  B3D2OPEN 6784-6797 (A) COMMENTSB3D 6798-7457 (A)           B3E 7458-7465
          B3E1 7466-7473          B3E2 7474-7481  B3E2OPEN 7482-7490 (A)
 COMMENTSB3E 7491-7580 (A)           B3F 7581-7588          B3F1 7589-7596
          B3F2 7597-7604  B3F2OPEN 7605-7716 (A) COMMENTSB3F 7717-7882 (A)
           B3G 7883-7890          B3G1 7891-7898          B3G2 7899-7906
  B3G2OPEN 7907-8031 (A) COMMENTSB3G 8032-8378 (A)           B3H 8379-8386
          B3H1 8387-8394          B3H2 8395-8402  B3H2OPEN 8403-8455 (A)
 COMMENTSB3H 8456-8646 (A) COMMENTSSECTIONB 8647-9534 (A)            C1 9535-9542
 COMMENTSC1 9543-9687 (A)          C1A1 9688-9695          C1A2 9696-9703
          C1A3 9704-9711 COMMENTSC1A 9712-9905 (A)           C1B 9906-9913
 COMMENTSC1B 9914-10418 (A)          C2 10419-10426 COMMENTSC2 10427-10752 (A)
        C2A1 10753-10760        C2A2 10761-10768        C2A3 10769-10776
        C2A4 10777-10784        C2A5 10785-10792        C2A6 10793-10800
        C2A7 10801-10808         C2B 10809-10816 COMMENTSC2B 10817-10963 (A)
          C3 10964-10971  C3OPEN 10972-11146 (A)         C4A 11147-11154
         C4B 11155-11162         C4C 11163-11170         C4D 11171-11178
         C5A 11179-11186 C5AOPEN 11187-11367 (A)         C5B 11368-11375
         C5C 11376-11383         C5D 11384-11391 C5DOPEN 11392-11522 (A)
 COMMENTSC4C5 11523-12406 (A)          C6 12407-12414 COMMENTSC6 12415-12710 (A)
          C7 12711-12718 COMMENTSC7 12719-12832 (A)          C8 12833-12840
  C8OPEN 12841-12926 (A)         C9A 12927-12934         C9B 12935-12942
         C9C 12943-12950 C9COPEN 12951-12987 (A)         C9D 12988-12995
         C9E 12996-13003 C9EOPEN 13004-13267 (A)         C10 13268-13275
         C11 13276-13283 COMMENTSC10C11 13284-13510 (A)         C12 13511-13518
         C13 13519-13526         C14 13527-13534        C14A 13535-13542
 COMMENTSC14A 13543-13805 (A) COMMENTSC12C14 13806-14385 (A)         C15 14386-14393
 C15OPEN 14394-15907 (A)  C16_HOURLY 15908-15915   C16_DAILY 15916-15923
  C16_WEEKLY 15924-15931 C16_MONTHLY 15932-15939 C16_PARTDAY 15940-15947
 C16_PARTWEEK 15948-15955      C16_HS 15956-15963    C16_PREK 15964-15971
     C16_MHS 15972-15979   C16_OTHER 15980-15987 C16_OPEN 15988-16141 (A)
      C16_IN 16142-16149      C16_TD 16150-16157      C16_PS 16158-16165
      C16_SA 16166-16173    C16_SASY 16174-16181     C16_SAS 16182-16189
    C16_NONE 16190-16197     C16A_IN 16198-16205     C16A_TD 16206-16213
     C16A_PS 16214-16221     C16A_SA 16222-16229 COMMENTSC16A 16230-16466 (A)
      NON_ST 16467-16474 NON_STAND_OPEN 16475-16630 (A)         C17 16631-16638
 COMMENTSC17 16639-17271 (A)         C18 17272-17279        C18A 17280-17287
 COMMENTSC18 17288-17597 (A)        C19A 17598-17605        C19B 17606-17613
        C19C 17614-17621        C19D 17622-17629        C19E 17630-17637
 C19OPEN 17638-17786 (A)        C20A 17787-17794        C20B 17795-17802
        C20C 17803-17810        C20D 17811-17818        C20E 17819-17826
        C20F 17827-17834        C20G 17835-17842 C20GOPEN 17843-18042 (A)
        C20H 18043-18050        C20I 18051-18058        C20J 18059-18066
        C20K 18067-18074        C20L 18075-18082        C20M 18083-18090
        C20N 18091-18098        C20O 18099-18106        C20P 18107-18114
 C20POPEN 18115-18465 (A)        C20Q 18466-18473        C20R 18474-18481
        C20S 18482-18489        C20T 18490-18497        C20U 18498-18505
        C20V 18506-18513        C20W 18514-18521 C20WOPEN 18522-18648 (A)
        C20X 18649-18656 C20XOPEN 18657-18808 (A) COMMENTSSECTIONC 18809-20179 (A)
         D1A 20180-20187         D1B 20188-20195         D1C 20196-20203
         D1D 20204-20211         D1E 20212-20219 D1E_1OPEN 20220-20241 (A)
         D1F 20242-20249         D1G 20250-20257 D1GOPEN 20258-20399 (A)
 COMMENTSD1 20400-20486 (A)          D2 20487-20494        D2A1 20495-20502
        D2A2 20503-20510        D2A3 20511-20518        D2A4 20519-20526
        D2A5 20527-20534        D2A6 20535-20542        D2A7 20543-20550
 D2A_7OPEN 20551-20659 (A) COMMENTSD2A 20660-21036 (A)   D3_COUNTY 21037-21044
      D3_ZIP 21045-21052   D3_REGION 21053-21060    D3_STATE 21061-21068
    D3_OTHER 21069-21076 D3_OTHER_OPEN 21077-21246 (A)       D3_IN 21247-21254
       D3_TD 21255-21262       D3_PS 21263-21270       D3_SA 21271-21278
     D3_SASY 21279-21286      D3_SAS 21287-21294     D3_NONE 21295-21302
   D3_CENTER 21303-21310   D3_FAMILY 21311-21318    D3_GROUP 21319-21326
   D3_INHOME 21327-21334      D3_FFN 21335-21342 D3_SACENTER 21343-21350
    D3_SAACT 21351-21358   D3_HOURLY 21359-21366    D3_DAILY 21367-21374
   D3_WEEKLY 21375-21382  D3_MONTHLY 21383-21390 COMMENTSD3 21391-21799 (A)
         D4A 21800-21807 D4A_OPEN 21808-21929 (A)         D4B 21930-21937
 D4B_OPEN 21938-22019 (A)         D4C 22020-22027         D4D 22028-22035
         D4E 22036-22043         D4F 22044-22051         D4G 22052-22059
 D4G_OPEN 22060-22299 (A) COMMENTSD4 22300-22722 (A)          D5 22723-22730
 D5A_OPEN 22731-22907 (A) D5B_OPEN 22908-24322 (A) COMMENTSD5 24323-24516 (A)
          D6 24517-24524 D6A_OPEN 24525-25102 (A) D6B_OPEN 25103-25190 (A)
 COMMENTSD6 25191-25395 (A)          D7 25396-25403 D7_OPEN 25404-26215 (A)
          D8 26216-26223 D8_OPEN 26224-26447 (A) COMMENTSD8 26448-26918 (A)
          D9 26919-26926         D9A 26927-26934 D9A1_OPEN 26935-27439 (A)
        D9A2 27440-27447 COMMENTSD9 27448-27678 (A)         D10 27679-27686
 D10A_OPEN 27687-28366 (A) COMMENTSSECTIOND 28367-28995 (A)         E1A 28996-29003
 E1A_OPEN 29004-29157 (A)         E1B 29158-29165 E1B_OPEN 29166-29256 (A)
         E1C 29257-29264         E1D 29265-29272 E1D_OPEN 29273-29471 (A)
         E2A 29472-29479         E2B 29480-29487         E2C 29488-29495
         E2D 29496-29503         E2E 29504-29511         E2F 29512-29519
 E2F_OPEN 29520-29647 (A) COMMENTSSECTIONE 29648-30416 (A)          F1 30417-30424
 COMMENTSF1 30425-30496 (A)          F2 30497-30504 COMMENTSF2 30505-31140 (A)
         F2A 31141-31148 COMMENTSF2A 31149-31414 (A)          F3 31415-31422
 F3_OPEN 31423-31653 (A)         F4A 31654-31661         F4B 31662-31669
         F4C 31670-31677         F4D 31678-31685         F4E 31686-31693
         F4F 31694-31701         F4G 31702-31709         F4H 31710-31717
         F4I 31718-31725    F4A1 31726-31733 (A)    F4A2 31734-31741 (A)
    F4A3 31742-31749 (A) COMMENTSF4 31750-32174 (A) F5_OPEN 32175-32539 (A)
   F6_COUNTY 32540-32547      F6_ZIP 32548-32555   F6_REGION 32556-32563
    F6_STATE 32564-32571    F6_OTHER 32572-32579 F6_OTHER_OPEN 32580-32779 (A)
       F6_IN 32780-32787       F6_TD 32788-32795       F6_PS 32796-32803
       F6_SA 32804-32811     F6_SASY 32812-32819      F6_SAS 32820-32827
     F6_NONE 32828-32835   F6_CENTER 32836-32843   F6_FAMILY 32844-32851
    F6_GROUP 32852-32859   F6_INHOME 32860-32867 F6_SACENTER 32868-32875
    F6_SAACT 32876-32883  F6_SPECIAL 32884-32891        F6C1 32892-32899
 F6C2_OPEN 32900-33351 (A) COMMENTSF6 33352-33736 (A)         F7A 33737-33744
         F7B 33745-33752         F7C 33753-33760         F7D 33761-33768
         F7E 33769-33776 F7E_OPEN 33777-33965 (A)          F8 33966-33973
 F8A_OPEN 33974-34437 (A) COMMENTSF7F8 34438-34679 (A) COMMENTSSECTIONF 34680-35835 (A)

   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   ID        '9 digit identification number assigned by Survey Monkey' /
   PIN       'Oregon State University''s tracking system unique ID number' /
   A1        'Jurisdiction (state, territory, or tribe) they represent' /
   STT       'Name of state, territory, or tribe' /
   A1A       'State or territory regulates child care providers who'+
     ' arelocated on an Indian reservation or in a tribal service area'/
   COMMENTSA1A1A 'Comments A1-A1a' /
   A2        'Legally binding statutes or administrative rules that'+
     ' affectMRS'/
   COMMENTSA2 'Comments A2' /
   A2A1      'how frequently market rate surveys are conducted' /
   A2A2      'the content of market rate surveys' /
   A2A3      'how the survey is done; the survey process' /
   A2A4      'who must be included in the survey sample' /
   A2A5      'the relationship of maximum payment rates to rate findings' /
   A2A6      'other aspects of the rate setting process' /
   A2B_OPEN  '[open-ended] -- list the number and titles of all statutes'+
     ' or administrative rules that affect or govern MRS'/
   A3        'Date the most recent MRS was completed' /
   COMMENTSA3 'Comments A3' /
   A4A       'determined which providers/facilities to include' /
   A4B       'created survey questions' /
   A4C       'provided assistance to help providers complete survey' /
   A4D       'collected rate data from providers/facilities' /
   A4E       'entered rate data or inputted rate data into licensing'+
     ' or R&Rdatabase'/
   A4F       'cleaned the rate data' /
   A4G       'analyzed rate data' /
   A4H       'interpreted findings' /
   A4I       'wrote reports on findings' /
   A4J       'disseminated results' /
   A4A_AGENCY 'to A4a_Other  "[open-ended] -- Organizations names "' /
   A4A_R_R   'Organizations names' /
   A4A_UNIVERSITY 'Organizations names' /
   A4A_FIRM  'Organizations names' /
   A4A_OTHER 'Organizations names' /
   COMMENTSA4 'Comments A4' /
   A5        'Use of an advisory group to guide MRS' /
   COMMENTSA5 'Comments A5' /
   A5A       'Type of advisory group' /
   A6_1      'accuracy of the rate findings' /
   A6_2      'cost effectiveness of the MRS process' /
   A6_3      'ease of managing the MRS process' /
   A6AOPEN   '[open-ended] captures their concerns if they indicated 1 or 2' /
   A7_LEAD_STAFF1 'Lead_staff1 -  Lead agency staff' /
   A7_LEAD_STAFF2 'Lead staff2 -  Lead agency staff' /
   A7_LEAD_STAFF3 'Lead_staff3 -  Lead agency staff' /
   A7_LEAD_NON 'Lead_non    Lead agency non personnel costs' /
   A7_OTHER_STAFF1 'Other_staff1 -  Other agency staff' /
   A7_OTHER_STAFF2 'Other_staff2 -  Other agency staff' /
   A7_OTHER_STAFF3 'Other_staff3 -  Other agency staff' /
   A7_OTHER_NON 'Other_non -  Other agency non personnel cost' /
   COMMENTSSECTIONA 'Comments Section A' /
   A7_RR     'resource and referral contract' /
   A7_UNIVERSITY 'university/college contract' /
   A7_FIRM   'research or survey firm contract' /
   A7_OTHER  'other contract' /
   A7_TOTAL  'total costs for most recent MRS' /
   COMMENTSA7 'Comments A7' /
   A8        'Funds invested in CCR&R services' /
   COMMENTSA8 'Comments A8' /
   A8A       'Total amount of funds being invested in CCR&R services' /
   A8B       'CCR&R system have a person responsible for ensuring'+
     ' accurateand reliable data'/
   COMMENTSA8B 'Comments A8b' /
   B1A       'database: regulated by child care licensing agency' /
   B1B       'database: receiving child care subsidies' /
   B1C       'database: enrolled with a resource and referral' /
   B1D       'other' /
   B1DOPEN   '[open-ended] captures the database of the ''other'' source' /
   B2A_1     'licensing database most up to date' /
   B2A_2     'licensing database most complete' /
   B2A_3     'licensing database most accurate' /
   B2A_4     'licensing database no cost or minimal cost' /
   B2A_5     'licensing database required to use by statute or rule' /
   B2A_6     'licensing database other' /
   B2A_D_6OPEN '[open-ended] captures ''other'' reasons' /
   B2B_1     'subsidy database most up to date' /
   B2B_2     'subsidy database most complete' /
   B2B_3     'subsidy database most accurate' /
   B2B_4     'subsidy database no cost or minimal cost' /
   B2B_5     'subsidy database required to use by statute or rule' /
   B2B_6     'subsidy database other' /
   B2C_1     'R & R database most up to date' /
   B2C_2     'R & R database most complete' /
   B2C_3     'R & R database most accurate' /
   B2C_4     'R & R database no cost or minimal cost' /
   B2C_5     'R & R database required to use by statute or rule' /
   B2C_6     'R & R database other' /
   B2D_1     'other database most up to date' /
   B2D_2     'other database most complete' /
   B2D_3     'other database most accurate' /
   B2D_4     'other database no cost or minimal cost' /
   B2D_5     'other database required to use by statute or rule' /
   B2D_6     'other database other' /
   COMMENTSB1B2 'Comments B1-B2' /
   B3A       'Final dataset includes regulated providers/facilities'+
     ' (centers and family child care providers/facilities, including'+
     ' regulated afterschool program)'/
   B3A1      'Total number of regulated providers/facilities in finaldataset' /
   B3A2      'Type of sample selected' /
   B3A2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3A 'Comments B3a' /
   B3B       'Final dataset includes family child care'+
     ' providers/facilitieswho are legally exempt from regulation'/
   B3B1      'Total number of family child care providers/facilities'+
     ' infinal dataset'/
   B3B2      'Type of sample selected' /
   B3B2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3B 'Comments B3b' /
   B3C       'Final dataset includes family, friends, or neighbors who'+
     ' arelegally exempt from regulation'/
   B3COPEN   '[open-ended] specify which ones (family, friends, neighbors)' /
   B3C1      'Total number of family, friends, or neighbors in finaldataset' /
   B3C2      'Type of sample selected' /
   B3C2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3C 'Comments B3c' /
   B3D       'Final dataset includes centers that are legally exempt'+
     ' fromregulation'/
   B3D1      'Total number of centers in the final dataset' /
   B3D2      'Type of sample selected' /
   B3D2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3D 'Comments B3d' /
   B3E       'Final dataset includes after school education (non regulated)' /
   B3E1      'Total number of centers in the final dataset' /
   B3E2      'Type of sample selected' /
   B3E2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3E 'Comments B3e' /
   B3F       'Final dataset includes providers located on militaryfacilities' /
   B3F1      'Total number of military providers/facilities in the'+
     ' finaldataset'/
   B3F2      'Type of sample selected' /
   B3F2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3F 'Comments B3f' /
   B3G       'Final dataset includes providers/facilities located'+
     ' on tribalreservations or in tribal service areas and regulated by'+
     ' the state'/
   B3G1      'Total number of providers/facilities of this type in'+
     ' thefinal dataset'/
   B3G2      'Type of sample selected' /
   B3G2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3G 'Comments B3g' /
   B3H       'Final dataset includes providers/facilities located'+
     ' on tribalreservations or in tribal service areas and regulated by'+
     ' the tribe'/
   B3H1      'Total number of providers/facilities of this type in the'+
     ' final dataset'/
   B3H2      'Type of sample selected' /
   B3H2OPEN  '[open-ended] stratified by what characteristics?' /
   COMMENTSB3H 'Comments B3h' /
   COMMENTSSECTIONB 'Comments Section B' /
   C1        'Data collection method used' /
   COMMENTSC1 'Comments C1' /
   C1A1      'Mail' /
   C1A2      'Phone' /
   C1A3      'Web' /
   COMMENTSC1A 'Comments C1a' /
   C1B       'Specific data collection method used' /
   COMMENTSC1B 'Comments C1b' /
   C2        'Survey was field tested or piloted before used' /
   COMMENTSC2 'Comments C2' /
   C2A1      'regulated providers/facilities' /
   C2A2      'family child care providers/facilities who are legally exempt' /
   C2A3      'family, friends, or neighbors who are legally exempt' /
   C2A4      'Centers that are legally exempt' /
   C2A5      'After school education' /
   C2A6      'Providers located on tribal reservation or in tribal'+
     ' serviceareas and regulated by the state'/
   C2A7      'Providers located on tribal reservation or in tribal'+
     ' serviceareas and regulated by the tribe'/
   C2B       'Total number of providers/facilities in the pilot sample' /
   COMMENTSC2B 'Comments C2b' /
   C3        'Other languages the survey (not the pilot) were available in.' /
   C3OPEN    '[open-ended] what other languages?' /
   C4A       'Providers/facilities tried to reach' /
   C4B       'Providers/facilities who were reached but refused'+
     ' toparticipate'/
   C4C       'Providers dropped from the sample (e.g., they currently'+
     ' arenot providing care, no valid telephone number, not charging for'+
     ' childcare, etc.)'/
   C4D       'Providers/facilities who completed the survey' /
   C5A       'financial incentives for respondents' /
   C5AOPEN   '[open-ended] dollar amount of the financial incentive.' /
   C5B       'follow up letters or calls to encourage response' /
   C5C       'training/technical assistance on how to complete the survey' /
   C5D       'other incentives' /
   C5DOPEN   '[open-ended] other incentives that were used' /
   COMMENTSC4C5 'Comments C4-C5' /
   C6        'Month/day, and year data collection was completed' /
   COMMENTSC6 'Comments C6' /
   C7        'CCR&R or licensing agency update rate data' /
   COMMENTSC7 'Comments C7' /
   C8        'Update conducted in a language other than English' /
   C8OPEN    '[open-ended] what other languages?' /
   C9A       'providing rate data is required to be included in R&R' /
   C9B       'providing rate data is required as part of'+
     ' licensing/re-licensing'/
   C9C       'financial incentives for respondents' /
   C9COPEN   '[open-ended] dollar amount of the financial incentive.' /
   C9D       'follow up letters or calls to encourage response' /
   C9E       'other incentives' /
   C9EOPEN   '[open-ended] other incentives that were used' /
   C10       'Providers in the entire database who do not report price data' /
   C11       'Standard for how recent the R&R or licensing data should'+
     ' be atthe time of the download'/
   COMMENTSC10C11 'Comments C10-C11' /
   C12       'Month/day, and year R&R or licensing agency data wasdownloaded' /
   C13       'BEST estimate of the time needed for a single provider'+
     ' /facility to provide the requested information'/
   C14       'Statement that BEST describes how'+
     ' providers/facilitiesreported rate information'/
   C14A      'Providers/facilities asked to convert their rates to'+
     ' somestandard mode such as to monthly or hourly rate'/
   COMMENTSC14A 'Comments C14a' /
   COMMENTSC12C14 'Comments C12-C14' /
   C15       'Reported rates checked for internal consistency (e.g.,'+
     ' datachecks to confirm that data was within reasonable range)'/
   C15OPEN   '[open-ended] describe the procedures used to check for'+
     ' consistency of rate data'/
   C16_HOURLY 'Rate information collected by modes of pricing: hourly' /
   C16_DAILY 'Rate information collected by modes of pricing: daily' /
   C16_WEEKLY 'Rate information collected by modes of pricing: weekly' /
   C16_MONTHLY 'Rate information collected by modes of pricing:monthly' /
   C16_PARTDAY 'Rate information collected by schedule: part-day' /
   C16_PARTWEEK 'Rate information collected by schedule: part-week' /
   C16_HS    'Rate information collected from no-fee centers:'+
     ' headstart/early head start programs'/
   C16_PREK  'Rate information collected from no-fee centers:'+
     ' pre-kindergarten programs'/
   C16_MHS   'Rate information collected from no-fee centers: migranthead'+
     ' start'/
   C16_OTHER 'Rate information collected from no-fee centers: other'+
     ' nofee programs'/
   C16_OPEN  '[open-ended] other no fee programs' /
   C16_IN    'Rate information collected by age categories: infant care' /
   C16_TD    'Rate information collected by age categories: toddler care' /
   C16_PS    'Rate information collected by age categories: preschool-age'+
     ' care'/
   C16_SA    'Rate information collected by age categories: school-age' /
   C16_SASY  'Rate information collected by age categories:'+
     ' school-age(school year)'/
   C16_SAS   'Rate information collected by age categories:'+
     ' school-age(summer)'/
   C16_NONE  'Rate information collected by age categories: none of theabove' /
   C16A_IN   'Age categories parallel your state, territory, or'+
     ' tribes''regulatory age categories: infant'/
   C16A_TD   'Age categories parallel your state, territory, or'+
     ' tribes''regulatory age categories: toddler'/
   C16A_PS   'Age categories parallel your state, territory, or'+
     ' tribes''regulatory age categories: preschool'/
   C16A_SA   'Age categories parallel your state, territory, or'+
     ' tribes''regulatory age categories: school-age'/
   COMMENTSC16A 'Comments C16a' /
   NON_ST    'Rate information collected for non standard hours care' /
   NON_STAND_OPEN '[open-ended] non-standard care is defined as?' /
   C17       'Ask providers/facilities the number or percent of children'+
     ' incare who receive a subsidy'/
   COMMENTSC17 'Comments C17' /
   C18       'Providers/facilities with subsidized children excluded' /
   C18A      'Percent of subsidized children lead to exclusion of provider' /
   COMMENTSC18 'Comments C18' /
   C19A      'registration fees' /
   C19B      'transportation fees' /
   C19C      'food fees' /
   C19D      'activity fees' /
   C19E      'other' /
   C19OPEN   '[open-ended] specify other provider/facility information'+
     ' collected or available.'/
   C20A      'licensed capacity for children' /
   C20B      'licensed capacity for children by age group' /
   C20C      'desired capacity of children' /
   C20D      'desired capacity of children by age group' /
   C20E      'actual current enrollment of children' /
   C20F      'actual current enrollment of children by age group' /
   C20G      'other' /
   C20GOPEN  '[open-ended] specify other' /
   C20H      'home based provider education level' /
   C20I      'home based provider training level' /
   C20J      'home based provider wages' /
   C20K      'home based provider benefit level' /
   C20L      'center based provider education level' /
   C20M      'center based provider training level' /
   C20N      'center based provider wages' /
   C20O      'center based provider benefit level' /
   C20P      'other' /
   C20POPEN  '[open-ended] specify other' /
   C20Q      'group size' /
   C20R      'adult child ratio' /
   C20S      'accreditation status' /
   C20T      'other sources of support for care' /
   C20U      'for profit/nonprofit status' /
   C20V      'sponsorship' /
   C20W      'other' /
   C20WOPEN  '[open-ended] specify other' /
   C20X      'Provider''s actual cost of providing care including'+
     ' insurance,space and utility costs, etc.'/
   C20XOPEN  '<none>' /
   COMMENTSSECTIONC 'Comments Section C' /
   D1A       'Head Start programs' /
   D1B       'State funded pre kindergarten programs' /
   D1C       'Migrant Head Start' /
   D1D       'Providers/facilities serving only subsidized children' /
   D1E       'Providers/facilities serving a high percent of subsidized kids' /
   D1E_1OPEN '[open-ended] what percent led to exclusion' /
   D1F       'part day, part week programs' /
   D1G       'other types of providers/facilities' /
   D1GOPEN   '[open-ended] specify other types of providers/facilities'+
     ' who were excluded'/
   COMMENTSD1 'Comments D1' /
   D2        'Unit of analysis' /
   D2A1      'licensed capacity for children' /
   D2A2      'licensed capacity for children by age group' /
   D2A3      'desired capacity of children' /
   D2A4      'desired capacity of children by age group' /
   D2A5      'actual current enrollment of children served' /
   D2A6      'actual current enrollment of children served by age group' /
   D2A7      'other' /
   D2A_7OPEN '[open-ended] specify other weighting method for child'+
     ' care slots'/
   COMMENTSD2A 'Comments D2a' /
   D3_COUNTY 'rate data analyzed by geographic area: county' /
   D3_ZIP    'rate data analyzed by geographic area: zipcode' /
   D3_REGION 'rate data analyzed by geographic area: region' /
   D3_STATE  'rate data analyzed by geographic area: whole stateterritory'+
     ' or tribe'/
   D3_OTHER  'rate data analyzed by geographic area: other' /
   D3_OTHER_OPEN '[open-ended] other geographic areas' /
   D3_IN     'rate data analyzed by age categories: infant care' /
   D3_TD     'rate data analyzed by age categories: toddler care' /
   D3_PS     'rate data analyzed by age categories: preschool-agecare' /
   D3_SA     'rate data analyzed by age categories: school-age' /
   D3_SASY   'rate data analyzed by age categories: school-ageschool year' /
   D3_SAS    'rate data analyzed by age categories: school-agesummer' /
   D3_NONE   'rate data analyzed by age categories: none of theabove' /
   D3_CENTER 'rate data analyzed by type of care: center' /
   D3_FAMILY 'rate data analyzed by type of care: family' /
   D3_GROUP  'rate data analyzed by type of care: group' /
   D3_INHOME 'rate data analyzed by type of care: in-home' /
   D3_FFN    'rate data analyzed by type of care: family, friends,'+
     ' or neighbors'/
   D3_SACENTER 'rate data analyzed by type of care: school-age centers' /
   D3_SAACT  'rate data analyzed by type of care: school-ageenrichment'+
     ' activities'/
   D3_HOURLY 'rate data analyzed by modes of pricing: hourly' /
   D3_DAILY  'rate data analyzed by modes of pricing: daily' /
   D3_WEEKLY 'rate data analyzed by modes of pricing: weekly' /
   D3_MONTHLY 'rate data analyzed by modes of pricing: monthly' /
   COMMENTSD3 'Comments D3' /
   D4A       'part day rates' /
   D4A_OPEN  '[open-ended] what hours define part-day?' /
   D4B       'part week rates' /
   D4B_OPEN  '[open-ended] How many days defined part-week?' /
   D4C       'rates for care of children with special needs' /
   D4D       'rates in limited markets such as rural areas' /
   D4E       'rate trends over time (e.g., last 3 years)' /
   D4F       'rates by structural quality indicators' /
   D4G       'other analyses' /
   D4G_OPEN  '[open-ended] what other analyses?' /
   COMMENTSD4 'Comments D4' /
   D5        'Rates reported by providers converted to some standard'+
     ' mode such as to a monthly or hourly rate'/
   D5A_OPEN  '[open-ended] what standard mode was used?' /
   D5B_OPEN  '[open-ended] what method or formula was used to convert'+
     ' the reported rates to the standard mode?'/
   COMMENTSD5 'Comments D5' /
   D6        'Estimated child care accessibility (the percent of market'+
     ' towhich families with subsidies have access estimated)'/
   D6A_OPEN  '[open-ended] how was child care accessibility calculated?' /
   D6B_OPEN  '[open-ended] to approximately what percentile of the market'+
     ' do current rates provide access?'/
   COMMENTSD6 'Comments D6' /
   D7        'Methodological problems or issues encountered' /
   D7_OPEN   '[open-ended] describe the methodological problems or issues' /
   D8        'Methodology changed or revised from methodologies used in'+
     ' theprevious market rate survey'/
   D8_OPEN   '[open-ended] describe what changes or revisions were made'+
     ' to the market rate survey methods'/
   COMMENTSD8 'Comments D8' /
   D9        'Currently conducting a market rate survey' /
   D9A       'Using a different method than in most recent MRS' /
   D9A1_OPEN '[open-ended] describe this method' /
   D9A2      'Willing to complete the survey again for the market'+
     ' ratesurvey currently being conducted'/
   COMMENTSD9 'Comments D9' /
   D10       'Anticipate the method used in most recent MRS to be repeated'+
     ' in future surveys'/
   D10A_OPEN '[open-ended] if not, why not?' /
   COMMENTSSECTIOND 'Comments Section D' /
   E1A       'printed report' /
   E1A_OPEN  '<none>' /
   E1B       'web posting' /
   E1B_OPEN  '[open-ended] url of web posting' /
   E1C       'news release' /
   E1D       'other' /
   E1D_OPEN  '[open-ended] other way results were published or disseminated' /
   E2A       'legislators' /
   E2B       'state child care resource & referral network' /
   E2C       'local child care resource & referral agencies' /
   E2D       'providers' /
   E2E       'parents' /
   E2F       'other' /
   E2F_OPEN  '[open-ended] other groups the results were shared with' /
   COMMENTSSECTIONE 'Comments Section E' /
   F1        'Date when the current maximum payment rates were set' /
   COMMENTSF1 'Comments F1' /
   F2        'Current rates adjusted based on the most recently completed'+
     ' MRS'/
   COMMENTSF2 'Comments F2' /
   F2A       'Following the most recently completed market rate'+
     ' survey,payment rates were or are likely to be:'/
   COMMENTSF2A 'Comments F2a' /
   F3        'Current payment rates set at or above the 75th percentile'+
     ' ofrates'/
   F3_OPEN   '[open-ended] describe ''for some categories''' /
   F4A       'demand for subsidies' /
   F4B       'overall state/territorial/tribal budget' /
   F4C       'state/territorial/tribal funding for child care' /
   F4D       'findings of recently completed market rate survey' /
   F4E       'level of federal CCDF funding to state/territory/tribe' /
   F4F       'provider concerns' /
   F4G       'desire to invest in quality of child care initiatives' /
   F4H       'state/territorial/tribal TANF policies' /
   F4I       'desire to maximize the number of families with access'+
     ' tosubsidies'/
   F4A1      'first most important' /
   F4A2      'second most important' /
   F4A3      'third most important' /
   COMMENTSF4 'Comments F4' /
   F5_OPEN   '[open-ended] other significant factors, not listed in F4,'+
     ' that influenced setting current payment rates?'/
   F6_COUNTY 'payment rates set by geographic area: county' /
   F6_ZIP    'payment rates set by geographic area: zip' /
   F6_REGION 'rate data analyzed by geographic area: region' /
   F6_STATE  'payment rates set by geographic area: state' /
   F6_OTHER  'rate data analyzed by geographic area: other' /
   F6_OTHER_OPEN '[open-ended] other geographic areas' /
   F6_IN     'payment rates set by age categories: infant care' /
   F6_TD     'payment rates set by age categories: toddler care' /
   F6_PS     'payment rates set by age categories: preschool-age care' /
   F6_SA     'payment rates set by age cateogires: school-age' /
   F6_SASY   'payment rates set by age categories: school-age school year' /
   F6_SAS    'payment rates set by age categories: school-age summer' /
   F6_NONE   'payment rates set by age categories: none of the above' /
   F6_CENTER 'payment rates set by type of care: center' /
   F6_FAMILY 'payment rates set by type of care: family' /
   F6_GROUP  'payment rates set by type of care: group' /
   F6_INHOME 'payment rates set by type of care: in-home' /
   F6_SACENTER 'payment rates set by type of care: school-age center' /
   F6_SAACT  'payment rates set by type of care: school-age'+
     ' enrichmentactivities'/
   F6_SPECIAL 'payment rates set by type of care: special needs care' /
   F6C1      'Payment rates set for Family, Friends, or Neighbors' /
   F6C2_OPEN '[open-ended] how were the payment rates established for'+
     ' family, friends, or neighbors?'/
   COMMENTSF6 'Comments F6' /
   F7A       'registration fees' /
   F7B       'transportation fees' /
   F7C       'food fees' /
   F7D       'activity fees' /
   F7E       'other' /
   F7E_OPEN  '[open-ended] other type of fees paid to providers through'+
     ' the subsidy program?'/
   F8        'Payment rates set for geographic areas with providers with'+
     ' lowor no prices'/
   F8A_OPEN  '[open-ended] how were these rates established for geographic'+
     ' areas with low or no prices?'/
   COMMENTSF7F8 'F7-F8' /
   COMMENTSSECTIONF 'Comments Section F' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   A1        1 'state' 2 'territory' 3 'tribe' /
   A1A       0 'no' 1 'yes, some non-exempt tribal providers'
             2 'yes, all non-exempt tribal providers' /
   A2        0 'no' 1 'yes' /
   A2A1      0 'no' 1 'yes' /
   A2A2      0 'no' 1 'yes' /
   A2A3      0 'no' 1 'yes' /
   A2A4      0 'no' 1 'yes' /
   A2A5      0 'no' 1 'yes' /
   A2A6      0 'no' 1 'yes' /
   A4A       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A4B       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A4C       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A4D       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A4E       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A4F       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A4G       1 'state/territorial/tribal lead agency'
             2 'other state/territorial/tribal agency'
             3 'state resource and referral network'
             4 'university contractors'
             5 'research or survey firm contractors' 6 'other contractors'
             9 'this task was not done in most recent MRS' /
   A5        0 'no' 1 'yes' /
   A5A       1 'created specifically to guide MRS'
             2 'an existing group for child care issues/policies' 3 'other' /
   A6_1      1 'poor' 5 'excellent' 9 'don''t know' /
   A6_2      1 'poor' 5 'excellent' 9 'don''t know' /
   A6_3      1 'poor' 5 'excellent' 9 'don''t know' /
   A7_LEAD_STAFF2 999999 'unknown' /
   A8        0 'no' 1 'yes' /
   A8A       999999 'unknown' /
   A8B       0 'no' 1 'yes' 9 'don''t know' /
   B1A       -1 'not checked' 1 'checked' /
   B1B       -1 'not checked' 1 'checked' /
   B1C       -1 'not checked' 1 'checked' /
   B1D       -1 'not checked' 1 'checked' /
   B2A_1     -1 'not checked' 1 'checked' /
   B2A_2     -1 'not checked' 1 'checked' /
   B2A_3     -1 'not checked' 1 'checked' /
   B2A_4     -1 'not checked' 1 'checked' /
   B2A_5     -1 'not checked' 1 'checked' /
   B2A_6     -1 'not checked' 1 'checked' /
   B2B_1     -1 'not checked' 1 'checked' /
   B2B_2     -1 'not checked' 1 'checked' /
   B2B_3     -1 'not checked' 1 'checked' /
   B2B_4     -1 'not checked' 1 'checked' /
   B2B_5     -1 'not checked' 1 'checked' /
   B2B_6     -1 'not checked' 1 'checked' /
   B2C_1     -1 'not checked' 1 'checked' /
   B2C_2     -1 'not checked' 1 'checked' /
   B2C_3     -1 'not checked' 1 'checked' /
   B2C_4     -1 'not checked' 1 'checked' /
   B2C_5     -1 'not checked' 1 'checked' /
   B2C_6     -1 'not checked' 1 'checked' /
   B2D_1     -1 'not checked' 1 'checked' /
   B2D_2     -1 'not checked' 1 'checked' /
   B2D_3     -1 'not checked' 1 'checked' /
   B2D_4     -1 'not checked' 1 'checked' /
   B2D_5     -1 'not checked' 1 'checked' /
   B2D_6     -1 'not checked' 1 'checked' /
   B3A       0 'none' 1 'some' 2 'most' 3 'all' 9 'no answer' /
   B3A1      99999 'don''t know / no response' /
   B3A2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3B       0 'no' 1 'yes' 9 'no answer' /
   B3B1      99999 'don''t know / no response' /
   B3B2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3C       0 'no' 1 'yes' 9 'no answer' /
   B3C1      99999 'don''t know / no response' /
   B3C2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3D       0 'no' 1 'yes' 2 'no centers are exempt from regulation'
             9 'no answer' /
   B3D1      99999 'don''t know / no response' /
   B3D2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3E       0 'no' 1 'yes' 9 'no answer' /
   B3E1      99999 'don''t know / no response' /
   B3E2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3F       0 'no' 1 'yes' 9 'no answer' /
   B3F1      99999 'don''t know / no response' /
   B3F2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3G       0 'no' 1 'yes, some' 2 'yes, all' 9 'no answer' /
   B3G1      99999 'don''t know / no response' /
   B3G2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   B3H       0 'no' 1 'yes, some' 2 'yes, all' 9 'no answer' /
   B3H1      99999 'don''t know / no response' /
   B3H2      1 'total population' 2 'random sample'
             3 'stratified random sample' /
   C1        1 'data collected by mail, telephone, or web-based survey'
             2 'data collected by R&R and/or licensing' /
   C1A1      -1 'not checked' 1 'checked' /
   C1A2      -1 'not checked' 1 'checked' /
   C1A3      -1 'not checked' 1 'checked' /
   C1B       1 'Resource and Referral agency download'
             2 'Licensing agency download' 3 'Other' /
   C2        0 'no' 1 'yes' /
   C2A1      -1 'not checked' 1 'checked' /
   C2A2      -1 'not checked' 1 'checked' /
   C2A3      -1 'not checked' 1 'checked' /
   C2A4      -1 'not checked' 1 'checked' /
   C2A5      -1 'not checked' 1 'checked' /
   C2A6      -1 'not checked' 1 'checked' /
   C2A7      -1 'not checked' 1 'checked' /
   C2B       999 'no answer' /
   C3        0 'no' 1 'yes' /
   C4A       999999 'unknown' /
   C4B       999999 'unknown' /
   C4C       999999 'unknown' /
   C4D       999999 'unknown' /
   C5A       -1 'not checked' 1 'checked' /
   C5B       -1 'not checked' 1 'checked' /
   C7        0 'no' 1 'yes, updated rate information for some providers'
             2 'yes, updated rate information from all providers' /
   C8        0 'no' 1 'yes' /
   C9A       -1 'not checked' 1 'checked' /
   C9B       -1 'not checked' 1 'checked' /
   C11       0 'no standard' 1 'rate data should be < 3 months old'
             2 'rate data should be 4-6 months old'
             3 'rate data should be 7-12 months old' 4 'other' /
   C13       1 '< 5 minutes' 2 '6-10 minutes' 3 '11-15 minutes'
             4 '16-20 minutes' /
   C14       1 'providers/facilities reported their rates into pre-determine'
             2 'providers/facilities reported their actual rates in whatever'
             /
   C14A      0 'no' 1 'yes' /
   C15       0 'no' 1 'yes' /
   C16_HOURLY 0 'no' 1 'yes' /
   C16_DAILY 0 'no' 1 'yes' /
   C16_WEEKLY 0 'no' 1 'yes' /
   C16_MONTHLY 0 'no' 1 'yes' /
   C16_PARTDAY 0 'no' 1 'yes' /
   C16_PARTWEEK 0 'no' 1 'yes' /
   C16_HS    0 'no' 1 'yes' /
   C16_PREK  0 'no' 1 'yes' /
   C16_MHS   0 'no' 1 'yes' /
   C16_OTHER 0 'no' 1 'yes' /
   C16_IN    0 'no' 1 'yes' /
   C16_TD    0 'no' 1 'yes' /
   C16_PS    0 'no' 1 'yes' /
   C16_SA    0 'no' 1 'yes' /
   C16_SASY  -1 'not checked' 1 'checked' /
   C16_SAS   -1 'not checked' 1 'checked' /
   C16_NONE  -1 'not checked' 1 'checked' /
   C16A_IN   0 'no' 1 'yes' /
   C16A_TD   0 'no' 1 'yes' /
   C16A_PS   0 'no' 1 'yes' /
   C16A_SA   0 'no' 1 'yes' /
   NON_ST    0 'no' 1 'yes' /
   C17       0 'no' 1 'yes' /
   C18       0 'no' 1 'yes' 9 'don''t know' /
   C19A      -1 'not checked' 1 'checked' /
   C19B      -1 'not checked' 1 'checked' /
   C19C      -1 'not checked' 1 'checked' /
   C19D      -1 'not checked' 1 'checked' /
   C19E      -1 'not checked' 1 'checked' /
   C20A      -1 'not checked' 1 'checked' /
   C20B      -1 'not checked' 1 'checked' /
   C20C      -1 'not checked' 1 'checked' /
   C20D      -1 'not checked' 1 'checked' /
   C20E      -1 'not checked' 1 'checked' /
   C20F      -1 'not checked' 1 'checked' /
   C20G      -1 'not checked' 1 'checked' /
   C20H      -1 'not checked' 1 'checked' /
   C20I      -1 'not checked' 1 'checked' /
   C20J      -1 'not checked' 1 'checked' /
   C20K      -1 'not checked' 1 'checked' /
   C20L      -1 'not checked' 1 'checked' /
   C20M      -1 'not checked' 1 'checked' /
   C20N      -1 'not checked' 1 'checked' /
   C20O      -1 'not checked' 1 'checked' /
   C20P      -1 'not checked' 1 'checked' /
   C20Q      -1 'not checked' 1 'checked' /
   C20R      -1 'not checked' 1 'checked' /
   C20S      -1 'not checked' 1 'checked' /
   C20T      -1 'not checked' 1 'checked' /
   C20U      -1 'not checked' 1 'checked' /
   C20V      -1 'not checked' 1 'checked' /
   C20W      -1 'not checked' 1 'checked' /
   C20X      0 'no' 1 'yes' 9 'don''t know' /
   D1A       -1 'not checked' 1 'checked' /
   D1B       -1 'not checked' 1 'checked' /
   D1C       -1 'not checked' 1 'checked' /
   D1D       -1 'not checked' 1 'checked' /
   D1E       -1 'not checked' 1 'checked' /
   D1F       -1 'not checked' 1 'checked' /
   D1G       -1 'not checked' 1 'checked' /
   D2        1 'provider/facility' 2 'slot' 3 'both' 9 'don''t know' /
   D2A1      -1 'not checked' 1 'checked' /
   D2A2      -1 'not checked' 1 'checked' /
   D2A3      -1 'not checked' 1 'checked' /
   D2A4      -1 'not checked' 1 'checked' /
   D2A5      -1 'not checked' 1 'checked' /
   D2A6      -1 'not checked' 1 'checked' /
   D2A7      -1 'not checked' 1 'checked' /
   D3_COUNTY 0 'no' 1 'yes' 9 'don''t know' /
   D3_ZIP    0 'no' 1 'yes' 9 'don''t know' /
   D3_REGION 0 'no' 1 'yes' 9 'don''t know' /
   D3_STATE  0 'no' 1 'yes' 9 'don''t know' /
   D3_OTHER  0 'no' 1 'yes' 9 'don''t know' /
   D3_IN     0 'no' 1 'yes' 9 'don''t know' /
   D3_TD     0 'no' 1 'yes' 9 'don''t know' /
   D3_PS     0 'no' 1 'yes' 9 'don''t know' /
   D3_SA     0 'no' 1 'yes' 9 'don''t know' /
   D3_SASY   -1 'not checked' 1 'checked' /
   D3_SAS    -1 'not checked' 1 'checked' /
   D3_NONE   -1 'not checked' 1 'checked' /
   D3_CENTER 0 'no' 1 'yes' 9 'don''t know' /
   D3_FAMILY 0 'no' 1 'yes' 9 'don''t know' /
   D3_GROUP  0 'no' 1 'yes' 9 'don''t know' /
   D3_INHOME 0 'no' 1 'yes' 9 'don''t know' /
   D3_FFN    0 'no' 1 'yes' 9 'don''t know' /
   D3_SACENTER 0 'no' 1 'yes' 9 'don''t know' /
   D3_SAACT  0 'no' 1 'yes' 9 'don''t know' /
   D3_HOURLY 0 'no' 1 'yes' 9 'don''t know' /
   D3_DAILY  0 'no' 1 'yes' 9 'don''t know' /
   D3_WEEKLY 0 'no' 1 'yes' 9 'don''t know' /
   D3_MONTHLY 0 'no' 1 'yes' 9 'don''t know' /
   D4A       0 'no' 1 'yes' 9 'don''t know' /
   D4B       0 'no' 1 'yes' 9 'don''t know' /
   D4C       0 'no' 1 'yes' 9 'don''t know' /
   D4D       0 'no' 1 'yes' 9 'don''t know' /
   D4E       0 'no' 1 'yes' 9 'don''t know' /
   D4F       0 'no' 1 'yes' 9 'don''t know' /
   D4G       0 'no' 1 'yes' 9 'don''t know' /
   D5        0 'no' 1 'yes' /
   D6        0 'no' 1 'yes' /
   D7        0 'no' 1 'yes' /
   D8        0 'no' 1 'yes' /
   D9        0 'no' 1 'yes' /
   D9A       0 'no' 1 'yes' /
   D9A2      0 'no' 1 'yes' /
   D10       0 'no' 1 'yes' /
   E1A       -1 'not checked' 1 'checked' /
   E1B       -1 'not checked' 1 'checked' /
   E1C       -1 'not checked' 1 'checked' /
   E1D       -1 'not checked' 1 'checked' /
   E2A       -1 'not checked' 1 'checked' /
   E2B       -1 'not checked' 1 'checked' /
   E2C       -1 'not checked' 1 'checked' /
   E2D       -1 'not checked' 1 'checked' /
   E2E       -1 'not checked' 1 'checked' /
   E2F       -1 'not checked' 1 'checked' /
   F2        0 'no'
             1 'no, not yet, but will be within the next several months'
             2 'yes' /
   F2A       1 'kept the same'
             2 'increased for all types of care and age categories'
             3 'decreased for all types of care and age categories'
             4 'increased for some types of care and age categories'
             5 'decreased for some types of care and age categories' /
   F3        0 'no' 1 'yes, for all categories' 2 'yes, for some categories'
             /
   F4A       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4B       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4C       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4D       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4E       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4F       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4G       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4H       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4I       0 'no, not influential in setting rates'
             1 'yes, influential in setting rates' /
   F4A1      '99' 'no answer' /
   F4A2      '99' 'no answer' /
   F4A3      '99' 'no answer' /
   F6_COUNTY 0 'no' 1 'yes' 9 'don''t know' /
   F6_ZIP    0 'no' 1 'yes' 9 'don''t know' /
   F6_REGION 0 'no' 1 'yes' 9 'don''t know' /
   F6_STATE  0 'no' 1 'yes' 9 'don''t know' /
   F6_OTHER  0 'no' 1 'yes' 9 'don''t know' /
   F6_IN     0 'no' 1 'yes' 9 'don''t know' /
   F6_TD     0 'no' 1 'yes' 9 'don''t know' /
   F6_PS     0 'no' 1 'yes' 9 'don''t know' /
   F6_SA     0 'no' 1 'yes' 9 'don''t know' /
   F6_SASY   -1 'not checked' 1 'checked' /
   F6_SAS    -1 'not checked' 1 'checked' /
   F6_NONE   -1 'not checked' 1 'checked' /
   F6_CENTER 0 'no' 1 'yes' 9 'don''t know' /
   F6_FAMILY 0 'no' 1 'yes' 9 'don''t know' /
   F6_GROUP  0 'no' 1 'yes' 9 'don''t know' /
   F6_INHOME 0 'no' 1 'yes' 9 'don''t know' /
   F6_SACENTER 0 'no' 1 'yes' 9 'don''t know' /
   F6_SAACT  0 'no' 1 'yes' 9 'don''t know' /
   F6_SPECIAL 0 'no' 1 'yes' 9 'don''t know' /
   F6C1      0 'no' 1 'yes' /
   F7A       -1 'not checked' 1 'checked' /
   F7B       -1 'not checked' 1 'checked' /
   F7C       -1 'not checked' 1 'checked' /
   F7D       -1 'not checked' 1 'checked' /
   F7E       -1 'not checked' 1 'checked' /
   F8        0 'no' 1 'yes' /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
