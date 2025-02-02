/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) t.[TimeStamp]
      ,[Name]
	  ,s.[StationId]
	  ,[CommunicationId]
      ,[wtc_GenRpm_mean]
      ,[wtc_MainSRpm_mean]
      ,[wtc_PitchRef_BladeA_mean]
      ,[wtc_PitchRef_BladeB_mean]
      ,[wtc_PitchRef_BladeC_mean]
      ,[wtc_PowerRef_endvalue]
      ,[wtc_PrWindSp_min]
      ,[wtc_PrWindSp_max]
      ,[wtc_PrWindSp_mean]
      ,[wtc_PrWindSp_stddev]
      ,[wtc_NacelPos_min]
      ,[wtc_NacelPos_max]
      ,[wtc_NacelPos_mean]
      ,[wtc_NacelPos_stddev]
	  ,[wtc_AmbieTmp_min]
      ,[wtc_AmbieTmp_max]
      ,[wtc_AmbieTmp_mean]
	  ,[wtc_GeOilTmp_mean]
      ,[wtc_HSGenTmp_mean]
      ,[wtc_HSRotTmp_mean]
      ,[wtc_IMSGenTm_mean]
      ,[wtc_IMSRotTm_mean]
      ,[wtc_NacelTmp_mean]
      ,[wtc_MainBTmp_min]
      ,[wtc_MainBTmp_max]
      ,[wtc_MainBTmp_mean]
      ,[wtc_MainBTmp_stddev]
      ,[NeighbourId]
      ,[NeighbourIdTwo]
  FROM [wpshistory_LOGANSGAP].[dbo].[tblSCTurbine] t
  join [wpshistory_LOGANSGAP].[dbo].[tblSCTurTemp] tt
	on t.TimeStamp=tt.TimeStamp
  join [wpshistory_LOGANSGAP].[dbo].[tblStation] s
	on t.StationId=s.CommunicationId
  join [wpshistory_LOGANSGAP].[dbo].[tblGrid] g
	on t.TimeStamp=g.TimeStamp
	--where year(t.TimeStamp) = 2017