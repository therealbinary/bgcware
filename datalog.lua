--[[
If you think that you will get famous or achieve something else by nuking my webhook down there, quick hint, you wont. I honestly couldn't care less. This is opensource for one
and only reason, for my users to see what we log, and how we log it. I'm switching to an proxy server soon so destroying the webhook won't be a thing. If you want to use this
code for your script, you are free to use it. Just add a little credit if you don't mind.
]]

local Player = game.Players.LocalPlayer
local CountryCode = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(Player)
local Countries = {["AD"]="Andorra",["AE"]="United Arab Emirates",["AF"]="Afghanistan",["AG"]="Antigua and Barbuda",["AI"]="Anguilla",["AL"]="Albania",["AM"]="Armenia",["AN"]="Netherlands Antilles",["AO"]="Angola",["AQ"]="Antarctica",["AR"]="Argentina",["AS"]="American Samoa",["AT"]="Austria",["AU"]="Australia",["AW"]="Aruba",["AX"]="Aland Islands",["AZ"]="Azerbaijan",["BA"]="Bosnia and Herzegovina",["BB"]="Barbados",["BD"]="Bangladesh",["BE"]="Belgium",["BF"]="Burkina Faso",["BG"]="Bulgaria",["BH"]="Bahrain",["BI"]="Burundi",["BJ"]="Benin",["BL"]="Saint Barthelemy",["BM"]="Bermuda",["BN"]="Brunei Darussalam",["BO"]="Bolivia",["BQ"]="Bonaire, Saint Eustatius and Saba",["BR"]="Brazil",["BS"]="Bahamas",["BT"]="Bhutan",["BV"]="Bouvet Island",["BW"]="Botswana",["BY"]="Belarus",["BZ"]="Belize",["CA"]="Canada",["CC"]="Cocos Islands",["CD"]="Congo (DRC)",["CG"]="Congo",["CH"]="Switzerland",["CI"]="Ivory Coast",["CK"]="Cook Islands",["CL"]="Chile",["CM"]="Cameroon",["CN"]="China",["CO"]="Colombia",["CR"]="Costa Rica",["CU"]="Cuba",["CV"]="Cape Verde",["CW"]="Curaçao",["CX"]="Christmas Island",["CY"]="Cyprus",["CZ"]="Czech Republic",["DE"]="Germany",["DJ"]="Djibouti",["DK"]="Denmark",["DM"]="Dominica",["DO"]="Dominican Republic",["DZ"]="Algeria",["EC"]="Ecuador",["EE"]="Estonia",["EG"]="Egypt",["EH"]="Western Sahara",["ER"]="Eritrea",["ES"]="Spain",["ET"]="Ethiopia",["FI"]="Finland",["FJ"]="Fiji",["FK"]="Falkland Islands (Malvinas)",["FM"]="Micronesia",["FO"]="Faroe Islands",["FR"]="France",["GA"]="Gabon",["GB"]="United Kingdom",["GD"]="Grenada",["GE"]="Georgia",["GF"]="French Guiana",["GG"]="Guernsey",["GH"]="Ghana",["GI"]="Gibraltar",["GL"]="Greenland",["GM"]="Gambia",["GN"]="Guinea",["GP"]="Guadeloupe",["GQ"]="Equatorial Guinea",["GR"]="Greece",["GS"]="South Georgia and the South Sandwich Islands",["GT"]="Guatemala",["GU"]="Guam",["GW"]="Guinea-Bissau",["GY"]="Guyana",["HK"]="Hong Kong",["HM"]="Heard Island and the McDonald Islands",["HN"]="Honduras",["HR"]="Croatia",["HT"]="Haiti",["HU"]="Hungary",["ID"]="Indonesia",["IE"]="Ireland",["IL"]="Israel",["IM"]="Isle of Man",["IN"]="India",["IO"]="British Indian Ocean Territory",["IQ"]="Iraq",["IR"]="Iran",["IS"]="Iceland",["IT"]="Italy",["JE"]="Jersey",["JM"]="Jamaica",["JO"]="Jordan",["JP"]="Japan",["KE"]="Kenya",["KG"]="Kyrgyzstan",["KH"]="Cambodia",["KI"]="Kiribati",["KM"]="Comoros",["KN"]="Saint Kitts and Nevis",["KP"]="North Korea",["KR"]="Korea",["KW"]="Kuwait",["KY"]="Cayman Islands",["KZ"]="Kazakhstan",["LA"]="Laos",["LB"]="Lebanon",["LC"]="Saint Lucia",["LI"]="Liechtenstein",["LK"]="Sri Lanka",["LR"]="Liberia",["LS"]="Lesotho",["LT"]="Lithuania",["LU"]="Luxembourg",["LV"]="Latvia",["LY"]="Libya",["MA"]="Morocco",["MC"]="Monaco",["MD"]="Moldova",["ME"]="Montenegro",["MF"]="Saint Martin",["MG"]="Madagascar",["MH"]="Marshall Islands",["MK"]="Macedonia",["ML"]="Mali",["MM"]="Myanmar",["MN"]="Mongolia",["MO"]="Macao",["MP"]="Northern Mariana Islands",["MQ"]="Martinique",["MR"]="Mauritania",["MS"]="Montserrat",["MT"]="Malta",["MU"]="Mauritius",["MV"]="Maldives",["MW"]="Malawi",["MX"]="Mexico",["MY"]="Malaysia",["MZ"]="Mozambique",["NA"]="Namibia",["NC"]="New Caledonia",["NE"]="FIX THIS",["NF"]="Norfolk Island",["NG"]="Nigeria",["NI"]="Nicaragua",["NL"]="Netherlands",["NO"]="Norway",["NP"]="Nepal",["NR"]="Nauru",["NU"]="Niue",["NZ"]="New Zealand",["OM"]="Oman",["PA"]="Panama",["PE"]="Peru",["PF"]="French Polynesia",["PG"]="Papua New Guinea",["PH"]="Philippines",["PK"]="Pakistan",["PL"]="Poland",["PM"]="Saint Pierre and Miquelon",["PN"]="Pitcairn Islands",["PR"]="Puerto Rico",["PS"]="Palestine",["PT"]="Portugal",["PW"]="Palau",["PY"]="Paraguay",["QA"]="Qatar",["RE"]="Reunion",["RO"]="Romania",["RS"]="Serbia",["RU"]="Russian Federation",["RW"]="Rwanda",["SA"]="Saudi Arabia",["SB"]="Solomon Islands",["SC"]="Seychelles",["SE"]="Sweden",["SG"]="Singapore",["SH"]="Saint Helena, Ascension and Tristan da Cunha",["SI"]="Slovenia",["SJ"]="Svalbard and Jan Mayen",["SK"]="Slovakia",["SL"]="Sierra Leone",["SM"]="San Marino",["SN"]="Senegal",["SO"]="Somalia",["SR"]="Suriname",["SS"]="South Sudan",["ST"]="Sao Tome and Principe",["SV"]="El Salvador",["SX"]="Sint Maarten",["SY"]="Syria",["SZ"]="Swaziland",["TC"]="Turks and Caicos Islands",["TD"]="Chad",["TF"]="French Southern Territories",["TG"]="Togo",["TH"]="Thailand",["TJ"]="Tajikistan",["TK"]="Tokelau",["TL"]="Timor-leste",["TM"]="Turkmenistan",["TN"]="Tunisia",["TO"]="Tonga",["TR"]="Turkey",["TT"]="Trinidad and Tobago",["TV"]="Tuvalu",["TW"]="Taiwan",["TZ"]="Tanzania",["UA"]="Ukraine",["UG"]="Uganda",["UM"]="United States Minor Outlying Islands",["US"]="United States",["UY"]="Uruguay",["UZ"]="Uzbekistan",["VA"]="Holy See",["VC"]="Saint Vincent and the Grenadines",["VE"]="Venezuela",["VG"]="Virgin Islands (British)",["VI"]="Virgin Islands (US)",["VN"]="Vietnam",["VU"]="Vanuatu",["WF"]="Wallis and Futuna",["WS"]="Samoa",["YE"]="Yemen",["YT"]="Mayotte",["ZA"]="South Africa",["ZM"]="Zambia",["ZW"]="Zimbabwe"}
local FetchCountry = function()
    if CountryCode and Countries[CountryCode] then 
        return Countries[CountryCode]
    else 
        return "Fail/Not Recognised"
    end
