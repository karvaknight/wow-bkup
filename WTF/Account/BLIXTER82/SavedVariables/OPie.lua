
OneRing_Config = {
	["CharProfiles"] = {
		["Chamber of Aspects-Blixtra-2"] = "Blixtra",
		["Chamber of Aspects-Blixtra-3"] = "Blixtra",
	},
	["_GameVersion"] = "7.2.5",
	["_OPieVersion"] = "Umber 9 (3.89)",
	["ProfileStorage"] = {
		["default"] = {
			["ClickActivation"] = true,
			["Bindings"] = {
				["RaidSymbols"] = "F9",
				["CommonTrades"] = "F11",
				["OPieTracking"] = false,
				["MageCombat"] = false,
				["SpecMenu"] = "F10",
				["MageTravel"] = false,
				["OPieAutoQuest"] = "F12",
			},
		},
		["Blixtra"] = {
			["ClickActivation"] = true,
			["Bindings"] = {
				["RaidSymbols"] = "F9",
				["CommonTrades"] = "F11",
				["MageTravel"] = "F12",
				["OPieTracking"] = false,
				["MageCombat"] = false,
				["SpecMenu"] = "F10",
				["OPieAutoQuest"] = false,
				["WorldMarkers"] = false,
			},
		},
	},
	["PersistentStorage"] = {
		["RingKeeper"] = {
			["OPieFlagStore"] = {
				["FlushedDefaultColors"] = true,
			},
			["SpecMenu"] = {
				{
					"specset", -- [1]
					1, -- [2]
					["sliceToken"] = "OPCTA1",
				}, -- [1]
				{
					"specset", -- [1]
					2, -- [2]
					["sliceToken"] = "OPCTA2",
				}, -- [2]
				{
					"specset", -- [1]
					3, -- [2]
					["sliceToken"] = "OPCTA3",
				}, -- [3]
				{
					"specset", -- [1]
					4, -- [2]
					["sliceToken"] = "OPCTA4",
				}, -- [4]
				{
					["id"] = "/cast {{spell:50977/193753/126892/193759}}",
					["sliceToken"] = "OPCTAc",
				}, -- [5]
				{
					"item", -- [1]
					141605, -- [2]
					["sliceToken"] = "ABuepjpIYWe",
				}, -- [6]
				{
					"item", -- [1]
					140192, -- [2]
					["sliceToken"] = "OPCTAd",
				}, -- [7]
				{
					"item", -- [1]
					6948, -- [2]
					["sliceToken"] = "OPCTAh",
				}, -- [8]
				{
					["sliceToken"] = "ABuepjpIYWr",
					["id"] = 61447,
				}, -- [9]
				{
					["id"] = 190336,
					["sliceToken"] = "ABuepjaPX4e",
				}, -- [10]
				["name"] = "Specializations and Travel",
				["save"] = true,
				["hotkey"] = "ALT-H",
			},
		},
	},
	["_GameLocale"] = "enUS",
}
