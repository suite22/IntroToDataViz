/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 21402
 |        CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
 |               STATES, TERRITORIES, AND TRIBES, 2005-2006
 |                (DATASET 0001: MARKET RATE SURVEY DATA)
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\21402-0001-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
  VALUE a1ffffff  1='(1) state' 2='(2) territory' 3='(3) tribe' ;
  VALUE a1a       0='(0) no' 1='(1) yes, some non-exempt tribal providers'
                  2='(2) yes, all non-exempt tribal providers' ;
  VALUE a2ffffff  0='(0) no' 1='(1) yes' ;
  VALUE a2a1ffff  0='(0) no' 1='(1) yes' ;
  VALUE a2a2ffff  0='(0) no' 1='(1) yes' ;
  VALUE a2a3ffff  0='(0) no' 1='(1) yes' ;
  VALUE a2a4ffff  0='(0) no' 1='(1) yes' ;
  VALUE a2a5ffff  0='(0) no' 1='(1) yes' ;
  VALUE a2a6ffff  0='(0) no' 1='(1) yes' ;
  VALUE a4a       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a4b       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a4c       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a4d       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a4e       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a4f       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a4g       1='(1) state/territorial/tribal lead agency'
                  2='(2) other state/territorial/tribal agency'
                  3='(3) state resource and referral network'
                  4='(4) university contractors'
                  5='(5) research or survey firm contractors'
                  6='(6) other contractors'
                  9='(9) this task was not done in most recent MRS' ;
  VALUE a5ffffff  0='(0) no' 1='(1) yes' ;
  VALUE a5a       1='(1) created specifically to guide MRS'
                  2='(2) an existing group for child care issues/policies'
                  3='(3) other' ;
  VALUE a6_1ffff  1='(1) poor' 5='(5) excellent' 9='(9) don''t know' ;
  VALUE a6_2ffff  1='(1) poor' 5='(5) excellent' 9='(9) don''t know' ;
  VALUE a6_3ffff  1='(1) poor' 5='(5) excellent' 9='(9) don''t know' ;
  VALUE lead_stf  999999='(999999) unknown' ;
  VALUE a8ffffff  0='(0) no' 1='(1) yes' ;
  VALUE a8a       999999='(999999) unknown' ;
  VALUE a8b       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE b1a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE b1b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE b1c       -1='(-1) not checked' 1='(1) checked' ;
  VALUE b1d       -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2a_1fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2a_2fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2a_3fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2a_4fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2a_5fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2a_6fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2b_1fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2b_2fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2b_3fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2b_4fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2b_5fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2b_6fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2c_1fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2c_2fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2c_3fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2c_4fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2c_5fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2c_6fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2d_1fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2d_2fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2d_3fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2d_4fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2d_5fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b2d_6fff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE b3a       0='(0) none' 1='(1) some' 2='(2) most' 3='(3) all' 9='(9) no answer' ;
  VALUE b3a1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3a2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3b       0='(0) no' 1='(1) yes' 9='(9) no answer' ;
  VALUE b3b1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3b2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3c       0='(0) no' 1='(1) yes' 9='(9) no answer' ;
  VALUE b3c1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3c2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3d       0='(0) no' 1='(1) yes' 2='(2) no centers are exempt from regulation'
                  9='(9) no answer' ;
  VALUE b3d1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3d2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3e       0='(0) no' 1='(1) yes' 9='(9) no answer' ;
  VALUE b3e1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3e2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3f       0='(0) no' 1='(1) yes' 9='(9) no answer' ;
  VALUE b3f1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3f2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3g       0='(0) no' 1='(1) yes, some' 2='(2) yes, all' 9='(9) no answer' ;
  VALUE b3g1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3g2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE b3h       0='(0) no' 1='(1) yes, some' 2='(2) yes, all' 9='(9) no answer' ;
  VALUE b3h1ffff  99999='(99999) don''t know / no response' ;
  VALUE b3h2ffff  1='(1) total population' 2='(2) random sample'
                  3='(3) stratified random sample' ;
  VALUE c1ffffff  1='(1) data collected by mail, telephone, or web-based survey'
                  2='(2) data collected by R&R and/or licensing' ;
  VALUE c1a1ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c1a2ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c1a3ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c1b       1='(1) Resource and Referral agency download'
                  2='(2) Licensing agency download' 3='(3) Other' ;
  VALUE c2ffffff  0='(0) no' 1='(1) yes' ;
  VALUE c2a1ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2a2ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2a3ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2a4ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2a5ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2a6ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2a7ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c2b       999='(999) no answer' ;
  VALUE c3ffffff  0='(0) no' 1='(1) yes' ;
  VALUE c4a       999999='(999999) unknown' ;
  VALUE c4b       999999='(999999) unknown' ;
  VALUE c4c       999999='(999999) unknown' ;
  VALUE c4d       999999='(999999) unknown' ;
  VALUE c5a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE c5b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE c7ffffff  0='(0) no' 1='(1) yes, updated rate information for some providers'
                  2='(2) yes, updated rate information from all providers' ;
  VALUE c8ffffff  0='(0) no' 1='(1) yes' ;
  VALUE c9a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE c9b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE c11fffff  0='(0) no standard' 1='(1) rate data should be < 3 months old'
                  2='(2) rate data should be 4-6 months old'
                  3='(3) rate data should be 7-12 months old' 4='(4) other' ;
  VALUE c13fffff  1='(1) < 5 minutes' 2='(2) 6-10 minutes' 3='(3) 11-15 minutes'
                  4='(4) 16-20 minutes' ;
  VALUE c14fffff
                  1='(1) providers/facilities reported their rates into pre-determine'
                  2='(2) providers/facilities reported their actual rates in whatever' ;
  VALUE c14a      0='(0) no' 1='(1) yes' ;
  VALUE c15fffff  0='(0) no' 1='(1) yes' ;
  VALUE c16_houf  0='(0) no' 1='(1) yes' ;
  VALUE c16_daif  0='(0) no' 1='(1) yes' ;
  VALUE c16_weef  0='(0) no' 1='(1) yes' ;
  VALUE c16_monf  0='(0) no' 1='(1) yes' ;
  VALUE c16_parf  0='(0) no' 1='(1) yes' ;
  VALUE c16_pa0f  0='(0) no' 1='(1) yes' ;
  VALUE c16_hs    0='(0) no' 1='(1) yes' ;
  VALUE c16_prek  0='(0) no' 1='(1) yes' ;
  VALUE c16_mhs   0='(0) no' 1='(1) yes' ;
  VALUE c16_othf  0='(0) no' 1='(1) yes' ;
  VALUE c16_in    0='(0) no' 1='(1) yes' ;
  VALUE c16_td    0='(0) no' 1='(1) yes' ;
  VALUE c16_ps    0='(0) no' 1='(1) yes' ;
  VALUE c16_sa    0='(0) no' 1='(1) yes' ;
  VALUE c16_sasy  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c16_sas   -1='(-1) not checked' 1='(1) checked' ;
  VALUE c16_none  -1='(-1) not checked' 1='(1) checked' ;
  VALUE c16a_in   0='(0) no' 1='(1) yes' ;
  VALUE c16a_td   0='(0) no' 1='(1) yes' ;
  VALUE c16a_ps   0='(0) no' 1='(1) yes' ;
  VALUE c16a_sa   0='(0) no' 1='(1) yes' ;
  VALUE non_st    0='(0) no' 1='(1) yes' ;
  VALUE c17fffff  0='(0) no' 1='(1) yes' ;
  VALUE c18fffff  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE c19a      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c19b      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c19c      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c19d      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c19e      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20a      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20b      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20c      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20d      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20e      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20f      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20g      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20h      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20i      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20j      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20k      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20l      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20m      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20n      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20o      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20p      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20q      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20r      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20s      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20t      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20u      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20v      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20w      -1='(-1) not checked' 1='(1) checked' ;
  VALUE c20x      0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d1a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d1b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d1c       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d1d       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d1e       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d1f       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d1g       -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2ffffff  1='(1) provider/facility' 2='(2) slot' 3='(3) both' 9='(9) don''t know' ;
  VALUE d2a1ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2a2ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2a3ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2a4ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2a5ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2a6ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d2a7ffff  -1='(-1) not checked' 1='(1) checked' ;
  VALUE d3_counf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_zip    0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_regif  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_state  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_other  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_in     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_td     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_ps     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_sa     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_sasy   -1='(-1) not checked' 1='(1) checked' ;
  VALUE d3_sas    -1='(-1) not checked' 1='(1) checked' ;
  VALUE d3_none   -1='(-1) not checked' 1='(1) checked' ;
  VALUE d3_centf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_famif  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_group  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_inhof  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_ffn    0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_sacef  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_saact  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_hourf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_daily  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_weekf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d3_montf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4a       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4b       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4c       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4d       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4e       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4f       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d4g       0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE d5ffffff  0='(0) no' 1='(1) yes' ;
  VALUE d6ffffff  0='(0) no' 1='(1) yes' ;
  VALUE d7ffffff  0='(0) no' 1='(1) yes' ;
  VALUE d8ffffff  0='(0) no' 1='(1) yes' ;
  VALUE d9ffffff  0='(0) no' 1='(1) yes' ;
  VALUE d9a       0='(0) no' 1='(1) yes' ;
  VALUE d9a2ffff  0='(0) no' 1='(1) yes' ;
  VALUE d10fffff  0='(0) no' 1='(1) yes' ;
  VALUE e1a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e1b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e1c       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e1d       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e2a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e2b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e2c       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e2d       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e2e       -1='(-1) not checked' 1='(1) checked' ;
  VALUE e2f       -1='(-1) not checked' 1='(1) checked' ;
  VALUE f2ffffff  0='(0) no'
                  1='(1) no, not yet, but will be within the next several months'
                  2='(2) yes' ;
  VALUE f2a       1='(1) kept the same'
                  2='(2) increased for all types of care and age categories'
                  3='(3) decreased for all types of care and age categories'
                  4='(4) increased for some types of care and age categories'
                  5='(5) decreased for some types of care and age categories' ;
  VALUE f3ffffff  0='(0) no' 1='(1) yes, for all categories'
                  2='(2) yes, for some categories' ;
  VALUE f4a       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4b       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4c       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4d       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4e       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4f       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4g       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4h       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE f4i       0='(0) no, not influential in setting rates'
                  1='(1) yes, influential in setting rates' ;
  VALUE $f4a1fff  '99'='(99) no answer' ;
  VALUE $f4a2fff  '99'='(99) no answer' ;
  VALUE $f4a3fff  '99'='(99) no answer' ;
  VALUE f6_counf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_zip    0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_regif  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_state  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_other  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_in     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_td     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_ps     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_sa     0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_sasy   -1='(-1) not checked' 1='(1) checked' ;
  VALUE f6_sas    -1='(-1) not checked' 1='(1) checked' ;
  VALUE f6_none   -1='(-1) not checked' 1='(1) checked' ;
  VALUE f6_centf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_famif  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_group  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_inhof  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_sacef  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_saact  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6_specf  0='(0) no' 1='(1) yes' 9='(9) don''t know' ;
  VALUE f6c1ffff  0='(0) no' 1='(1) yes' ;
  VALUE f7a       -1='(-1) not checked' 1='(1) checked' ;
  VALUE f7b       -1='(-1) not checked' 1='(1) checked' ;
  VALUE f7c       -1='(-1) not checked' 1='(1) checked' ;
  VALUE f7d       -1='(-1) not checked' 1='(1) checked' ;
  VALUE f7e       -1='(-1) not checked' 1='(1) checked' ;
  VALUE f8ffffff  0='(0) no' 1='(1) yes' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=2388;
