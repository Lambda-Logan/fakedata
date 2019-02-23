module ModuleInfo where

data ModuleInfo = ModuleInfo
  { moduleName :: String -- eg: buffy
  , jsonField :: String
  , fields :: [String]
  , unresolvedFields :: [String]
  , nestedFields :: [[String]]
  , unresolvedNestedFields :: [[String]]
  } deriving (Show, Eq, Ord)

commerce :: ModuleInfo
commerce =
  ModuleInfo
    { moduleName = "commerce"
    , jsonField = "commerce"
    , fields = ["department"]
    , unresolvedFields = []
    , nestedFields =
        [ ["product_name", "adjective"]
        , ["product_name", "material"]
        , ["product_name", "product"]
        , ["promotion_code", "adjective"]
        , ["promotion_code", "noun"]
        ]
    , unresolvedNestedFields = []
    }

dune :: ModuleInfo
dune =
  ModuleInfo
    { moduleName = "dune"
    , jsonField = "dune"
    , fields = ["characters", "titles", "planets"]
    , unresolvedFields = []
    , nestedFields =
        [ ["quotes", "guild_navigator"]
        , ["quotes", "emperor"]
        , ["quotes", "paul"]
        , ["quotes", "thufir"]
        , ["quotes", "jessica"]
        , ["quotes", "irulan"]
        , ["quotes", "mohiam"]
        , ["quotes", "gurney"]
        , ["quotes", "leto"]
        , ["quotes", "stilgar"]
        , ["quotes", "liet_kynes"]
        , ["quotes", "pardot_kynes"]
        , ["quotes", "baron_harkonnen"]
        , ["quotes", "piter"]
        , ["quotes", "alia"]
        , ["quotes", "mapes"]
        , ["quotes", "duncan"]
        , ["quotes", "yueh"]
        , ["sayings", "bene_gesserit"]
        , ["sayings", "fremen"]
        , ["sayings", "mentat"]
        , ["sayings", "muaddib"]
        , ["sayings", "orange_catholic_bible"]
        ]
    , unresolvedNestedFields = []
    }

dota :: ModuleInfo
dota =
  ModuleInfo
    { moduleName = "dota"
    , jsonField = "dota"
    , fields = ["hero", "iteam", "team", "player"]
    , nestedFields =
        [ ["abaddon", "quote"]
        , ["alchemist", "quote"]
        , ["axe", "quote"]
        , ["beastmaster", "quote"]
        , ["brewmaster", "quote"]
        , ["bristleback", "quote"]
        , ["centaur", "quote"]
        , ["chaos_knight", "quote"]
        , ["clockwerk", "quote"]
        , ["doom", "quote"]
        , ["dragon_knight", "quote"]
        , ["earth_knight", "quote"]
        , ["earthshaker", "quote"]
        , ["elder_titan", "quote"]
        , ["huskar", "quote"]
        , ["io", "quote"]
        , ["kunkka", "quote"]
        , ["legion_commander", "quote"]
        , ["lifestealer", "quote"]
        , ["lycan", "quote"]
        , ["magnus", "quote"]
        , ["night_stalker", "quote"]
        , ["omniknight", "quote"]
        , ["phoenix", "quote"]
        , ["pudge", "quote"]
        , ["sand_king", "quote"]
        , ["slardar", "quote"]
        , ["spirit_breaker", "quote"]
        , ["sven", "quote"]
        , ["tidehunter", "quote"]
        , ["timbersaw", "quote"]
        , ["tiny", "quote"]
        , ["tusk", "quote"]
        , ["underlord", "quote"]
        , ["undying", "quote"]
        , ["wraith_king", "quote"]
        ]
    , unresolvedFields = []
    , unresolvedNestedFields = []
    }

compass :: ModuleInfo
compass =
  ModuleInfo
    { moduleName = "compass"
    , jsonField = "compass"
    , fields = []
    , unresolvedFields = ["direction", "abbreviation", "azimuth"]
    , nestedFields =
        [ ["cardinal", "word"]
        , ["cardinal", "abbreviation"]
        , ["cardinal", "azimuth"]
        , ["ordinal", "word"]
        , ["ordinal", "abbreviation"]
        , ["ordinal", "azimuth"]
        , ["half-wind", "word"]
        , ["half-wind", "abbreviation"]
        , ["half-wind", "azimuth"]
        , ["quarter-wind", "word"]
        , ["quarter-wind", "abbreviation"]
        , ["quarter-wind", "azimuth"]
        ]
    , unresolvedNestedFields = []
    }

