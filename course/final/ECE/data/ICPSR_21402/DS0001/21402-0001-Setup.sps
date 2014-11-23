*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 21402
*         CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
*                STATES, TERRITORIES, AND TRIBES, 2005-2006
*                 (DATASET 0001: MARKET RATE SURVEY DATA)
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
*  data file is physically located (e.g., "c:\temp\21402-0001-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da21402-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=2388.
DATA LIST FILE=DATA /
                 ID 1-10           PIN 11-18 (A)
                A1 19-26           STT 27-76 (A)               A1A 77-84
                A2 85-92             A2A1 93-100            A2A2 101-108
            A2A3 109-116            A2A4 117-124            A2A5 125-132
            A2A6 133-140              A3 141-148             A4A 149-156
             A4B 157-164             A4C 165-172             A4D 173-180
             A4E 181-188             A4F 189-196             A4G 197-204
             A4H 205-212             A4I 213-220             A4J 221-228
              A5 229-236             A5A 237-244            A6_1 245-252
            A6_2 253-260            A6_3 261-268     LEAD_STAFF1 269-276
     LEAD_STAFF2 277-284     LEAD_STAFF3 285-292        LEAD_NON 293-300
    OTHER_STAFF1 301-308    OTHER_STAFF2 309-316    OTHER_STAFF3 317-324
       OTHER_NON 325-332              RR 333-340      UNIVERSITY 341-348
            FIRM 349-356           OTHER 357-364           TOTAL 365-372
              A8 373-380             A8A 381-388             A8B 389-396
             B1A 397-404             B1B 405-412             B1C 413-420
             B1D 421-428           B2A_1 429-436           B2A_2 437-444
           B2A_3 445-452           B2A_4 453-460           B2A_5 461-468
           B2A_6 469-476           B2B_1 477-484           B2B_2 485-492
           B2B_3 493-500           B2B_4 501-508           B2B_5 509-516
           B2B_6 517-524           B2C_1 525-532           B2C_2 533-540
           B2C_3 541-548           B2C_4 549-556           B2C_5 557-564
           B2C_6 565-572           B2D_1 573-580           B2D_2 581-588
           B2D_3 589-596           B2D_4 597-604           B2D_5 605-612
           B2D_6 613-620             B3A 621-628            B3A1 629-636
            B3A2 637-644             B3B 645-652            B3B1 653-660
            B3B2 661-668             B3C 669-676            B3C1 677-684
            B3C2 685-692             B3D 693-700            B3D1 701-708
            B3D2 709-716             B3E 717-724            B3E1 725-732
            B3E2 733-740             B3F 741-748            B3F1 749-756
            B3F2 757-764             B3G 765-772            B3G1 773-780
            B3G2 781-788             B3H 789-796            B3H1 797-804
            B3H2 805-812              C1 813-820            C1A1 821-828
            C1A2 829-836            C1A3 837-844             C1B 845-852
              C2 853-860            C2A1 861-868            C2A2 869-876
            C2A3 877-884            C2A4 885-892            C2A5 893-900
            C2A6 901-908            C2A7 909-916             C2B 917-924
              C3 925-932             C4A 933-940             C4B 941-948
             C4C 949-956             C4D 957-964             C5A 965-972
             C5B 973-980             C5C 981-988             C5D 989-996
             C6 997-1004            C7 1005-1012            C8 1013-1020
           C9A 1021-1028           C9B 1029-1036           C9C 1037-1044
           C9D 1045-1052           C9E 1053-1060           C10 1061-1068
           C11 1069-1076           C12 1077-1084           C13 1085-1092
           C14 1093-1100          C14A 1101-1108           C15 1109-1116
    C16_HOURLY 1117-1124     C16_DAILY 1125-1132    C16_WEEKLY 1133-1140
   C16_MONTHLY 1141-1148   C16_PARTDAY 1149-1156  C16_PARTWEEK 1157-1164
        C16_HS 1165-1172      C16_PREK 1173-1180       C16_MHS 1181-1188
     C16_OTHER 1189-1196        C16_IN 1197-1204        C16_TD 1205-1212
        C16_PS 1213-1220        C16_SA 1221-1228      C16_SASY 1229-1236
       C16_SAS 1237-1244      C16_NONE 1245-1252       C16A_IN 1253-1260
       C16A_TD 1261-1268       C16A_PS 1269-1276       C16A_SA 1277-1284
        NON_ST 1285-1292           C17 1293-1300           C18 1301-1308
          C18A 1309-1316          C19A 1317-1324          C19B 1325-1332
          C19C 1333-1340          C19D 1341-1348          C19E 1349-1356
          C20A 1357-1364          C20B 1365-1372          C20C 1373-1380
          C20D 1381-1388          C20E 1389-1396          C20F 1397-1404
          C20G 1405-1412          C20H 1413-1420          C20I 1421-1428
          C20J 1429-1436          C20K 1437-1444          C20L 1445-1452
          C20M 1453-1460          C20N 1461-1468          C20O 1469-1476
          C20P 1477-1484          C20Q 1485-1492          C20R 1493-1500
          C20S 1501-1508          C20T 1509-1516          C20U 1517-1524
          C20V 1525-1532          C20W 1533-1540          C20X 1541-1548
           D1A 1549-1556           D1B 1557-1564           D1C 1565-1572
           D1D 1573-1580           D1E 1581-1588           D1F 1589-1596
           D1G 1597-1604            D2 1605-1612          D2A1 1613-1620
          D2A2 1621-1628          D2A3 1629-1636          D2A4 1637-1644
          D2A5 1645-1652          D2A6 1653-1660          D2A7 1661-1668
     D3_COUNTY 1669-1676        D3_ZIP 1677-1684     D3_REGION 1685-1692
      D3_STATE 1693-1700      D3_OTHER 1701-1708         D3_IN 1709-1716
         D3_TD 1717-1724         D3_PS 1725-1732         D3_SA 1733-1740
       D3_SASY 1741-1748        D3_SAS 1749-1756       D3_NONE 1757-1764
     D3_CENTER 1765-1772     D3_FAMILY 1773-1780      D3_GROUP 1781-1788
     D3_INHOME 1789-1796        D3_FFN 1797-1804   D3_SACENTER 1805-1812
      D3_SAACT 1813-1820     D3_HOURLY 1821-1828      D3_DAILY 1829-1836
     D3_WEEKLY 1837-1844    D3_MONTHLY 1845-1852           D4A 1853-1860
           D4B 1861-1868           D4C 1869-1876           D4D 1877-1884
           D4E 1885-1892           D4F 1893-1900           D4G 1901-1908
            D5 1909-1916            D6 1917-1924            D7 1925-1932
            D8 1933-1940            D9 1941-1948           D9A 1949-1956
          D9A2 1957-1964           D10 1965-1972           E1A 1973-1980
           E1B 1981-1988           E1C 1989-1996           E1D 1997-2004
           E2A 2005-2012           E2B 2013-2020           E2C 2021-2028
           E2D 2029-2036           E2E 2037-2044           E2F 2045-2052
            F1 2053-2060            F2 2061-2068           F2A 2069-2076
            F3 2077-2084           F4A 2085-2092           F4B 2093-2100
           F4C 2101-2108           F4D 2109-2116           F4E 2117-2124
           F4F 2125-2132           F4G 2133-2140           F4H 2141-2148
           F4I 2149-2156      F4A1 2157-2164 (A)      F4A2 2165-2172 (A)
      F4A3 2173-2180 (A)     F6_COUNTY 2181-2188        F6_ZIP 2189-2196
     F6_REGION 2197-2204      F6_STATE 2205-2212      F6_OTHER 2213-2220
         F6_IN 2221-2228         F6_TD 2229-2236         F6_PS 2237-2244
         F6_SA 2245-2252       F6_SASY 2253-2260        F6_SAS 2261-2268
       F6_NONE 2269-2276     F6_CENTER 2277-2284     F6_FAMILY 2285-2292
      F6_GROUP 2293-2300     F6_INHOME 2301-2308   F6_SACENTER 2309-2316
      F6_SAACT 2317-2324    F6_SPECIAL 2325-2332          F6C1 2333-2340
           F7A 2341-2348           F7B 2349-2356           F7C 2357-2364
           F7D 2365-2372           F7E 2373-2380            F8 2381-2388

   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   ID        '9 digit identification number assigned by Survey Monkey' /
   PIN       'Oregon State University''s tracking system unique ID number' /
   A1        'Jurisdiction (state, territory, or tribe) they represent' /
   STT       'Name of state, territory, or tribe' /
   A1A       'State or territory regulates child care providers who'+
     ' arelocated on an Indian reservation or in a tribal service area'/
   A2        'Legally binding statutes or administrative rules that'+
     ' affectMRS'/
   A2A1      'how frequently market rate surveys are conducted' /
   A2A2      'the content of market rate surveys' /
   A2A3      'how the survey is done; the survey process' /
   A2A4      'who must be included in the survey sample' /
   A2A5      'the relationship of maximum payment rates to rate findings' /
   A2A6      'other aspects of the rate setting process' /
   A3        'Date the most recent MRS was completed' /
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
   A5        'Use of an advisory group to guide MRS' /
   A5A       'Type of advisory group' /
   A6_1      'accuracy of the rate findings' /
   A6_2      'cost effectiveness of the MRS process' /
   A6_3      'ease of managing the MRS process' /
   LEAD_STAFF1 'Lead_staff1 -  Lead agency staff' /
   LEAD_STAFF2 'Lead staff2 -  Lead agency staff' /
   LEAD_STAFF3 'Lead_staff3 -  Lead agency staff' /
   LEAD_NON  'Lead_non    Lead agency non personnel costs' /
   OTHER_STAFF1 'Other_staff1 -  Other agency staff' /
   OTHER_STAFF2 'Other_staff2 -  Other agency staff' /
   OTHER_STAFF3 'Other_staff3 -  Other agency staff' /
   OTHER_NON 'Other_non -  Other agency non personnel cost' /
   RR        'resource and referral contract' /
   UNIVERSITY 'university/college contract' /
   FIRM      'research or survey firm contract' /
   OTHER     'other contract' /
   TOTAL     'total costs for most recent MRS' /
   A8        'Funds invested in CCR&R services' /
   A8A       'Total amount of funds being invested in CCR&R services' /
   A8B       'CCR&R system have a person responsible for ensuring'+
     ' accurateand reliable data'/
   B1A       'database: regulated by child care licensing agency' /
   B1B       'database: receiving child care subsidies' /
   B1C       'database: enrolled with a resource and referral' /
   B1D       'other' /
   B2A_1     'licensing database most up to date' /
   B2A_2     'licensing database most complete' /
   B2A_3     'licensing database most accurate' /
   B2A_4     'licensing database no cost or minimal cost' /
   B2A_5     'licensing database required to use by statute or rule' /
   B2A_6     'licensing database other' /
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
   B3A       'Final dataset includes regulated providers/facilities'+
     ' (centersand family child care providers/facilities, including regulated'+
     ' afterschool program)'/
   B3A1      'Total number of regulated providers/facilities in finaldataset' /
   B3A2      'Type of sample selected' /
   B3B       'Final dataset includes family child care'+
     ' providers/facilitieswho are legally exempt from regulation'/
   B3B1      'Total number of family child care providers/facilities'+
     ' infinal dataset'/
   B3B2      'Type of sample selected' /
   B3C       'Final dataset includes family, friends, or neighbors who'+
     ' arelegally exempt from regulation'/
   B3C1      'Total number of family, friends, or neighbors in finaldataset' /
   B3C2      'Type of sample selected' /
   B3D       'Final dataset includes centers that are legally exempt'+
     ' fromregulation'/
   B3D1      'Total number of centers in the final dataset' /
   B3D2      'Type of sample selected' /
   B3E       'Final dataset includes after school education (non regulated)' /
   B3E1      'Total number of centers in the final dataset' /
   B3E2      'Type of sample selected' /
   B3F       'Final dataset includes providers located on militaryfacilities' /
   B3F1      'Total number of military providers/facilities in the'+
     ' finaldataset'/
   B3F2      'Type of sample selected' /
   B3G       'Final dataset includes providers/facilities located'+
     ' on tribalreservations or in tribal service areas and regulated by'+
     ' the state'/
   B3G1      'Total number of providers/facilities of this type in'+
     ' thefinal dataset'/
   B3G2      'Type of sample selected' /
   B3H       'Final dataset includes providers/facilities located'+
     ' on tribalreservations or in tribal service areas and regulated by'+
     ' the tribe'/
   B3H1      'Total number of providers/facilities of this type in the'+
     ' final dataset'/
   B3H2      'Type of sample selected' /
   C1        'Data collection method used' /
   C1A1      'Mail' /
   C1A2      'Phone' /
   C1A3      'Web' /
   C1B       'Specific data collection method used' /
   C2        'Survey was field tested or piloted before used' /
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
   C3        'Other languages the survey (not the pilot) were available in.' /
   C4A       'Providers/facilities tried to reach' /
   C4B       'Providers/facilities who were reached but refused'+
     ' toparticipate'/
   C4C       'Providers dropped from the sample (e.g., they currently'+
     ' arenot providing care, no valid telephone number, not charging for'+
     ' childcare, etc.)'/
   C4D       'Providers/facilities who completed the survey' /
   C5A       'financial incentives for respondents' /
   C5B       'follow up letters or calls to encourage response' /
   C5C       'training/technical assistance on how to complete the survey' /
   C5D       'other incentives' /
   C6        'Month/day, and year data collection was completed' /
   C7        'CCR&R or licensing agency update rate data' /
   C8        'Update conducted in a language other than English' /
   C9A       'providing rate data is required to be included in R&R' /
   C9B       'providing rate data is required as part of'+
     ' licensing/re-licensing'/
   C9C       'financial incentives for respondents' /
   C9D       'follow up letters or calls to encourage response' /
   C9E       'other incentives' /
   C10       'Providers in the entire database who do not report price data' /
   C11       'Standard for how recent the R&R or licensing data should'+
     ' be atthe time of the download'/
   C12       'Month/day, and year R&R or licensing agency data wasdownloaded' /
   C13       'BEST estimate of the time needed for a single provider'+
     ' /facility to provide the requested information'/
   C14       'Statement that BEST describes how'+
     ' providers/facilitiesreported rate information'/
   C14A      'Providers/facilities asked to convert their rates to'+
     ' somestandard mode such as to monthly or hourly rate'/
   C15       'Reported rates checked for internal consistency (e.g.,'+
     ' datachecks to confirm that data was within reasonable range)'/
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
   NON_ST    'Rate information collected for non standard hours care' /
   C17       'Ask providers/facilities the number or percent of children'+
     ' incare who receive a subsidy'/
   C18       'Providers/facilities with subsidized children excluded' /
   C18A      'Percent of subsidized children lead to exclusion of provider' /
   C19A      'registration fees' /
   C19B      'transportation fees' /
   C19C      'food fees' /
   C19D      'activity fees' /
   C19E      'other' /
   C20A      'licensed capacity for children' /
   C20B      'licensed capacity for children by age group' /
   C20C      'desired capacity of children' /
   C20D      'desired capacity of children by age group' /
   C20E      'actual current enrollment of children' /
   C20F      'actual current enrollment of children by age group' /
   C20G      'other' /
   C20H      'home based provider education level' /
   C20I      'home based provider training level' /
   C20J      'home based provider wages' /
   C20K      'home based provider benefit level' /
   C20L      'center based provider education level' /
   C20M      'center based provider training level' /
   C20N      'center based provider wages' /
   C20O      'center based provider benefit level' /
   C20P      'other' /
   C20Q      'group size' /
   C20R      'adult child ratio' /
   C20S      'accreditation status' /
   C20T      'other sources of support for care' /
   C20U      'for profit/nonprofit status' /
   C20V      'sponsorship' /
   C20W      'other' /
   C20X      'Provider''s actual cost of providing care including'+
     ' insurance,space and utility costs, etc.'/
   D1A       'Head Start programs' /
   D1B       'State funded pre kindergarten programs' /
   D1C       'Migrant Head Start' /
   D1D       'Providers/facilities serving only subsidized children' /
   D1E       'Providers/facilities serving a high percent of subsidized kids' /
   D1F       'part day, part week programs' /
   D1G       'other types of providers/facilities' /
   D2        'Unit of analysis' /
   D2A1      'licensed capacity for children' /
   D2A2      'licensed capacity for children by age group' /
   D2A3      'desired capacity of children' /
   D2A4      'desired capacity of children by age group' /
   D2A5      'actual current enrollment of children served' /
   D2A6      'actual current enrollment of children served by age group' /
   D2A7      'other' /
   D3_COUNTY 'rate data analyzed by geographic area: county' /
   D3_ZIP    'rate data analyzed by geographic area: zipcode' /
   D3_REGION 'rate data analyzed by geographic area: region' /
   D3_STATE  'rate data analyzed by geographic area: whole stateterritory'+
     ' or tribe'/
   D3_OTHER  'rate data analyzed by geographic area: other' /
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
   D4A       'part day rates' /
   D4B       'part week rates' /
   D4C       'rates for care of children with special needs' /
   D4D       'rates in limited markets such as rural areas' /
   D4E       'rate trends over time (e.g., last 3 years)' /
   D4F       'rates by structural quality indicators' /
   D4G       'other analyses' /
   D5        'Rates reported by providers converted to some standard'+
     ' mode such as to a monthly or hourly rate'/
   D6        'Estimated child care accessibility (the percent of market'+
     ' towhich families with subsidies have access estimated)'/
   D7        'Methodological problems or issues encountered' /
   D8        'Methodology changed or revised from methodologies used in'+
     ' theprevious market rate survey'/
   D9        'Currently conducting a market rate survey' /
   D9A       'Using a different method than in most recent MRS' /
   D9A2      'Willing to complete the survey again for the market'+
     ' ratesurvey currently being conducted'/
   D10       'Anticipate the method used in most recent MRS to be repeated'+
     ' in future surveys'/
   E1A       'printed report' /
   E1B       'web posting' /
   E1C       'news release' /
   E1D       'other' /
   E2A       'legislators' /
   E2B       'state child care resource & referral network' /
   E2C       'local child care resource & referral agencies' /
   E2D       'providers' /
   E2E       'parents' /
   E2F       'other' /
   F1        'Date when the current maximum payment rates were set' /
   F2        'Current rates adjusted based on the most recently completed'+
     ' MRS'/
   F2A       'Following the most recently completed market rate'+
     ' survey,payment rates were or are likely to be:'/
   F3        'Current payment rates set at or above the 75th percentile'+
     ' ofrates'/
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
   F6_COUNTY 'payment rates set by geographic area: county' /
   F6_ZIP    'payment rates set by geographic area: zip' /
   F6_REGION 'rate data analyzed by geographic area: region' /
   F6_STATE  'payment rates set by geographic area: state' /
   F6_OTHER  'rate data analyzed by geographic area: other' /
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
   F7A       'registration fees' /
   F7B       'transportation fees' /
   F7C       'food fees' /
   F7D       'activity fees' /
   F7E       'other' /
   F8        'Payment rates set for geographic areas with providers with'+
     ' lowor no prices'/
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
   LEAD_STAFF2 999999 'unknown' /
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