INPUT
        ID 1-10                 PIN $11-18
        A1 19-26                STT $27-76              A1A 77-84
        A2 85-92                A2A1 93-100             A2A2 101-108
        A2A3 109-116            A2A4 117-124            A2A5 125-132
        A2A6 133-140            A3 141-148              A4A 149-156
        A4B 157-164             A4C 165-172             A4D 173-180
        A4E 181-188             A4F 189-196             A4G 197-204
        A4H 205-212             A4I 213-220             A4J 221-228
        A5 229-236              A5A 237-244             A6_1 245-252
        A6_2 253-260            A6_3 261-268            LEAD_STAFF1 269-276
        LEAD_STAFF2 277-284     LEAD_STAFF3 285-292     LEAD_NON 293-300
        OTHER_STAFF1 301-308    OTHER_STAFF2 309-316    OTHER_STAFF3 317-324
        OTHER_NON 325-332       RR 333-340              UNIVERSITY 341-348
        FIRM 349-356            OTHER 357-364           TOTAL 365-372
        A8 373-380              A8A 381-388             A8B 389-396
        B1A 397-404             B1B 405-412             B1C 413-420
        B1D 421-428             B2A_1 429-436           B2A_2 437-444
        B2A_3 445-452           B2A_4 453-460           B2A_5 461-468
        B2A_6 469-476           B2B_1 477-484           B2B_2 485-492
        B2B_3 493-500           B2B_4 501-508           B2B_5 509-516
        B2B_6 517-524           B2C_1 525-532           B2C_2 533-540
        B2C_3 541-548           B2C_4 549-556           B2C_5 557-564
        B2C_6 565-572           B2D_1 573-580           B2D_2 581-588
        B2D_3 589-596           B2D_4 597-604           B2D_5 605-612
        B2D_6 613-620           B3A 621-628             B3A1 629-636
        B3A2 637-644            B3B 645-652             B3B1 653-660
        B3B2 661-668            B3C 669-676             B3C1 677-684
        B3C2 685-692            B3D 693-700             B3D1 701-708
        B3D2 709-716            B3E 717-724             B3E1 725-732
        B3E2 733-740            B3F 741-748             B3F1 749-756
        B3F2 757-764            B3G 765-772             B3G1 773-780
        B3G2 781-788            B3H 789-796             B3H1 797-804
        B3H2 805-812            C1 813-820              C1A1 821-828
        C1A2 829-836            C1A3 837-844            C1B 845-852
        C2 853-860              C2A1 861-868            C2A2 869-876
        C2A3 877-884            C2A4 885-892            C2A5 893-900
        C2A6 901-908            C2A7 909-916            C2B 917-924
        C3 925-932              C4A 933-940             C4B 941-948
        C4C 949-956             C4D 957-964             C5A 965-972
        C5B 973-980             C5C 981-988             C5D 989-996
        C6 997-1004             C7 1005-1012            C8 1013-1020
        C9A 1021-1028           C9B 1029-1036           C9C 1037-1044
        C9D 1045-1052           C9E 1053-1060           C10 1061-1068
        C11 1069-1076           C12 1077-1084           C13 1085-1092
        C14 1093-1100           C14A 1101-1108          C15 1109-1116
        C16_HOURLY 1117-1124    C16_DAILY 1125-1132     C16_WEEKLY 1133-1140
        C16_MONTHLY 1141-1148   C16_PARTDAY 1149-1156   C16_PARTWEEK 1157-1164
        C16_HS 1165-1172        C16_PREK 1173-1180      C16_MHS 1181-1188
        C16_OTHER 1189-1196     C16_IN 1197-1204        C16_TD 1205-1212
        C16_PS 1213-1220        C16_SA 1221-1228        C16_SASY 1229-1236
        C16_SAS 1237-1244       C16_NONE 1245-1252      C16A_IN 1253-1260
        C16A_TD 1261-1268       C16A_PS 1269-1276       C16A_SA 1277-1284
        NON_ST 1285-1292        C17 1293-1300           C18 1301-1308
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
        D1G 1597-1604           D2 1605-1612            D2A1 1613-1620
        D2A2 1621-1628          D2A3 1629-1636          D2A4 1637-1644
        D2A5 1645-1652          D2A6 1653-1660          D2A7 1661-1668
        D3_COUNTY 1669-1676     D3_ZIP 1677-1684        D3_REGION 1685-1692
        D3_STATE 1693-1700      D3_OTHER 1701-1708      D3_IN 1709-1716
        D3_TD 1717-1724         D3_PS 1725-1732         D3_SA 1733-1740
        D3_SASY 1741-1748       D3_SAS 1749-1756        D3_NONE 1757-1764
        D3_CENTER 1765-1772     D3_FAMILY 1773-1780     D3_GROUP 1781-1788
        D3_INHOME 1789-1796     D3_FFN 1797-1804        D3_SACENTER 1805-1812
        D3_SAACT 1813-1820      D3_HOURLY 1821-1828     D3_DAILY 1829-1836
        D3_WEEKLY 1837-1844     D3_MONTHLY 1845-1852    D4A 1853-1860
        D4B 1861-1868           D4C 1869-1876           D4D 1877-1884
        D4E 1885-1892           D4F 1893-1900           D4G 1901-1908
        D5 1909-1916            D6 1917-1924            D7 1925-1932
        D8 1933-1940            D9 1941-1948            D9A 1949-1956
        D9A2 1957-1964          D10 1965-1972           E1A 1973-1980
        E1B 1981-1988           E1C 1989-1996           E1D 1997-2004
        E2A 2005-2012           E2B 2013-2020           E2C 2021-2028
        E2D 2029-2036           E2E 2037-2044           E2F 2045-2052
        F1 2053-2060            F2 2061-2068            F2A 2069-2076
        F3 2077-2084            F4A 2085-2092           F4B 2093-2100
        F4C 2101-2108           F4D 2109-2116           F4E 2117-2124
        F4F 2125-2132           F4G 2133-2140           F4H 2141-2148
        F4I 2149-2156           F4A1 $2157-2164         F4A2 $2165-2172
        F4A3 $2173-2180         F6_COUNTY 2181-2188     F6_ZIP 2189-2196
        F6_REGION 2197-2204     F6_STATE 2205-2212      F6_OTHER 2213-2220
        F6_IN 2221-2228         F6_TD 2229-2236         F6_PS 2237-2244
        F6_SA 2245-2252         F6_SASY 2253-2260       F6_SAS 2261-2268
        F6_NONE 2269-2276       F6_CENTER 2277-2284     F6_FAMILY 2285-2292
        F6_GROUP 2293-2300      F6_INHOME 2301-2308     F6_SACENTER 2309-2316
        F6_SAACT 2317-2324      F6_SPECIAL 2325-2332    F6C1 2333-2340
        F7A 2341-2348           F7B 2349-2356           F7C 2357-2364
        F7D 2365-2372           F7E 2373-2380           F8 2381-2388
        ;


