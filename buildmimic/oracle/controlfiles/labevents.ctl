OPTIONS (
skip=1,
errors=0,
direct=true,
multithreading=true 
)
LOAD DATA
INFILE 'LABEVENTS.csv' "str '\n'"
BADFILE 'logfile.bad'
DISCARDFILE 'logfile.discard'
APPEND
INTO TABLE labevents
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING nullcols
(
ROW_ID, 
SUBJECT_ID,
HADM_ID,
ITEMID,
CHARTTIME DATE "YYYY-MM-DD HH24:MI:SS",
VALUE,
VALUENUM,
VALUEUOM,
FLAG
)