electricalComponents :: ModuleInfo
electricalComponents =
  ModuleInfo
    { moduleName = "electricalComponents"
    , jsonField = "electrical_components"
    , fields = ["active", "passive", "electromechanical"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

esport :: ModuleInfo
esport =
  ModuleInfo
    { moduleName = "esport"
    , jsonField = "esport"
    , fields = ["players", "teams", "events", "leagues", "games"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

fallout :: ModuleInfo
fallout =
  ModuleInfo
    { moduleName = "fallout"
    , jsonField = "fallout"
    , fields = ["characters", "factions", "locations", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

familyGuy :: ModuleInfo
familyGuy =
  ModuleInfo
    { moduleName = "familyGuy"
    , jsonField = "family_guy"
    , fields = ["character", "location", "quote"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

file :: ModuleInfo
file =
  ModuleInfo
    { moduleName = "file"
    , jsonField = "file"
    , fields = ["extension", "mime_type"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

food :: ModuleInfo
food =
  ModuleInfo
    { moduleName = "food"
    , jsonField = "food"
    , fields =
        [ "dish"
        , "descriptions"
        , "ingredients"
        , "fruits"
        , "vegetables"
        , "spices"
        , "measurements"
        , "measurement_sizes"
        , "metric_measurements"
        , "sushi"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

football :: ModuleInfo
football =
  ModuleInfo
    { moduleName = "football"
    , jsonField = "football"
    , fields = ["teams", "players", "coaches", "competitions", "positions"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

fpba :: ModuleInfo
fpba =
  ModuleInfo
    { moduleName = "freshPrinceOfBelAir"
    , jsonField = "the_fresh_prince_of_bel_air"
    , fields = ["characters", "celebrities", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

friends :: ModuleInfo
friends =
  ModuleInfo
    { moduleName = "friends"
    , jsonField = "friends"
    , fields = ["characters", "locations", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

funnyName :: ModuleInfo
funnyName =
  ModuleInfo
    { moduleName = "funnyName"
    , jsonField = "funny_name"
    , fields = ["name"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

cofee :: ModuleInfo
cofee =
  ModuleInfo
    { moduleName = "coffee"
    , jsonField = "coffee"
    , fields = ["country"]
    , unresolvedFields = []
    , nestedFields =
        [ ["regions", "brazil"]
        , ["regions", "colombia"]
        , ["regions", "sumatra"]
        , ["regions", "ethiopia"]
        , ["regions", "honduras"]
        , ["regions", "kenya"]
        , ["regions", "uganda"]
        , ["regions", "mexico"]
        , ["regions", "guatemala"]
        , ["regions", "nicaragua"]
        , ["regions", "costa_rica"]
        , ["regions", "tanzania"]
        , ["regions", "el_salvador"]
        , ["regions", "rwanda"]
        , ["regions", "burundi"]
        , ["regions", "panama"]
        , ["regions", "yemen"]
        , ["regions", "india"]
        ]
    , unresolvedNestedFields = []
    }

elderScrolls :: ModuleInfo
elderScrolls =
  ModuleInfo
    { moduleName = "elderScrolls"
    , jsonField = "elder_scrolls"
    , fields =
        [ "race"
        , "creature"
        , "region"
        , "dragon"
        , "city"
        , "firsrt_name"
        , "last_name"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

got :: ModuleInfo
got =
  ModuleInfo
    { moduleName = "gameOfThrones"
    , jsonField = "game_of_thrones"
    , fields = ["characters", "houses", "cities", "quotes", "dragons"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

hacker :: ModuleInfo
hacker =
  ModuleInfo
    { moduleName = "hacker"
    , jsonField = "hacker"
    , fields = ["abbreviation", "adjective", "noun", "verb", "ingverb"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

gender :: ModuleInfo
gender =
  ModuleInfo
    { moduleName = "gender"
    , jsonField = "gender"
    , fields = ["types", "binary_types"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

gbusters :: ModuleInfo
gbusters =
  ModuleInfo
    { moduleName = "ghostbusters"
    , jsonField = "ghostbusters"
    , fields = ["actors", "characters", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

gdead :: ModuleInfo
gdead =
  ModuleInfo
    { moduleName = "gratefulDead"
    , jsonField = "grateteful_dead"
    , fields = ["players", "songs"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

gphilosophers :: ModuleInfo
gphilosophers =
  ModuleInfo
    { moduleName = "greekPhilosophers"
    , jsonField = "greek_philosophers"
    , fields = ["names", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

halfLife :: ModuleInfo
halfLife =
  ModuleInfo
    { moduleName = "halfLife"
    , jsonField = "half_life"
    , fields = ["character", "enemy", "location"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

harryPotter :: ModuleInfo
harryPotter =
  ModuleInfo
    { moduleName = "harryPotter"
    , jsonField = "harry_potter"
    , fields =
        ["characters", "locations", "quotes", "books", "houses", "spells"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

heroes :: ModuleInfo
heroes =
  ModuleInfo
    { moduleName = "heroes"
    , jsonField = "heroes"
    , fields = ["names", "specialties", "klasses"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

hofs :: ModuleInfo
hofs =
  ModuleInfo
    { moduleName = "heroesOfTheStorm"
    , jsonField = "heroes_of_the_storm"
    , fields = ["battlegrounds", "classes", "heroes", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

heyArnold :: ModuleInfo
heyArnold =
  ModuleInfo
    { moduleName = "heyArnold"
    , jsonField = "hey_arnold"
    , fields = ["characters", "locations", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

hgtg :: ModuleInfo
hgtg =
  ModuleInfo
    { moduleName = "hitchhikersGuideToTheGalaxy"
    , jsonField = "hitchhikers_guide_to_the_galaxy"
    , fields =
        [ "characters"
        , "locations"
        , "marvin_quote"
        , "planets"
        , "quotes"
        , "species"
        , "starships"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

house :: ModuleInfo
house =
  ModuleInfo
    { moduleName = "house"
    , jsonField = "house"
    , fields = ["furniture", "rooms"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

hwmym :: ModuleInfo
hwmym =
  ModuleInfo
    { moduleName = "howIMetYourMother"
    , jsonField = "how_i_met_your_mother"
    , fields = ["character", "catch_phrase", "high_five", "quote"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

isegments :: ModuleInfo
isegments =
  ModuleInfo
    { moduleName = "industrySegments"
    , jsonField = "industry_segments"
    , fields = ["industry", "super_sector", "sector", "sub_sector"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

internet :: ModuleInfo
internet =
  ModuleInfo
    { moduleName = "internet"
    , jsonField = "internet"
    , fields = ["free_email", "domain_suffix"]
    , unresolvedFields = []
    , nestedFields =
        [ ["user_agent", "aol"]
        , ["user_agent", "chrome"]
        , ["user_agent", "firefox"]
        , ["user_agent", "internet_explorer"]
        , ["user_agent", "netscape"]
        , ["user_agent", "opera"]
        , ["user_agent", "safari"]
        ]
    , unresolvedNestedFields = []
    }

job :: ModuleInfo
job =
  ModuleInfo
    { moduleName = "job"
    , jsonField = "job"
    , fields =
        [ "field"
        , "seniority"
        , "position"
        , "key_skills"
        , "employment_type"
        , "education_level"
        ]
    , unresolvedFields = ["title"]
    , nestedFields = []
    , unresolvedNestedFields = []
    }

kpop :: ModuleInfo
kpop =
  ModuleInfo
    { moduleName = "kpop"
    , jsonField = "kpop"
    , fields =
        [ "i_groups"
        , "ii_groups"
        , "iii_groups"
        , "girl_groups"
        , "boy_bands"
        , "solo"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

lol :: ModuleInfo
lol =
  ModuleInfo
    { moduleName = "leagueOfLegends"
    , jsonField = "league_of_legends"
    , fields =
        ["champion", "location", "quote", "summoner_spell", "masteries", "rank"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

lebowski :: ModuleInfo
lebowski =
  ModuleInfo
    { moduleName = "lebowski"
    , jsonField = "lebowski"
    , fields = ["actors", "characters", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

lofr :: ModuleInfo
lofr =
  ModuleInfo
    { moduleName = "lordOfTheRings"
    , jsonField = "lord_of_the_rings"
    , fields = ["characters", "locations", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

lorem :: ModuleInfo
lorem =
  ModuleInfo
    { moduleName = "lorem"
    , jsonField = "lorem"
    , fields = ["words", "supplemental"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

lovecraft :: ModuleInfo
lovecraft =
  ModuleInfo
    { moduleName = "lovecraft"
    , jsonField = "lovecraft"
    , fields = ["fhtagn", "deity", "location", "tome", "words"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

markdown :: ModuleInfo
markdown =
  ModuleInfo
    { moduleName = "markdown"
    , jsonField = "markdown"
    , fields = ["headers", "emphasis"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

marketing :: ModuleInfo
marketing =
  ModuleInfo
    { moduleName = "marketing"
    , jsonField = "marketing"
    , fields = ["buzzwords"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

measurement :: ModuleInfo
measurement =
  ModuleInfo
    { moduleName = "measurement"
    , jsonField = "measurement"
    , fields =
        [ "height"
        , "length"
        , "volume"
        , "weight"
        , "metric_height"
        , "metric_length"
        , "metric_volume"
        , "metric_weight"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

michaelScott :: ModuleInfo
michaelScott =
  ModuleInfo
    { moduleName = "michaelScott"
    , jsonField = "michael_scott"
    , fields = ["quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

military :: ModuleInfo
military =
  ModuleInfo
    { moduleName = "military"
    , jsonField = "military"
    , fields =
        [ "army_rank"
        , "marines_rank"
        , "navy_rank"
        , "air_force_rank"
        , "dod_paygrade"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

movie :: ModuleInfo
movie =
  ModuleInfo
    { moduleName = "movie"
    , jsonField = "movie"
    , fields = ["quote"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

music :: ModuleInfo
music =
  ModuleInfo
    { moduleName = "music"
    , jsonField = "music"
    , fields = ["instruments", "bands", "albums", "genres"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

myst :: ModuleInfo
myst =
  ModuleInfo
    { moduleName = "myst"
    , jsonField = "myst"
    , fields = ["games", "creatures", "characters", "ages", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

nation :: ModuleInfo
nation =
  ModuleInfo
    { moduleName = "nation"
    , jsonField = "nation"
    , fields = ["nationality", "language", "capital_city"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

npa :: ModuleInfo
npa =
  ModuleInfo
    { moduleName = "natoPhoneticAlphabet"
    , jsonField = "nato_phonetic_alphabet"
    , fields = ["code_word"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

newGirl :: ModuleInfo
newGirl =
  ModuleInfo
    { moduleName = "newGirl"
    , jsonField = "new_girl"
    , fields = ["characters", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

onePiece :: ModuleInfo
onePiece =
  ModuleInfo
    { moduleName = "onePiece"
    , jsonField = "one_piece"
    , fields =
        ["characters", "seas", "islands", "locations", "quotes", "akumas_no_mi"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

parksAndRec :: ModuleInfo
parksAndRec =
  ModuleInfo
    { moduleName = "parksAndRec"
    , jsonField = "parks_and_rec"
    , fields = ["characters", "cities"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

phish :: ModuleInfo
phish =
  ModuleInfo
    { moduleName = "phish"
    , jsonField = "phish"
    , fields = ["song"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

phoneNumber :: ModuleInfo
phoneNumber =
  ModuleInfo
    { moduleName = "phoneNumber"
    , jsonField = "phone_number"
    , fields = ["country_code"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

pokemon :: ModuleInfo
pokemon =
  ModuleInfo
    { moduleName = "pokemon"
    , jsonField = "pokemon"
    , fields = ["names", "locations", "moves"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

pbride :: ModuleInfo
pbride =
  ModuleInfo
    { moduleName = "princessBride"
    , jsonField = "princess_bride"
    , fields = ["characters", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

pl :: ModuleInfo
pl =
  ModuleInfo
    { moduleName = "programmingLauguage"
    , jsonField = "programming_language"
    , fields = ["name", "creator"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

quote :: ModuleInfo
quote =
  ModuleInfo
    { moduleName = "quote"
    , jsonField = "quote"
    , fields =
        [ "famous_last_words"
        , "matz"
        , "most_interesting_man_in_the_world"
        , "robin"
        , "singular_siegler"
        , "yoda"
        ]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

relationship :: ModuleInfo
relationship =
  ModuleInfo
    { moduleName = "relationship"
    , jsonField = "relationship"
    , fields = ["in_law", "spouse", "parent", "sibling"]
    , unresolvedFields = []
    , nestedFields = [["familial", "direct"], ["familial", "extended"]]
    , unresolvedNestedFields = []
    }

ram :: ModuleInfo
ram =
  ModuleInfo
    { moduleName = "rickAndMorty"
    , jsonField = "rick_and_morty"
    , fields = ["characters", "locations", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

rockBand :: ModuleInfo
rockBand =
  ModuleInfo
    { moduleName = "rockBand"
    , jsonField = "rock_band"
    , fields = ["name"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

rupaul :: ModuleInfo
rupaul =
  ModuleInfo
    { moduleName = "rupaul"
    , jsonField = "rupaul"
    , fields = ["queens", "quotes"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

science :: ModuleInfo
science =
  ModuleInfo
    { moduleName = "science"
    , jsonField = "science"
    , fields = ["element", "element_symbol", "scientist"]
    , unresolvedFields = []
    , nestedFields = []
    , unresolvedNestedFields = []
    }

currentOne :: ModuleInfo
currentOne = science