* SAS LABEL STATEMENT;

LABEL
   ID      = '9 digit identification number assigned by Survey Monkey'
   PIN     = 'Oregon State University''s tracking system unique ID number'
   A1      = 'Jurisdiction (state, territory, or tribe) they represent'
   STT     = 'Name of state, territory, or tribe'
   A1A     = 'State or territory regulates child care providers who arelocated on an Indian reservation or in a
tribal service area'
   A2      = 'Legally binding statutes or administrative rules that affectMRS'
   A2A1    = 'how frequently market rate surveys are conducted'
   A2A2    = 'the content of market rate surveys'
   A2A3    = 'how the survey is done; the survey process'
   A2A4    = 'who must be included in the survey sample'
   A2A5    = 'the relationship of maximum payment rates to rate findings'
   A2A6    = 'other aspects of the rate setting process'
   A3      = 'Date the most recent MRS was completed'
   A4A     = 'determined which providers/facilities to include'
   A4B     = 'created survey questions'
   A4C     = 'provided assistance to help providers complete survey'
   A4D     = 'collected rate data from providers/facilities'
   A4E     = 'entered rate data or inputted rate data into licensing or R&Rdatabase'
   A4F     = 'cleaned the rate data'
   A4G     = 'analyzed rate data'
   A4H     = 'interpreted findings'
   A4I     = 'wrote reports on findings'
   A4J     = 'disseminated results'
   A5      = 'Use of an advisory group to guide MRS'
   A5A     = 'Type of advisory group'
   A6_1    = 'accuracy of the rate findings'
   A6_2    = 'cost effectiveness of the MRS process'
   A6_3    = 'ease of managing the MRS process'
   LEAD_STAFF1= 'Lead_staff1 -  Lead agency staff'
   LEAD_STAFF2= 'Lead staff2 -  Lead agency staff'
   LEAD_STAFF3= 'Lead_staff3 -  Lead agency staff'
   LEAD_NON= 'Lead_non    Lead agency non personnel costs'
   OTHER_STAFF1= 'Other_staff1 -  Other agency staff'
   OTHER_STAFF2= 'Other_staff2 -  Other agency staff'
   OTHER_STAFF3= 'Other_staff3 -  Other agency staff'
   OTHER_NON= 'Other_non -  Other agency non personnel cost'
   RR      = 'resource and referral contract'
   UNIVERSITY= 'university/college contract'
   FIRM    = 'research or survey firm contract'
   OTHER   = 'other contract'
   TOTAL   = 'total costs for most recent MRS'
   A8      = 'Funds invested in CCR&R services'
   A8A     = 'Total amount of funds being invested in CCR&R services'
   A8B     = 'CCR&R system have a person responsible for ensuring accurateand reliable data'
   B1A     = 'database: regulated by child care licensing agency'
   B1B     = 'database: receiving child care subsidies'
   B1C     = 'database: enrolled with a resource and referral'
   B1D     = 'other'
   B2A_1   = 'licensing database most up to date'
   B2A_2   = 'licensing database most complete'
   B2A_3   = 'licensing database most accurate'
   B2A_4   = 'licensing database no cost or minimal cost'
   B2A_5   = 'licensing database required to use by statute or rule'
   B2A_6   = 'licensing database other'
   B2B_1   = 'subsidy database most up to date'
   B2B_2   = 'subsidy database most complete'
   B2B_3   = 'subsidy database most accurate'
   B2B_4   = 'subsidy database no cost or minimal cost'
   B2B_5   = 'subsidy database required to use by statute or rule'
   B2B_6   = 'subsidy database other'
   B2C_1   = 'R & R database most up to date'
   B2C_2   = 'R & R database most complete'
   B2C_3   = 'R & R database most accurate'
   B2C_4   = 'R & R database no cost or minimal cost'
   B2C_5   = 'R & R database required to use by statute or rule'
   B2C_6   = 'R & R database other'
   B2D_1   = 'other database most up to date'
   B2D_2   = 'other database most complete'
   B2D_3   = 'other database most accurate'
   B2D_4   = 'other database no cost or minimal cost'
   B2D_5   = 'other database required to use by statute or rule'
   B2D_6   = 'other database other'
   B3A     = 'Final dataset includes regulated providers/facilities (centersand family child care
