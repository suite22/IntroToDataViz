/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21402
 |        CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
 |               STATES, TERRITORIES, AND TRIBES, 2005-2006
 |                (DATASET 0001: MARKET RATE SURVEY DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21402-0001-statasetup.do)
 |
 **************************************************************************/

set mem 6m  /* Allocating 6 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/


label data "Child Care Market Rate Survey Practices and Policies of States, Territories, and Tribes, 2005-2006, Dataset 0001"

#delimit ;
label define A1        1 "state" 2 "territory" 3 "tribe" ;
label define A1A       0 "no" 1 "yes, some non-exempt tribal providers"
                       2 "yes, all non-exempt tribal providers" ;
label define A2        0 "no" 1 "yes" ;
label define A2A1      0 "no" 1 "yes" ;
label define A2A2      0 "no" 1 "yes" ;
label define A2A3      0 "no" 1 "yes" ;
label define A2A4      0 "no" 1 "yes" ;
label define A2A5      0 "no" 1 "yes" ;
label define A2A6      0 "no" 1 "yes" ;
label define A4A       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A4B       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A4C       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A4D       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A4E       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A4F       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A4G       1 "state/territorial/tribal lead agency"
                       2 "other state/territorial/tribal agency"
                       3 "state resource and referral network"
                       4 "university contractors"
                       5 "research or survey firm contractors"
                       6 "other contractors"
                       9 "this task was not done in most recent MRS" ;
label define A5        0 "no" 1 "yes" ;
label define A5A       1 "created specifically to guide MRS"
                       2 "an existing group for child care issues/policies"
                       3 "other" ;
label define A6_1      1 "poor" 5 "excellent" 9 "don't know" ;
label define A6_2      1 "poor" 5 "excellent" 9 "don't know" ;
label define A6_3      1 "poor" 5 "excellent" 9 "don't know" ;
label define LEAD_STAFF2 999999 "unknown" ;
label define A8        0 "no" 1 "yes" ;
label define A8A       999999 "unknown" ;
label define A8B       0 "no" 1 "yes" 9 "don't know" ;
label define B1A       -1 "not checked" 1 "checked" ;
label define B1B       -1 "not checked" 1 "checked" ;
label define B1C       -1 "not checked" 1 "checked" ;
label define B1D       -1 "not checked" 1 "checked" ;
label define B2A_1     -1 "not checked" 1 "checked" ;
label define B2A_2     -1 "not checked" 1 "checked" ;
label define B2A_3     -1 "not checked" 1 "checked" ;
label define B2A_4     -1 "not checked" 1 "checked" ;
label define B2A_5     -1 "not checked" 1 "checked" ;
label define B2A_6     -1 "not checked" 1 "checked" ;
label define B2B_1     -1 "not checked" 1 "checked" ;
label define B2B_2     -1 "not checked" 1 "checked" ;
label define B2B_3     -1 "not checked" 1 "checked" ;
label define B2B_4     -1 "not checked" 1 "checked" ;
label define B2B_5     -1 "not checked" 1 "checked" ;
label define B2B_6     -1 "not checked" 1 "checked" ;
label define B2C_1     -1 "not checked" 1 "checked" ;
label define B2C_2     -1 "not checked" 1 "checked" ;
label define B2C_3     -1 "not checked" 1 "checked" ;
label define B2C_4     -1 "not checked" 1 "checked" ;
label define B2C_5     -1 "not checked" 1 "checked" ;
label define B2C_6     -1 "not checked" 1 "checked" ;
label define B2D_1     -1 "not checked" 1 "checked" ;
label define B2D_2     -1 "not checked" 1 "checked" ;
label define B2D_3     -1 "not checked" 1 "checked" ;
label define B2D_4     -1 "not checked" 1 "checked" ;
label define B2D_5     -1 "not checked" 1 "checked" ;
label define B2D_6     -1 "not checked" 1 "checked" ;
label define B3A       0 "none" 1 "some" 2 "most" 3 "all" 9 "no answer" ;
label define B3A1      99999 "don't know / no response" ;
label define B3A2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3B       0 "no" 1 "yes" 9 "no answer" ;
label define B3B1      99999 "don't know / no response" ;
label define B3B2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3C       0 "no" 1 "yes" 9 "no answer" ;
label define B3C1      99999 "don't know / no response" ;
label define B3C2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3D       0 "no" 1 "yes"
                       2 "no centers are exempt from regulation"
                       9 "no answer" ;
label define B3D1      99999 "don't know / no response" ;
label define B3D2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3E       0 "no" 1 "yes" 9 "no answer" ;
label define B3E1      99999 "don't know / no response" ;
label define B3E2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3F       0 "no" 1 "yes" 9 "no answer" ;
label define B3F1      99999 "don't know / no response" ;
label define B3F2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3G       0 "no" 1 "yes, some" 2 "yes, all" 9 "no answer" ;
label define B3G1      99999 "don't know / no response" ;
label define B3G2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define B3H       0 "no" 1 "yes, some" 2 "yes, all" 9 "no answer" ;
label define B3H1      99999 "don't know / no response" ;
label define B3H2      1 "total population" 2 "random sample"
                       3 "stratified random sample" ;
label define C1
                       1 "data collected by mail, telephone, or web-based survey"
                       2 "data collected by R&R and/or licensing" ;
label define C1A1      -1 "not checked" 1 "checked" ;
label define C1A2      -1 "not checked" 1 "checked" ;
label define C1A3      -1 "not checked" 1 "checked" ;
label define C1B       1 "Resource and Referral agency download"
                       2 "Licensing agency download" 3 "Other" ;
label define C2        0 "no" 1 "yes" ;
label define C2A1      -1 "not checked" 1 "checked" ;
label define C2A2      -1 "not checked" 1 "checked" ;
label define C2A3      -1 "not checked" 1 "checked" ;
label define C2A4      -1 "not checked" 1 "checked" ;
label define C2A5      -1 "not checked" 1 "checked" ;
label define C2A6      -1 "not checked" 1 "checked" ;
label define C2A7      -1 "not checked" 1 "checked" ;
label define C2B       999 "no answer" ;
label define C3        0 "no" 1 "yes" ;
label define C4A       999999 "unknown" ;
label define C4B       999999 "unknown" ;
label define C4C       999999 "unknown" ;
label define C4D       999999 "unknown" ;
label define C5A       -1 "not checked" 1 "checked" ;
label define C5B       -1 "not checked" 1 "checked" ;
label define C7        0 "no"
                       1 "yes, updated rate information for some providers"
                       2 "yes, updated rate information from all providers" ;
label define C8        0 "no" 1 "yes" ;
label define C9A       -1 "not checked" 1 "checked" ;
label define C9B       -1 "not checked" 1 "checked" ;
label define C11       0 "no standard" 1 "rate data should be < 3 months old"
                       2 "rate data should be 4-6 months old"
                       3 "rate data should be 7-12 months old" 4 "other" ;
label define C13       1 "< 5 minutes" 2 "6-10 minutes" 3 "11-15 minutes"
                       4 "16-20 minutes" ;
label define C14
                       1 "providers/facilities reported their rates into pre-determine"
                       2 "providers/facilities reported their actual rates in whatever" ;
label define C14A      0 "no" 1 "yes" ;
label define C15       0 "no" 1 "yes" ;
label define C16_HOURLY 0 "no" 1 "yes" ;
label define C16_DAILY 0 "no" 1 "yes" ;
label define C16_WEEKLY 0 "no" 1 "yes" ;
label define C16_MONTHLY 0 "no" 1 "yes" ;
label define C16_PARTDAY 0 "no" 1 "yes" ;
label define C16_PARTWEEK 0 "no" 1 "yes" ;
label define C16_HS    0 "no" 1 "yes" ;
label define C16_PREK  0 "no" 1 "yes" ;
label define C16_MHS   0 "no" 1 "yes" ;
label define C16_OTHER 0 "no" 1 "yes" ;
label define C16_IN    0 "no" 1 "yes" ;
label define C16_TD    0 "no" 1 "yes" ;
label define C16_PS    0 "no" 1 "yes" ;
label define C16_SA    0 "no" 1 "yes" ;
label define C16_SASY  -1 "not checked" 1 "checked" ;
label define C16_SAS   -1 "not checked" 1 "checked" ;
label define C16_NONE  -1 "not checked" 1 "checked" ;
label define C16A_IN   0 "no" 1 "yes" ;
label define C16A_TD   0 "no" 1 "yes" ;
label define C16A_PS   0 "no" 1 "yes" ;
label define C16A_SA   0 "no" 1 "yes" ;
label define NON_ST    0 "no" 1 "yes" ;
label define C17       0 "no" 1 "yes" ;
label define C18       0 "no" 1 "yes" 9 "don't know" ;
label define C19A      -1 "not checked" 1 "checked" ;
label define C19B      -1 "not checked" 1 "checked" ;
label define C19C      -1 "not checked" 1 "checked" ;
label define C19D      -1 "not checked" 1 "checked" ;
label define C19E      -1 "not checked" 1 "checked" ;
label define C20A      -1 "not checked" 1 "checked" ;
label define C20B      -1 "not checked" 1 "checked" ;
label define C20C      -1 "not checked" 1 "checked" ;
label define C20D      -1 "not checked" 1 "checked" ;
label define C20E      -1 "not checked" 1 "checked" ;
label define C20F      -1 "not checked" 1 "checked" ;
label define C20G      -1 "not checked" 1 "checked" ;
label define C20H      -1 "not checked" 1 "checked" ;
label define C20I      -1 "not checked" 1 "checked" ;
label define C20J      -1 "not checked" 1 "checked" ;
label define C20K      -1 "not checked" 1 "checked" ;
label define C20L      -1 "not checked" 1 "checked" ;
label define C20M      -1 "not checked" 1 "checked" ;
label define C20N      -1 "not checked" 1 "checked" ;
label define C20O      -1 "not checked" 1 "checked" ;
label define C20P      -1 "not checked" 1 "checked" ;
label define C20Q      -1 "not checked" 1 "checked" ;
label define C20R      -1 "not checked" 1 "checked" ;
label define C20S      -1 "not checked" 1 "checked" ;
label define C20T      -1 "not checked" 1 "checked" ;
label define C20U      -1 "not checked" 1 "checked" ;
label define C20V      -1 "not checked" 1 "checked" ;
label define C20W      -1 "not checked" 1 "checked" ;
label define C20X      0 "no" 1 "yes" 9 "don't know" ;
label define D1A       -1 "not checked" 1 "checked" ;
label define D1B       -1 "not checked" 1 "checked" ;
label define D1C       -1 "not checked" 1 "checked" ;
label define D1D       -1 "not checked" 1 "checked" ;
label define D1E       -1 "not checked" 1 "checked" ;
label define D1F       -1 "not checked" 1 "checked" ;
label define D1G       -1 "not checked" 1 "checked" ;
label define D2        1 "provider/facility" 2 "slot" 3 "both" 9 "don't know" ;
label define D2A1      -1 "not checked" 1 "checked" ;
label define D2A2      -1 "not checked" 1 "checked" ;
label define D2A3      -1 "not checked" 1 "checked" ;
label define D2A4      -1 "not checked" 1 "checked" ;
label define D2A5      -1 "not checked" 1 "checked" ;
label define D2A6      -1 "not checked" 1 "checked" ;
label define D2A7      -1 "not checked" 1 "checked" ;
label define D3_COUNTY 0 "no" 1 "yes" 9 "don't know" ;
label define D3_ZIP    0 "no" 1 "yes" 9 "don't know" ;
label define D3_REGION 0 "no" 1 "yes" 9 "don't know" ;
label define D3_STATE  0 "no" 1 "yes" 9 "don't know" ;
label define D3_OTHER  0 "no" 1 "yes" 9 "don't know" ;
label define D3_IN     0 "no" 1 "yes" 9 "don't know" ;
label define D3_TD     0 "no" 1 "yes" 9 "don't know" ;
label define D3_PS     0 "no" 1 "yes" 9 "don't know" ;
label define D3_SA     0 "no" 1 "yes" 9 "don't know" ;
label define D3_SASY   -1 "not checked" 1 "checked" ;
label define D3_SAS    -1 "not checked" 1 "checked" ;
label define D3_NONE   -1 "not checked" 1 "checked" ;
label define D3_CENTER 0 "no" 1 "yes" 9 "don't know" ;
label define D3_FAMILY 0 "no" 1 "yes" 9 "don't know" ;
label define D3_GROUP  0 "no" 1 "yes" 9 "don't know" ;
label define D3_INHOME 0 "no" 1 "yes" 9 "don't know" ;
label define D3_FFN    0 "no" 1 "yes" 9 "don't know" ;
label define D3_SACENTER 0 "no" 1 "yes" 9 "don't know" ;
label define D3_SAACT  0 "no" 1 "yes" 9 "don't know" ;
label define D3_HOURLY 0 "no" 1 "yes" 9 "don't know" ;
label define D3_DAILY  0 "no" 1 "yes" 9 "don't know" ;
label define D3_WEEKLY 0 "no" 1 "yes" 9 "don't know" ;
label define D3_MONTHLY 0 "no" 1 "yes" 9 "don't know" ;
label define D4A       0 "no" 1 "yes" 9 "don't know" ;
label define D4B       0 "no" 1 "yes" 9 "don't know" ;
label define D4C       0 "no" 1 "yes" 9 "don't know" ;
label define D4D       0 "no" 1 "yes" 9 "don't know" ;
label define D4E       0 "no" 1 "yes" 9 "don't know" ;
label define D4F       0 "no" 1 "yes" 9 "don't know" ;
label define D4G       0 "no" 1 "yes" 9 "don't know" ;
label define D5        0 "no" 1 "yes" ;
label define D6        0 "no" 1 "yes" ;
label define D7        0 "no" 1 "yes" ;
label define D8        0 "no" 1 "yes" ;
label define D9        0 "no" 1 "yes" ;
label define D9A       0 "no" 1 "yes" ;
label define D9A2      0 "no" 1 "yes" ;
label define D10       0 "no" 1 "yes" ;
label define E1A       -1 "not checked" 1 "checked" ;
label define E1B       -1 "not checked" 1 "checked" ;
label define E1C       -1 "not checked" 1 "checked" ;
label define E1D       -1 "not checked" 1 "checked" ;
label define E2A       -1 "not checked" 1 "checked" ;
label define E2B       -1 "not checked" 1 "checked" ;
label define E2C       -1 "not checked" 1 "checked" ;
label define E2D       -1 "not checked" 1 "checked" ;
label define E2E       -1 "not checked" 1 "checked" ;
label define E2F       -1 "not checked" 1 "checked" ;
label define F2        0 "no"
                       1 "no, not yet, but will be within the next several months"
                       2 "yes" ;
label define F2A       1 "kept the same"
                       2 "increased for all types of care and age categories"
                       3 "decreased for all types of care and age categories"
                       4 "increased for some types of care and age categories"
                       5 "decreased for some types of care and age categories" ;
label define F3        0 "no" 1 "yes, for all categories"
                       2 "yes, for some categories" ;
label define F4A       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4B       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4C       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4D       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4E       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4F       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4G       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4H       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F4I       0 "no, not influential in setting rates"
                       1 "yes, influential in setting rates" ;
label define F6_COUNTY 0 "no" 1 "yes" 9 "don't know" ;
label define F6_ZIP    0 "no" 1 "yes" 9 "don't know" ;
label define F6_REGION 0 "no" 1 "yes" 9 "don't know" ;
label define F6_STATE  0 "no" 1 "yes" 9 "don't know" ;
label define F6_OTHER  0 "no" 1 "yes" 9 "don't know" ;
label define F6_IN     0 "no" 1 "yes" 9 "don't know" ;
label define F6_TD     0 "no" 1 "yes" 9 "don't know" ;
label define F6_PS     0 "no" 1 "yes" 9 "don't know" ;
label define F6_SA     0 "no" 1 "yes" 9 "don't know" ;
label define F6_SASY   -1 "not checked" 1 "checked" ;
label define F6_SAS    -1 "not checked" 1 "checked" ;
label define F6_NONE   -1 "not checked" 1 "checked" ;
label define F6_CENTER 0 "no" 1 "yes" 9 "don't know" ;
label define F6_FAMILY 0 "no" 1 "yes" 9 "don't know" ;
label define F6_GROUP  0 "no" 1 "yes" 9 "don't know" ;
label define F6_INHOME 0 "no" 1 "yes" 9 "don't know" ;
label define F6_SACENTER 0 "no" 1 "yes" 9 "don't know" ;
label define F6_SAACT  0 "no" 1 "yes" 9 "don't know" ;
label define F6_SPECIAL 0 "no" 1 "yes" 9 "don't know" ;
label define F6C1      0 "no" 1 "yes" ;
label define F7A       -1 "not checked" 1 "checked" ;
label define F7B       -1 "not checked" 1 "checked" ;
label define F7C       -1 "not checked" 1 "checked" ;
label define F7D       -1 "not checked" 1 "checked" ;
label define F7E       -1 "not checked" 1 "checked" ;
label define F8        0 "no" 1 "yes" ;


#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

