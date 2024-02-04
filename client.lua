-- ---------------------------------------------------------------------------------------------------------------------------------------- --
-- EasyName 1.0																																--
-- This allows you to save time by automatically assigning text entries for your service vehicles based on their gameName in vehicles.meta.	--
-- This is useful for LVC:Fleet configurations, as you can have the same vehicle with different configurations but the same name displayed.	--
-- Also saves you time by not having to manually add text entries for each vehicle.															--
-- ---------------------------------------------------------------------------------------------------------------------------------------- --
-- How to use:																																--
-- 1. Add this file to your server resources folder.																						--
-- 2. Add "start autonames" to your server.cfg.																								--
-- 3. Add the following to the <gameName> entry in your vehicles.meta file for each vehicle you want to have a text entry:					--
--																																			--
-- 		Format: agencies.code, vehicles.model, vehicleTypes.code 																			--
-- 		Example: APPDSTA11K9																												--																															--
--		Usage: <gameName>APPDSTA11K9</gameName>																								--
--																																			--
--		This example, when used with the default configuration, will display as:															--	
--		"Stanier '11 (APPD K9)"																												--
--																																			--	
-- 4. Replace everything below with your own agency codes, abbreviations, and names.														--
-- 5. Replace everything below with your own vehicle models and names.																		--
-- 6. Replace everything below with your own vehicle types and names.																		--
-- 7. Replace everything below with your own ignore types.																					--
-- 8. Restart the resource.																													--
-- ---------------------------------------------------------------------------------------------------------------------------------------- --



-- Codes must be maximum 4 characters
-- Codes must be unique
	