providers/facilities, including regulated afterschool program)'
   B3A1    = 'Total number of regulated providers/facilities in finaldataset'
   B3A2    = 'Type of sample selected'
   B3B     = 'Final dataset includes family child care providers/facilitieswho are legally exempt from regulation'
   B3B1    = 'Total number of family child care providers/facilities infinal dataset'
   B3B2    = 'Type of sample selected'
   B3C     = 'Final dataset includes family, friends, or neighbors who arelegally exempt from regulation'
   B3C1    = 'Total number of family, friends, or neighbors in finaldataset'
   B3C2    = 'Type of sample selected'
   B3D     = 'Final dataset includes centers that are legally exempt fromregulation'
   B3D1    = 'Total number of centers in the final dataset'
   B3D2    = 'Type of sample selected'
   B3E     = 'Final dataset includes after school education (non regulated)'
   B3E1    = 'Total number of centers in the final dataset'
   B3E2    = 'Type of sample selected'
   B3F     = 'Final dataset includes providers located on militaryfacilities'
   B3F1    = 'Total number of military providers/facilities in the finaldataset'
   B3F2    = 'Type of sample selected'
   B3G     = 'Final dataset includes providers/facilities located on tribalreservations or in tribal service
areas and regulated by the state'
   B3G1    = 'Total number of providers/facilities of this type in thefinal dataset'
   B3G2    = 'Type of sample selected'
   B3H     = 'Final dataset includes providers/facilities located on tribalreservations or in tribal service
