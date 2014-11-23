/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21402
 |        CHILD CARE MARKET RATE SURVEY PRACTICES AND POLICIES OF
 |               STATES, TERRITORIES, AND TRIBES, 2005-2006
 |                (DATASET 0001: MARKET RATE SURVEY DATA)
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata
 | provided below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC CIMPORT to import the SAS
 | transport file to a SAS data set on their system. This program can
 | then be used in conjunction with the SAS system data file.
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions.  Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
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
 | the variables stored in the SAS data set. Users can refer to their
 | SAS manual for information on how to permanently store formats in a
 | SAS catalog.
 |
 | NOTE:  Users should modify this file to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*').
 | To make this section active in the program, users should remove the SAS
 | comment indicators from this section.
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

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
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* SAS FORMAT STATEMENT;

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

RUN ;