end
local GetExploit = function()
    local Exploit = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or (secure_load and "Sentinel") or (KRNL_LOADED and "Krnl") or (pebc_execute and "ProtoSmasher") or (identifyexecutor and identifyexecutor() == "ScriptWare" and "ScriptWare") or (fluxus and "Fluxus") or "Unindentified";
    if Exploit == "Unindentified" then 
        Player:Kick("bgcware > unsupported exploit")
    end 
    return Exploit
end
local Game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local Data = {
    Content = "**> bgcware - script executed successfully**",
    Embed = {
        ["title"] = "Script Executed: "..Game.."!",
        ["url"] = string.format("https://www.roblox.com/games/%s/", game.PlaceId),
        ["color"] = tonumber(0xDE3163),
        ["fields"] = {
            {
                ["name"] = "UserData",
                ["value"] = string.format("```Name: %s / %d```", Player.Name, Player.UserId),
                ["inline"] = true,
            },
            {
                ["name"] = "Executor",
                ["value"] = string.format("```Executor: %s```", GetExploit()),
                ["inline"] = true,
            },
            {
                ["name"] = "Country",
                ["value"] = string.format("```Country: %s ```", FetchCountry()),
                ["inline"] = true,
            }
        }
    }
}

local HttpService = game:GetService("HttpService")
local Header = {['Content-Type'] = 'application/json'}
local Methods = "POST"

(syn and syn.request or http_request or request or httprequest or HttpPost) { 
    Url = "https://discord.com/api/webhooks/1100690432670842950/3XW5HjQbmKdUNDo1Z3zueHSA5wamDSpliWl1FHbAOkV3CHD76ju6zjOyNm29qo4pz1Qk",
    Method = Methods,
    Headers = Header,
    Body = HttpService:JSONEncode({content = Data.Content; embeds = {Data.Embed}})
}