local agencies = {

	-- Local Law Enforcement Agencies
	{code = "APPD", abbr = "APPD", name = "Angel Pine Police Department"},
	{code = "ACPD", abbr = "ACPD", name = "Alderney City Police Department"},
	{code = "APD1", abbr = "APD", name = "Acter Police Department"},
	{code = "BPD1", abbr = "BPD", name = "Blueberry Police Department"},
	{code = "BPD2", abbr = "BPD", name = "Bayview Police Department"},
	{code = "BPD3", abbr = "BPD", name = "Berchem Police Department"},
	{code = "CFPD", abbr = "CFPD", name = "Cypress Flats Police Department"},
	{code = "CIPD", abbr = "CIDPS", name = "Colony Island Department of Public Safety"},
	{code = "DPPD", abbr = "DPPD", name = "Del Perro Police Department"},
	{code = "FCPD", abbr = "FCPD", name = "Fort Carson Sheriff's Office"},
	{code = "FMBP", abbr = "FMBPD", name = "Full Moon Bay Police Department"},
	{code = "FVPD", abbr = "FVPD", name = "Foster Valley Police Department"},
	{code = "HPD1", abbr = "HPD", name = "Haywire Police Department"},
	{code = "LCPD", abbr = "LCPD", name = "Liberty City Police Department"},
	{code = "LCSO", abbr = "LCSO", name = "Liberty City Sheriff's Office"},
	{code = "LPD1", abbr = "LPD", name = "Leftwood Police Department"},
	{code = "LPD2", abbr = "LPD", name = "Ludendorff Police Department"},
	{code = "LPPD", abbr = "LPPD", name = "Las Payasadas Police Department"},
	{code = "LVMS", abbr = "LVMS", name = "Las Venturas Marshals Office"},
	{code = "LSPD", abbr = "LSPD", name = "Los Santos Police Department"},
	{code = "LSPR", abbr = "LSDPR", name = "Los Santos Department of Parks and Recreation"},
	{code = "MBPD", abbr = "MBPD", name = "Marina Beach Police Department"},
	{code = "NCPD", abbr = "NCPD", name = "North Chumash Police Department"},
	{code = "NGPD", abbr = "NGPD", name = "Northern Gardens Police Department"},
	{code = "NPD1", abbr = "NPD", name = "Normandy Police Department"},
	{code = "PBPD", abbr = "PBPD", name = "Paleto Bay Police Department"},
	{code = "PPD1", abbr = "PPD", name = "Portmanteau Police Department"},
	{code = "RPD1", abbr = "RPD", name = "Redsands Police Department"},
	{code = "RPD2", abbr = "RPD", name = "Rockshore Police Department"},
	{code = "RPD3", abbr = "RPD", name = "Roxwood Police Department"},
	{code = "RHPD", abbr = "RHPD", name = "Rockford Hills Police Department"},
	{code = "SFPD", abbr = "SFPD", name = "San Fierro Police Department"},
	{code = "TPD1", abbr = "TPD", name = "Tudor Police Department"},
	{code = "WPD1", abbr = "WPD", name = "Whetstone Police Department"},
	{code = "WPD2", abbr = "WPD", name = "Westdyke Police Department"},

	-- County Law Enforcement Agencies
	{code = "ACSO", abbr = "ACSO", name = "Alameda County Sheriff's Office"},
	{code = "BCSO", abbr = "BCSO", name = "Blaine County Sheriff's Office"},
	{code = "BCS2", abbr = "BCSO", name = "Bone County Sheriff's Office"},
	{code = "FCSO", abbr = "FCSO", name = "Flint County Sheriff's Office"},
	{code = "HCSO", abbr = "HCSO", name = "Hughes County Sheriff's Office"},
	{code = "LSDA", abbr = "LSDA", name = "Los Santos County District Attorney"},
	{code = "LSSD", abbr = "LSSD", name = "Los Santos County Sheriff's Department"},
	{code = "LVPD", abbr = "LVMPD", name = "Las Venturas Metropolitan Police Department"},
	{code = "MCSO", abbr = "MCSO", name = "Majestic County Sheriff's Office"},
	{code = "MRCA", abbr = "MRCA", name = "Los Santos County Mountains Recreation and Conservation Authority"},
	{code = "RCSO", abbr = "RCSO", name = "Red County Sheriff's Office"},
	{code = "SAS2", abbr = "SASP", name = "San Andreas State Parole"},
	{code = "SCSO", abbr = "SCSO", name = "Serrano County Sheriff's Office"},
	{code = "SCS2", abbr = "SCSO", name = "Sioux County Sheriff's Office"},
	{code = "SFSO", abbr = "SFSO", name = "San Fierro Sheriff's Office"},
	{code = "TRSO", abbr = "TRSO", name = "Tierra Robada Sheriff's Office"},
	{code = "VCSO", abbr = "VCSO", name = "Ventura County Sheriff's Office"},
	{code = "WCSO", abbr = "WCSO", name = "Whetstone County Sheriff's Office"},
	{code = "WRCS", abbr = "WRCS", name = "West River County Sheriff's Office"},

	-- State Law Enforcement Agencies
	{code = "ASP1", abbr = "ASP", name = "Alderney State Police"},
	{code = "DSHP", abbr = "SADSH", name = "San Andreas Department of State Hospitals Police"},
	{code = "LSP1", abbr = "LSP", name = "Liberty State Police"},
	{code = "MBAO", abbr = "MBADPS", name = "Maze Bank Arena Public Safety"},
	{code = "RCP1", abbr = "RCP", name = "Robada Capitol Police"},
	{code = "RHP1", abbr = "RHP", name = "Robada Highway Patrol"},
	{code = "SABC", abbr = "SAABC", name = "San Andreas Alcoholic Beverage Control"},
	{code = "SASP", abbr = "SASP", name = "San Andreas State Park Rangers"},
	{code = "SDCA", abbr = "SADCA", name = "San Andreas Department of Consumer Affairs"},
	{code = "SDCR", abbr = "SASPA", name = "San Andreas State Prison Authority"},
	{code = "SDFW", abbr = "SADFW", name = "San Andreas Department of Fish and Wildlife"},
	{code = "SANF", abbr = "SanFire", name = "SanFire"},
	{code = "SAHP", abbr = "SAHP", name = "San Andreas Highway Patrol"},

	-- Interstate Law Enforcement Agencies
	{code = "PAPD", abbr = "PAPD", name = "Liberty and Alderney Port Authority Police Department"},

	-- Federal Agencies
	{code = "DOA1", abbr = "DOA", name = "Drug Observation Agency"},
	{code = "DOE1", abbr = "DOE", name = "Department of Energy"},
	{code = "FATB", abbr = "FATEB", name = "Firearms, Alcohol, Tobacco and Explosives Bureau"},
	{code = "FIB1", abbr = "FIB", name = "Federal Investigation Bureau"},
	{code = "FIBP", abbr = "FIBP", name = "Federal Investigation Bureau Police"},
	{code = "IAA1", abbr = "IAA", name = "International Affairs Agency"},
	{code = "IAAS", abbr = "IAAS", name = "International Affairs Agency Security Protective Service"},
	{code = "NPS1", abbr = "NPS", name = "National Park Service"},
	{code = "NOAA", abbr = "NOAA", name = "National Oceanic and Atmospheric Administration"},
	{code = "NOSE", abbr = "NOOSE", name = "National Office of Security Enforcement"},
	{code = "NSI1", abbr = "NSI", name = "National Security Investigations"},
	{code = "USCG", abbr = "USCG", name = "United States Coast Guard"},
	{code = "USC2", abbr = "USCG", name = "United States Coast Guard Law Enforcement"},
	{code = "USFW", abbr = "USFW", name = "United States Fish and Wildlife Service"},
	{code = "USMS", abbr = "USMS", name = "United States Marshals Service"},
	{code = "USPP", abbr = "USPP", name = "United States Park Police"},
	{code = "USBP", abbr = "USBP", name = "United States Border Patrol"},
	{code = "USCP", abbr = "PIA", name = "United States Patriotism and Immigration Authority"},
	{code = "USFS", abbr = "USFS", name = "United States Forest Service"},
}