areas and regulated by the tribe'
   B3H1    = 'Total number of providers/facilities of this type in the final dataset'
   B3H2    = 'Type of sample selected'
   C1      = 'Data collection method used'
   C1A1    = 'Mail'
   C1A2    = 'Phone'
   C1A3    = 'Web'
   C1B     = 'Specific data collection method used'
   C2      = 'Survey was field tested or piloted before used'
   C2A1    = 'regulated providers/facilities'
   C2A2    = 'family child care providers/facilities who are legally exempt'
   C2A3    = 'family, friends, or neighbors who are legally exempt'
   C2A4    = 'Centers that are legally exempt'
   C2A5    = 'After school education'
   C2A6    = 'Providers located on tribal reservation or in tribal serviceareas and regulated by the state'
   C2A7    = 'Providers located on tribal reservation or in tribal serviceareas and regulated by the tribe'
   C2B     = 'Total number of providers/facilities in the pilot sample'
   C3      = 'Other languages the survey (not the pilot) were available in.'
   C4A     = 'Providers/facilities tried to reach'
   C4B     = 'Providers/facilities who were reached but refused toparticipate'
   C4C     = 'Providers dropped from the sample (e.g., they currently arenot providing care, no valid telephone
number, not charging for childcare, etc.)'
   C4D     = 'Providers/facilities who completed the survey'
   C5A     = 'financial incentives for respondents'
   C5B     = 'follow up letters or calls to encourage response'
   C5C     = 'training/technical assistance on how to complete the survey'
   C5D     = 'other incentives'
   C6      = 'Month/day, and year data collection was completed'
   C7      = 'CCR&R or licensing agency update rate data'
   C8      = 'Update conducted in a language other than English'
   C9A     = 'providing rate data is required to be included in R&R'
   C9B     = 'providing rate data is required as part of licensing/re-licensing'
   C9C     = 'financial incentives for respondents'
   C9D     = 'follow up letters or calls to encourage response'
   C9E     = 'other incentives'
   C10     = 'Providers in the entire database who do not report price data'
   C11     = 'Standard for how recent the R&R or licensing data should be atthe time of the download'
   C12     = 'Month/day, and year R&R or licensing agency data wasdownloaded'
   C13     = 'BEST estimate of the time needed for a single provider /facility to provide the requested
information'
   C14     = 'Statement that BEST describes how providers/facilitiesreported rate information'
   C14A    = 'Providers/facilities asked to convert their rates to somestandard mode such as to monthly or hourly
rate'
   C15     = 'Reported rates checked for internal consistency (e.g., datachecks to confirm that data was within
