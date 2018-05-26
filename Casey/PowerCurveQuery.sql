SELECT 
	tblSCTurbine.[TimeStamp], 
	tblSCTurbine.StationId, 
	tblSCTurGrid.wtc_ActPower_mean AS ActivePower, 
	tblSCTurbine.wtc_AcWindSp_mean AS WindSpeed
FROM tblSCTurbine 
INNER JOIN tblSCTurGrid 
	ON tblSCTurbine.[TimeStamp] = tblSCTurGrid.[TimeStamp] 
	AND tblSCTurbine.StationId = tblSCTurGrid.StationId
WHERE 
	tblSCTurbine.StationId = 2304193 
	AND tblSCTurbine.[TimeStamp] > '2018-01-15' 
	AND tblSCTurbine.[TimeStamp] < '2018-01-16'