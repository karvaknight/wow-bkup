--[[
Name: LibBabble-Race-3.0
Revision: $Rev: 55 $
Maintainers: ckknight, nevcairiel, Ackis
Website: http://www.wowace.com/projects/libbabble-race-3-0/
Dependencies: None
License: MIT
]]

local MAJOR_VERSION = "LibBabble-Race-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Rev: 55 $"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub.") end
local lib = LibStub("LibBabble-3.0"):New(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local GAME_LOCALE = GetLocale()

lib:SetBaseTranslations {
	["Blood Elf"] = "Blood Elf",
	["Blood elves"] = "Blood elves",
	Draenei = "Draenei",
	Draenei_PL = "Draenei",
	Dwarf = "Dwarf",
	Dwarves = "Dwarves",
	Felguard = "Felguard",
	Felhunter = "Felhunter",
	Gnome = "Gnome",
	Gnomes = "Gnomes",
	Goblin = "Goblin",
	Goblins = "Goblins",
	Human = "Human",
	Humans = "Humans",
	Imp = "Imp",
	["Night Elf"] = "Night Elf",
	["Night elves"] = "Night elves",
	Orc = "Orc",
	Orcs = "Orcs",
	Pandaren = "Pandaren",
	Pandaren_PL = "Pandaren",
	Succubus = "Succubus",
	Tauren = "Tauren",
	Tauren_PL = "Tauren",
	Troll = "Troll",
	Trolls = "Trolls",
	Undead = "Undead",
	Undead_PL = "Undead",
	Scourge = "Scourge",
	Scourge_PL = "Scourge",
	Voidwalker = "Voidwalker",
	Worgen = "Worgen",
	Worgen_PL = "Worgen",
	["Death Knight"] = "Death Knight",
}


if GAME_LOCALE == "enUS" then
	lib:SetCurrentTranslations(true)
elseif GAME_LOCALE == "deDE" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Blutelf",
	["Blood elves"] = "Blutelfen",
	Draenei = "Draenei",
	Draenei_PL = "Draenei",
	Dwarf = "Zwerg",
	Dwarves = "Zwerge",
	Felguard = "Teufelswache",
	Felhunter = "Teufelsjäger",
	Gnome = "Gnom",
	Gnomes = "Gnome",
	Goblin = "Goblin",
	Goblins = "Goblins",
	Human = "Mensch",
	Humans = "Menschen",
	Imp = "Wichtel",
	["Night Elf"] = "Nachtelf",
	["Night elves"] = "Nachtelfen",
	Orc = "Orc",
	Orcs = "Orcs",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "Sukkubus",
	Tauren = "Tauren",
	Tauren_PL = "Tauren",
	Troll = "Troll",
	Trolls = "Trolle",
	Undead = "Untoter",
	Undead_PL = "Untote",
	Scourge = "Untoter",
	Scourge_PL = "Untote",
	Voidwalker = "Leerwandler",
	Worgen = "Worgen",
	Worgen_PL = "Worgen",
	["Death Knight"] = "Todesritter",
}
elseif GAME_LOCALE == "frFR" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Elfe de sang",
	["Blood elves"] = "Elfes de sang",
	Draenei = "Draeneï",
	Draenei_PL = "Draeneï",
	Dwarf = "Nain",
	Dwarves = "Nains",
	Felguard = "Gangregarde",
	Felhunter = "Chasseur corrompu",
	Gnome = "Gnome",
	Gnomes = "Gnomes",
	Goblin = "Gobelin",
	Goblins = "Gobelins",
	Human = "Humain",
	Humans = "Humains",
	Imp = "Diablotin",
	["Night Elf"] = "Elfe de la nuit",
	["Night elves"] = "Elfes de la nuit",
	Orc = "Orc",
	Orcs = "Orcs",
	Pandaren = "Pandaren",
	Pandaren_PL = "Pandaren",
	Succubus = "Succube",
	Tauren = "Tauren",
	Tauren_PL = "Taurens",
	Troll = "Troll",
	Trolls = "Trolls",
	Undead = "Mort-vivant",
	Undead_PL = "Morts-vivants",
	Scourge = "Mort-vivant",
	Scourge_PL = "Morts-vivants",
	Voidwalker = "Marcheur du Vide",
	Worgen = "Worgen",
	Worgen_PL = "Worgens",
	["Death Knight"] = "Chevalier de la mort",
}
elseif GAME_LOCALE == "koKR" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "블러드 엘프",
	["Blood elves"] = "블러드 엘프",
	Draenei = "드레나이",
	Draenei_PL = "드레나이",
	Dwarf = "드워프",
	Dwarves = "드워프",
	Felguard = "지옥수호병",
	Felhunter = "지옥사냥개",
	Gnome = "노움",
	Gnomes = "노움",
	Goblin = "고블린",
	Goblins = "고블린",
	Human = "인간",
	Humans = "인간",
	Imp = "임프",
	["Night Elf"] = "나이트 엘프",
	["Night elves"] = "나이트 엘프",
	Orc = "오크",
	Orcs = "오크",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "서큐버스",
	Tauren = "타우렌",
	Tauren_PL = "타우렌",
	Troll = "트롤",
	Trolls = "트롤",
	Undead = "언데드",
	Undead_PL = "언데드",
	Scourge = "언데드",
	Scourge_PL = "언데드",	
	Voidwalker = "보이드워커",
	Worgen = "늑대인간",
	Worgen_PL = "늑대인간",
	["Death Knight"] = "죽음의 기사",	
}
elseif GAME_LOCALE == "esES" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Elfo de sangre",
	["Blood elves"] = "Elfos de sangre",
	Draenei = "Draenei",
	Draenei_PL = "Draenei",
	Dwarf = "Enano",
	Dwarves = "Enanos",
	Felguard = "Guardia vil",
	Felhunter = "Manáfago",
	Gnome = "Gnomo",
	Gnomes = "Gnomos",
	Goblin = "Goblin",
	Goblins = "Goblins",
	Human = "Humano",
	Humans = "Humanos",
	Imp = "Diablillo",
	["Night Elf"] = "Elfo de la noche",
	["Night elves"] = "Elfos de la noche",
	Orc = "Orco",
	Orcs = "Orcos",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "Súcubo",
	Tauren = "Tauren",
	Tauren_PL = "Tauren",
	Troll = "Trol",
	Trolls = "Trols",
	Undead = "No-muerto",
	Undead_PL = "No-muertos",
	Scourge = "No-muerto",
	Scourge_PL = "No-muertos",	
	Voidwalker = "Abisario",
	Worgen = "Huargen",
	Worgen_PL = "Huargen",
	["Death Knight"] = "Caballero de la muerte",	
}
elseif GAME_LOCALE == "esMX" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Elfo de Sangre",
	["Blood elves"] = "Elfos de sangre",
	Draenei = "Draenei",
	Draenei_PL = "draenei",
	Dwarf = "Enano",
	Dwarves = "Enanos",
	Felguard = "Guardia vil",
	Felhunter = "Manáfago",
	Gnome = "gnomo",
	Gnomes = "gnomos",
	Goblin = "Goblin", -- Needs review
	Goblins = "Goblins", -- Needs review
	Human = "Humano",
	Humans = "Humanos",
	Imp = "Diablillo",
	["Night Elf"] = "Elfo de la noche",
	["Night elves"] = "Elfos de la noche",
	Orc = "Orco",
	Orcs = "Orcos",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "Súcubo",
	Tauren = "Tauren",
	Tauren_PL = "Tauren",
	Troll = "trol",
	Trolls = "trols",
	Undead = "no-muerto",
	Undead_PL = "no-muertos",
	Scourge = "no-muerto",
	Scourge_PL = "no-muertos",	
	Voidwalker = "Abisario",
	Worgen = "Worgen", -- Needs review
	Worgen_PL = "Worgen", -- Needs review
	["Death Knight"] = "Caballero de la muerte",	
}
elseif GAME_LOCALE == "ptBR" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Elfo Sangrento",
	["Blood elves"] = "Elfos Sangrentos",
	Draenei = "Draenei",
	Draenei_PL = "Draenei",
	Dwarf = "Anão",
	Dwarves = "Anões",
	Felguard = "Guarda Vil", -- Needs review
	Felhunter = "Caçador Vil", -- Needs review
	Gnome = "Gnomo",
	Gnomes = "Gnomos",
	Goblin = "Goblin",
	Goblins = "Goblins",
	Human = "Humano",
	Humans = "Humanos",
	Imp = "Diabrete", -- Needs review
	["Night Elf"] = "Elfo Noturno",
	["Night elves"] = "Elfos Noturnos",
	Orc = "Orc",
	Orcs = "Orcs",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "Sucubo", -- Needs review
	Tauren = "Tauren",
	Tauren_PL = "Taurens",
	Troll = "Troll",
	Trolls = "Trolls",
	Undead = "Renegado",
	Undead_PL = "Renegados",
	Scourge = "Renegado",
	Scourge_PL = "Renegados",	
	Voidwalker = "Emissário do Caos", -- Needs review
	Worgen = "Worgen",
	Worgen_PL = "Worgens",
	["Death Knight"] = "Cavaleira da Morte",	
}
elseif GAME_LOCALE == "itIT" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Elfo del Sangue",
	["Blood elves"] = "Elfi del Sangue",
	Draenei = "Draenei",
	Draenei_PL = "Draenei",
	Dwarf = "Nano",
	Dwarves = "Nani",
	Felguard = "Vilguardiano",
	Felhunter = "Vilsegugio",
	Gnome = "Gnomo",
	Gnomes = "Gnomi",
	Goblin = "Goblin",
	Goblins = "Goblins",
	Human = "Umano",
	Humans = "Umani",
	Imp = "Folletto",
	["Night Elf"] = "Elfo della Notte",
	["Night elves"] = "Elfi della Notte",
	Orc = "Orco",
	Orcs = "Orchi",
	Pandaren = "Pandaren",
	Pandaren_PL = "Pandaren",
	Succubus = "Succube",
	Tauren = "Tauren",
	Tauren_PL = "Tauren",
	Troll = "Troll",
	Trolls = "Trolls",
	Undead = "Non Morto",
	Undead_PL = "Non Morti",
	Scourge = "Non Morto",
	Scourge_PL = "Non Morti",		
	Voidwalker = "Ombra del Vuoto",
	Worgen = "Worgen",
	Worgen_PL = "Worgens",
	["Death Knight"] = "Cavaliere da Morte",	
}
elseif GAME_LOCALE == "ruRU" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Эльф крови",
	["Blood elves"] = "Эльфы крови",
	Draenei = "Дреней",
	Draenei_PL = "Дренеи",
	Dwarf = "Дворф",
	Dwarves = "Дворфы",
	Felguard = "Страж Скверны",
	Felhunter = "Охотник Скверны",
	Gnome = "Гном",
	Gnomes = "Гномы",
	Goblin = "Гоблин", -- Needs review
	Goblins = "Гоблины", -- Needs review
	Human = "Человек",
	Humans = "Люди",
	Imp = "Бес",
	["Night Elf"] = "Ночной эльф",
	["Night elves"] = "Ночные эльфы",
	Orc = "Орк",
	Orcs = "Орки",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "Суккуб",
	Tauren = "Таурен",
	Tauren_PL = "Таурены",
	Troll = "Тролль",
	Trolls = "Тролли",
	Undead = "Нежить",
	Undead_PL = "Нежить",
	Scourge = "Нежить",
	Scourge_PL = "Нежить",	
	Voidwalker = "Демон Бездны",
	Worgen = "Ворген", -- Needs review
	Worgen_PL = "Воргены", -- Needs review
	["Death Knight"] = "Рыцарь смерти",	
}
elseif GAME_LOCALE == "zhCN" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "血精灵",
	["Blood elves"] = "血精灵",
	Draenei = "德莱尼",
	Draenei_PL = "德莱尼",
	Dwarf = "矮人",
	Dwarves = "矮人",
	Felguard = "恶魔卫士",
	Felhunter = "地狱猎犬",
	Gnome = "侏儒",
	Gnomes = "侏儒",
	Goblin = "地精",
	Goblins = "地精",
	Human = "人类",
	Humans = "人类",
	Imp = "小鬼",
	["Night Elf"] = "暗夜精灵",
	["Night elves"] = "暗夜精灵",
	Orc = "兽人",
	Orcs = "兽人",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "魅魔",
	Tauren = "牛头人",
	Tauren_PL = "牛头人",
	Troll = "巨魔",
	Trolls = "巨魔",
	Undead = "亡灵",
	Undead_PL = "亡灵",
	Scourge = "亡灵",
	Scourge_PL = "亡灵",		
	Voidwalker = "虚空行者",
	Worgen = "狼人",
	Worgen_PL = "狼人",
	["Death Knight"] = "死亡骑士",	
}
elseif GAME_LOCALE == "zhTW" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "血精靈",
	["Blood elves"] = "血精靈",
	Draenei = "德萊尼",
	Draenei_PL = "德萊尼",
	Dwarf = "矮人",
	Dwarves = "矮人",
	Felguard = "惡魔守衛",
	Felhunter = "惡魔獵犬",
	Gnome = "地精",
	Gnomes = "地精",
	Goblin = "哥布林",
	Goblins = "哥布林",
	Human = "人類",
	Humans = "人類",
	Imp = "小鬼",
	["Night Elf"] = "夜精靈",
	["Night elves"] = "夜精靈",
	Orc = "獸人",
	Orcs = "獸人",
	-- Pandaren = "",
	-- Pandaren_PL = "",
	Succubus = "魅魔",
	Tauren = "牛頭人",
	Tauren_PL = "牛頭人",
	Troll = "食人妖",
	Trolls = "食人妖",
	Undead = "不死族",
	Undead_PL = "不死族",
	Scourge = "不死族",
	Scourge_PL = "不死族",	
	Voidwalker = "虛無行者",
	Worgen = "狼人",
	Worgen_PL = "狼人",
	["Death Knight"] = "死亡騎士e",	
}
elseif GAME_LOCALE == "ptPT" then
	lib:SetCurrentTranslations {
	["Blood Elf"] = "Elfo Sangrento",
	["Blood elves"] = "Elfos Sangrentos",
	Draenei = "Draenei",
	Draenei_PL = "Draenei",
	Dwarf = "Anão",
	Dwarves = "Anões",
	Felguard = "Guarda Vil", -- Needs review
	Felhunter = "Caçador Vil", -- Needs review
	Gnome = "Gnomo",
	Gnomes = "Gnomos",
	Goblin = "Goblin",
	Goblins = "Goblins",
	Human = "Humano",
	Humans = "Humanos",
	Imp = "Diabrete", -- Needs review
	["Night Elf"] = "Elfo Noturno",
	["Night elves"] = "Elfos Noturnos",
	Orc = "Orc",
	Orcs = "Orcs",
	-- Pandaren = "",
	-- Pandaren_PL = "",	
	Succubus = "Sucubo", -- Needs review
	Tauren = "Tauren",
	Tauren_PL = "Taurens",
	Troll = "Troll",
	Trolls = "Trolls",
	Undead = "Renegado",
	Undead_PL = "Renegados",
	Scourge = "Renegado",
	Scourge_PL = "Renegados",	
	Voidwalker = "Emissário do Caos", -- Needs review
	Worgen = "Worgen",
	Worgen_PL = "Worgens",
	["Death Knight"] = "Cavaleira da Morte",
}

else
	error(("%s: Locale %q not supported"):format(MAJOR_VERSION, GAME_LOCALE))
end