reasonable range)'
   C16_HOURLY= 'Rate information collected by modes of pricing: hourly'
   C16_DAILY= 'Rate information collected by modes of pricing: daily'
   C16_WEEKLY= 'Rate information collected by modes of pricing: weekly'
   C16_MONTHLY= 'Rate information collected by modes of pricing:monthly'
   C16_PARTDAY= 'Rate information collected by schedule: part-day'
   C16_PARTWEEK= 'Rate information collected by schedule: part-week'
   C16_HS  = 'Rate information collected from no-fee centers: headstart/early head start programs'
   C16_PREK= 'Rate information collected from no-fee centers: pre-kindergarten programs'
   C16_MHS = 'Rate information collected from no-fee centers: migranthead start'
   C16_OTHER= 'Rate information collected from no-fee centers: other nofee programs'
   C16_IN  = 'Rate information collected by age categories: infant care'
   C16_TD  = 'Rate information collected by age categories: toddler care'
   C16_PS  = 'Rate information collected by age categories: preschool-age care'
   C16_SA  = 'Rate information collected by age categories: school-age'
   C16_SASY= 'Rate information collected by age categories: school-age(school year)'
   C16_SAS = 'Rate information collected by age categories: school-age(summer)'
   C16_NONE= 'Rate information collected by age categories: none of theabove'
   C16A_IN = 'Age categories parallel your state, territory, or tribes''regulatory age categories: infant'
   C16A_TD = 'Age categories parallel your state, territory, or tribes''regulatory age categories: toddler'
   C16A_PS = 'Age categories parallel your state, territory, or tribes''regulatory age categories: preschool'
   C16A_SA = 'Age categories parallel your state, territory, or tribes''regulatory age categories: school-age'
   NON_ST  = 'Rate information collected for non standard hours care'
   C17     = 'Ask providers/facilities the number or percent of children incare who receive a subsidy'
   C18     = 'Providers/facilities with subsidized children excluded'
   C18A    = 'Percent of subsidized children lead to exclusion of provider'
   C19A    = 'registration fees'
   C19B    = 'transportation fees'
   C19C    = 'food fees'
   C19D    = 'activity fees'
   C19E    = 'other'
   C20A    = 'licensed capacity for children'
   C20B    = 'licensed capacity for children by age group'
   C20C    = 'desired capacity of children'
   C20D    = 'desired capacity of children by age group'
   C20E    = 'actual current enrollment of children'
   C20F    = 'actual current enrollment of children by age group'
   C20G    = 'other'
   C20H    = 'home based provider education level'
   C20I    = 'home based provider training level'
   C20J    = 'home based provider wages'
   C20K    = 'home based provider benefit level'
   C20L    = 'center based provider education level'
   C20M    = 'center based provider training level'
   C20N    = 'center based provider wages'
   C20O    = 'center based provider benefit level'
   C20P    = 'other'
   C20Q    = 'group size'
   C20R    = 'adult child ratio'
   C20S    = 'accreditation status'
   C20T    = 'other sources of support for care'
   C20U    = 'for profit/nonprofit status'
   C20V    = 'sponsorship'
   C20W    = 'other'
   C20X    = 'Provider''s actual cost of providing care including insurance,space and utility costs, etc.'
   D1A     = 'Head Start programs'
   D1B     = 'State funded pre kindergarten programs'
   D1C     = 'Migrant Head Start'
   D1D     = 'Providers/facilities serving only subsidized children'
   D1E     = 'Providers/facilities serving a high percent of subsidized kids'
   D1F     = 'part day, part week programs'
   D1G     = 'other types of providers/facilities'
   D2      = 'Unit of analysis'
   D2A1    = 'licensed capacity for children'
   D2A2    = 'licensed capacity for children by age group'
   D2A3    = 'desired capacity of children'
   D2A4    = 'desired capacity of children by age group'
   D2A5    = 'actual current enrollment of children served'
   D2A6    = 'actual current enrollment of children served by age group'
   D2A7    = 'other'
   D3_COUNTY= 'rate data analyzed by geographic area: county'
   D3_ZIP  = 'rate data analyzed by geographic area: zipcode'
   D3_REGION= 'rate data analyzed by geographic area: region'
   D3_STATE= 'rate data analyzed by geographic area: whole stateterritory or tribe'
   D3_OTHER= 'rate data analyzed by geographic area: other'
   D3_IN   = 'rate data analyzed by age categories: infant care'
   D3_TD   = 'rate data analyzed by age categories: toddler care'
   D3_PS   = 'rate data analyzed by age categories: preschool-agecare'
   D3_SA   = 'rate data analyzed by age categories: school-age'
   D3_SASY = 'rate data analyzed by age categories: school-ageschool year'
   D3_SAS  = 'rate data analyzed by age categories: school-agesummer'
   D3_NONE = 'rate data analyzed by age categories: none of theabove'
   D3_CENTER= 'rate data analyzed by type of care: center'
   D3_FAMILY= 'rate data analyzed by type of care: family'
   D3_GROUP= 'rate data analyzed by type of care: group'
   D3_INHOME= 'rate data analyzed by type of care: in-home'
   D3_FFN  = 'rate data analyzed by type of care: family, friends, or neighbors'
   D3_SACENTER= 'rate data analyzed by type of care: school-age centers'
   D3_SAACT= 'rate data analyzed by type of care: school-ageenrichment activities'
   D3_HOURLY= 'rate data analyzed by modes of pricing: hourly'
   D3_DAILY= 'rate data analyzed by modes of pricing: daily'
   D3_WEEKLY= 'rate data analyzed by modes of pricing: weekly'
   D3_MONTHLY= 'rate data analyzed by modes of pricing: monthly'
   D4A     = 'part day rates'
   D4B     = 'part week rates'
   D4C     = 'rates for care of children with special needs'
   D4D     = 'rates in limited markets such as rural areas'
   D4E     = 'rate trends over time (e.g., last 3 years)'
   D4F     = 'rates by structural quality indicators'
   D4G     = 'other analyses'
   D5      = 'Rates reported by providers converted to some standard mode such as to a monthly or hourly rate'
   D6      = 'Estimated child care accessibility (the percent of market towhich families with subsidies have