-- Models must be maximum 5 characters
-- Models must be unique

local vehicles = {

	-- Vapid
	{model = "VPINT", name = "Torrence"}, -- 2013-2018 Taurus
	
	{model = "SPED1", name = "Speedo"}, -- Chevy Express Style
	{model = "SPED2", name = "Speedo"}, -- Ford Transit Style

	{model = "STA87", name = "Stanier"}, -- 1987 Crown Victoria
	{model = "STA91", name = "Stanier"}, -- 1991 Crown Victoria
	{model = "STA96", name = "Stanier"}, -- 1996 Crown Victoria
	{model = "STA99", name = "Stanier"}, -- 1999 Crown Victoria
	{model = "STA02", name = "Stanier"}, -- 2002 Crown Victoria
	{model = "STA05", name = "Stanier"}, -- 2005 Crown Victoria
	{model = "STA08", name = "Stanier"}, -- 2008 Crown Victoria
	{model = "STA11", name = "Stanier"}, -- 2011 Crown Victoria

	{model = "VPSCO", name = "Scout"}, -- 2013-2015 Explorer
	{model = "VPSC2", name = "Scout"}, -- 2016-2019 Explorer
	{model = "VPSC3", name = "Scout"}, -- 2020-2023 Explorer

	{model = "SADLR", name = "Sadler"},

	-- Declasse

	{model = "ALAM1", name = "Alamo"}, -- 1997 Tahoe
	{model = "ALAM2", name = "Alamo"}, -- 2003 Tahoe 
	{model = "ALAM3", name = "Alamo"}, -- 2008 Tahoe
	{model = "ALAM4", name = "Alamo"}, -- 2015 Tahoe
	{model = "ALAM5", name = "Alamo"}, -- 2021 Tahoe 

	{model = "GRAN1", name = "Granger"}, -- 1997 Suburban
	{model = "GRAN2", name = "Granger"}, -- 2003 Suburban
	{model = "GRAN3", name = "Granger"}, -- 2008 Suburban
	{model = "GRAN4", name = "Granger"}, -- 2015 Suburban
	{model = "GRAN5", name = "Granger"}, -- 2021 Suburban

	-- Bravado

	{model = "BUFF1" , name = "Buffalo"}, -- 2006 Charger
	{model = "BUFF2" , name = "Buffalo"}, -- 2013 Charger
	{model = "BUFF3" , name = "Buffalo"}, -- 2015 Charger

	-- Cheval
	{model = "FUGIT", name = "Fugitive"}, -- Caprice

	-- Karin
	{model = "EVERO", name = "Everon"},
	{model = "ASTER", name = "Asterope"}, -- Base Game Asterope
	{model = "ASTE2", name = "Asterope"}, -- Asterope RS

	-- Misc
	{model = "SCORC", name = "Scorcher"},
	{model = "BCAT1", name = "Centurion"},
	{model = "BCAT2", name = "TARV"},

}

-- Codes must be unique and made up from 0-9, A-Z, and _ (underscore)

local vehicleTypes = {
	{code = "A", 	name = ""},
	{code = "BQ", 	name = "Food Services"},
	{code = "D", 	name = "SWAT"},
	{code = "DP", 	name = "Dual Purpose"},
	{code = "G", 	name = "Gang Unit"},
	{code = "HY", 	name = "Hybrid"},
	{code = "K9", 	name = "K9"},
	{code = "PL", 	name = "Plain"},
	{code = "PT",	name = "Prisoner Transport"},
	{code = "SL", 	name = "Slicktop"},
	{code = "T", 	name = "Traffic"},
	{code = "TC", 	name = "Traffic Control"},
	{code = "TR", 	name = "TRT"},
	{code = "UM", 	name = "Unmarked"},
	{code = "UC", 	name = "Undercover"},
}

-- These vehicle types will not be displayed in the name. Useful for if you need 2 cars to have different LVC:Fleet configurations but the same name be displayed.
local ignoreTypes = { "A", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}

-- Functionality
for _, agency in ipairs(agencies) do
	for _, vehicle in ipairs(vehicles) do
	  for _, vehicleType in ipairs(vehicleTypes) do
		if table.concat(ignoreTypes, ","):find(vehicleType.code) then
			AddTextEntry(agency.code .. vehicle.model .. vehicleType.code , vehicle.name .. " (" .. agency.abbr .. ")")
		else
		  AddTextEntry(agency.code .. vehicle.model .. vehicleType.code , vehicle.name .. " (" .. agency.abbr .. " " .. vehicleType.name .. ")")
		end
	  end
	end
  end
