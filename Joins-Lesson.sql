--select * FROM PatientStay


--select * from DimHospital

SELECT
    h.Hospital AS HospitalFromLookup
,ps.Hospital AS HospitalOfThePatient
,h.HospitalType
,ps.PatientId
,ps.AdmittedDate
,ps.DischargeDate
FROM
    --PatientStay ps LEFT JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
    --DimHospitalBad h RIGHT JOIN PatientStay ps ON ps.Hospital = h.Hospital
    PatientStay ps FULL OUTER JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
ORDER BY HospitalFromLookup, HospitalOfThePatient


--please show patient stays that are in pruh or oxleas. include hospital and hospital type and ward. For March 2024 admitted only
SELECT
    ps.PatientId
,ps.AdmittedDate                        