access estimated)'
   D7      = 'Methodological problems or issues encountered'
   D8      = 'Methodology changed or revised from methodologies used in theprevious market rate survey'
   D9      = 'Currently conducting a market rate survey'
   D9A     = 'Using a different method than in most recent MRS'
   D9A2    = 'Willing to complete the survey again for the market ratesurvey currently being conducted'
   D10     = 'Anticipate the method used in most recent MRS to be repeated in future surveys'
   E1A     = 'printed report'
   E1B     = 'web posting'
   E1C     = 'news release'
   E1D     = 'other'
   E2A     = 'legislators'
   E2B     = 'state child care resource & referral network'
   E2C     = 'local child care resource & referral agencies'
   E2D     = 'providers'
   E2E     = 'parents'
   E2F     = 'other'
   F1      = 'Date when the current maximum payment rates were set'
   F2      = 'Current rates adjusted based on the most recently completed MRS'
   F2A     = 'Following the most recently completed market rate survey,payment rates were or are likely to be:'
   F3      = 'Current payment rates set at or above the 75th percentile ofrates'
   F4A     = 'demand for subsidies'
   F4B     = 'overall state/territorial/tribal budget'
   F4C     = 'state/territorial/tribal funding for child care'
   F4D     = 'findings of recently completed market rate survey'
   F4E     = 'level of federal CCDF funding to state/territory/tribe'
   F4F     = 'provider concerns'
   F4G     = 'desire to invest in quality of child care initiatives'
   F4H     = 'state/territorial/tribal TANF policies'
   F4I     = 'desire to maximize the number of families with access tosubsidies'
   F4A1    = 'first most important'
   F4A2    = 'second most important'
   F4A3    = 'third most important'
   F6_COUNTY= 'payment rates set by geographic area: county'
   F6_ZIP  = 'payment rates set by geographic area: zip'
   F6_REGION= 'rate data analyzed by geographic area: region'
   F6_STATE= 'payment rates set by geographic area: state'
   F6_OTHER= 'rate data analyzed by geographic area: other'
   F6_IN   = 'payment rates set by age categories: infant care'
   F6_TD   = 'payment rates set by age categories: toddler care'
   F6_PS   = 'payment rates set by age categories: preschool-age care'
   F6_SA   = 'payment rates set by age cateogires: school-age'
   F6_SASY = 'payment rates set by age categories: school-age school year'
   F6_SAS  = 'payment rates set by age categories: school-age summer'
   F6_NONE = 'payment rates set by age categories: none of the above'
   F6_CENTER= 'payment rates set by type of care: center'
   F6_FAMILY= 'payment rates set by type of care: family'
   F6_GROUP= 'payment rates set by type of care: group'
   F6_INHOME= 'payment rates set by type of care: in-home'
   F6_SACENTER= 'payment rates set by type of care: school-age center'
   F6_SAACT= 'payment rates set by type of care: school-age enrichmentactivities'
   F6_SPECIAL= 'payment rates set by type of care: special needs care'
   F6C1    = 'Payment rates set for Family, Friends, or Neighbors'
   F7A     = 'registration fees'
   F7B     = 'transportation fees'
   F7C     = 'food fees'
   F7D     = 'activity fees'
   F7E     = 'other'
   F8      = 'Payment rates set for geographic areas with providers with lowor no prices'
        ;


* SAS FORMAT STATEMENT;

/*
  FORMAT A1 a1ffffff. A1A a1a. A2 a2ffffff.
         A2A1 a2a1ffff. A2A2 a2a2ffff. A2A3 a2a3ffff.
         A2A4 a2a4ffff. A2A5 a2a5ffff. A2A6 a2a6ffff.
         A4A a4a. A4B a4b. A4C a4c.
         A4D a4d. A4E a4e. A4F a4f.
         A4G a4g. A5 a5ffffff. A5A a5a.
         A6_1 a6_1ffff. A6_2 a6_2ffff. A6_3 a6_3ffff.
         LEAD_STAFF2 lead_stf. A8 a8ffffff. A8A a8a.
         A8B a8b. B1A b1a. B1B b1b.
         B1C b1c. B1D b1d. B2A_1 b2a_1fff.
         B2A_2 b2a_2fff. B2A_3 b2a_3fff. B2A_4 b2a_4fff.
         B2A_5 b2a_5fff. B2A_6 b2a_6fff. B2B_1 b2b_1fff.
         B2B_2 b2b_2fff. B2B_3 b2b_3fff. B2B_4 b2b_4fff.
         B2B_5 b2b_5fff. B2B_6 b2b_6fff. B2C_1 b2c_1fff.
         B2C_2 b2c_2fff. B2C_3 b2c_3fff. B2C_4 b2c_4fff.
         B2C_5 b2c_5fff. B2C_6 b2c_6fff. B2D_1 b2d_1fff.
         B2D_2 b2d_2fff. B2D_3 b2d_3fff. B2D_4 b2d_4fff.
         B2D_5 b2d_5fff. B2D_6 b2d_6fff. B3A b3a.
         B3A1 b3a1ffff. B3A2 b3a2ffff. B3B b3b.
         B3B1 b3b1ffff. B3B2 b3b2ffff. B3C b3c.
         B3C1 b3c1ffff. B3C2 b3c2ffff. B3D b3d.
         B3D1 b3d1ffff. B3D2 b3d2ffff. B3E b3e.
         B3E1 b3e1ffff. B3E2 b3e2ffff. B3F b3f.
         B3F1 b3f1ffff. B3F2 b3f2ffff. B3G b3g.
         B3G1 b3g1ffff. B3G2 b3g2ffff. B3H b3h.
         B3H1 b3h1ffff. B3H2 b3h2ffff. C1 c1ffffff.
         C1A1 c1a1ffff. C1A2 c1a2ffff. C1A3 c1a3ffff.
         C1B c1b. C2 c2ffffff. C2A1 c2a1ffff.
         C2A2 c2a2ffff. C2A3 c2a3ffff. C2A4 c2a4ffff.
         C2A5 c2a5ffff. C2A6 c2a6ffff. C2A7 c2a7ffff.
         C2B c2b. C3 c3ffffff. C4A c4a.
         C4B c4b. C4C c4c. C4D c4d.
         C5A c5a. C5B c5b. C7 c7ffffff.
         C8 c8ffffff. C9A c9a. C9B c9b.
         C11 c11fffff. C13 c13fffff. C14 c14fffff.
         C14A c14a. C15 c15fffff. C16_HOURLY c16_houf.
         C16_DAILY c16_daif. C16_WEEKLY c16_weef. C16_MONTHLY c16_monf.
         C16_PARTDAY c16_parf. C16_PARTWEEK c16_pa0f. C16_HS c16_hs.
         C16_PREK c16_prek. C16_MHS c16_mhs. C16_OTHER c16_othf.
         C16_IN c16_in. C16_TD c16_td. C16_PS c16_ps.
         C16_SA c16_sa. C16_SASY c16_sasy. C16_SAS c16_sas.
         C16_NONE c16_none. C16A_IN c16a_in. C16A_TD c16a_td.
         C16A_PS c16a_ps. C16A_SA c16a_sa. NON_ST non_st.
         C17 c17fffff. C18 c18fffff. C19A c19a.
         C19B c19b. C19C c19c. C19D c19d.
         C19E c19e. C20A c20a. C20B c20b.
         C20C c20c. C20D c20d. C20E c20e.
         C20F c20f. C20G c20g. C20H c20h.
         C20I c20i. C20J c20j. C20K c20k.
         C20L c20l. C20M c20m. C20N c20n.
         C20O c20o. C20P c20p. C20Q c20q.
         C20R c20r. C20S c20s. C20T c20t.
         C20U c20u. C20V c20v. C20W c20w.
         C20X c20x. D1A d1a. D1B d1b.
         D1C d1c. D1D d1d. D1E d1e.
         D1F d1f. D1G d1g. D2 d2ffffff.
         D2A1 d2a1ffff. D2A2 d2a2ffff. D2A3 d2a3ffff.
         D2A4 d2a4ffff. D2A5 d2a5ffff. D2A6 d2a6ffff.
         D2A7 d2a7ffff. D3_COUNTY d3_counf. D3_ZIP d3_zip.
         D3_REGION d3_regif. D3_STATE d3_state. D3_OTHER d3_other.
         D3_IN d3_in. D3_TD d3_td. D3_PS d3_ps.
         D3_SA d3_sa. D3_SASY d3_sasy. D3_SAS d3_sas.
         D3_NONE d3_none. D3_CENTER d3_centf. D3_FAMILY d3_famif.
         D3_GROUP d3_group. D3_INHOME d3_inhof. D3_FFN d3_ffn.
         D3_SACENTER d3_sacef. D3_SAACT d3_saact. D3_HOURLY d3_hourf.
         D3_DAILY d3_daily. D3_WEEKLY d3_weekf. D3_MONTHLY d3_montf.
         D4A d4a. D4B d4b. D4C d4c.
         D4D d4d. D4E d4e. D4F d4f.
         D4G d4g. D5 d5ffffff. D6 d6ffffff.
         D7 d7ffffff. D8 d8ffffff. D9 d9ffffff.
         D9A d9a. D9A2 d9a2ffff. D10 d10fffff.
         E1A e1a. E1B e1b. E1C e1c.
         E1D e1d. E2A e2a. E2B e2b.
         E2C e2c. E2D e2d. E2E e2e.
         E2F e2f. F2 f2ffffff. F2A f2a.
         F3 f3ffffff. F4A f4a. F4B f4b.
         F4C f4c. F4D f4d. F4E f4e.
         F4F f4f. F4G f4g. F4H f4h.
         F4I f4i. F4A1 $f4a1fff. F4A2 $f4a2fff.
         F4A3 $f4a3fff. F6_COUNTY f6_counf. F6_ZIP f6_zip.
         F6_REGION f6_regif. F6_STATE f6_state. F6_OTHER f6_other.
         F6_IN f6_in. F6_TD f6_td. F6_PS f6_ps.
         F6_SA f6_sa. F6_SASY f6_sasy. F6_SAS f6_sas.
         F6_NONE f6_none. F6_CENTER f6_centf. F6_FAMILY f6_famif.
         F6_GROUP f6_group. F6_INHOME f6_inhof. F6_SACENTER f6_sacef.
         F6_SAACT f6_saact. F6_SPECIAL f6_specf. F6C1 f6c1ffff.
         F7A f7a. F7B f7b. F7C f7c.
         F7D f7d. F7E f7e. F8 f8ffffff.
          ;
*/

RUN ;
