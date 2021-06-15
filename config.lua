Config              = {}
Config.DrawDistance = 30
Config.Size         = {x = 1.5, y = 1.5, z = 1.5}
Config.Color        = {r = 0, g = 128, b = 255}
Config.Type         = 20
Config.Locale       = 'en'

Config.Zones = {
	{
		name = "Karkhone",
		color = 56,
		Icon = 569,
		Scale = 1.0,
		Display = 4,
		x = 1086.04, y = -1998.646, z = 29.86377,
		IsForTopGang = false,
		Items = {
			['folad'] = {
				label = 'فولاد',
				isWeapon = false,
				isBuy = true,
				price = 1,
				count = 1,
				craftime = 0,
				requirements = {
					{item = 'Iron', label = 'آهن' , count = 4},
				}
			},
			['lole'] = {
				label = 'لوله',
				isWeapon = false,
				isBuy = true,
				price = 1,
				count = 1,
				craftime = 0,
				requirements = {
					{item = 'Iron', label = 'آهن' , count = 2},
				}
			},
			['maftool'] = {
				label = 'مفتول',
				isWeapon = false,
				isBuy = true,
				price = 1,
				count = 1,
				craftime = 0,
				requirements = {
					{item = 'Iron', label = 'آهن' , count = 2},
				}
			},
			['milgerd'] = {
				label = 'میلگرد',
				isWeapon = false,
				isBuy = true,
				price = 1,
				count = 1,
				craftime = 0,
				requirements = {
					{item = 'Iron', label = 'آهن' , count = 2},
				}
			},
			['varageahan'] = {
				label = 'ورق آهن',
				isWeapon = false,
				isBuy = true,
				price = 1,
				count = 1,
				craftime = 0,
				requirements = {
					{item = 'Iron', label = 'آهن' , count = 4},
				}
			},
		}
	},
	{
		x = 605.7626, y = -3095.327, z = 5.16079,
		IsForTopGang = true,
		Items = {
			['fanar'] = {
				label = 'فنر',
				isWeapon = false,
				isBuy = false,
				price = 1,
				count = 1,
				craftime = 5000,
				requirements = {
					{item = 'maftool', label = 'مفتول' , count = 1},
				}
			},
			['mashe'] = {
				label = 'ماشه',
				isWeapon = false,
				isBuy = false,
				price = 1,
				count = 1,
				craftime = 5000,
				requirements = {
					{item = 'PureGold', label = 'طلا خالص' , count = 2},
					{item = 'varageahan', label = 'ورق آهن' , count = 1},
				}
			},
			['sozan'] = {
				label = 'سوزن',
				isWeapon = false,
				isBuy = false,
				price = 1,
				count = 1,
				craftime = 10000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 1},
				}
			},
		}
	},
	{
		x = 605.8022, y = -3091.648, z = 5.16079,
		IsForTopGang = true,
		Items = {
			['badanekolt'] = {
				label = 'بدنه کلت',
				isWeapon = false,
				isBuy = false,
				price = 1,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 5},
				}
			},
			['badanesmg'] = {
				label = 'بدنه اس ام جی',
				isWeapon = false,
				isBuy = false,
				price = 5,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 10},
				}
			},
			['badaneshotgun'] = {
				label = 'بدنه شاتگان',
				isWeapon = false,
				isBuy = false,
				price = 15,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 15},
				}
			},
			['badanerifle'] = {
				label = 'بدنه رایفل',
				isWeapon = false,
				isBuy = false,
				price = 50,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 20},
				}
			},
			['badanelmg'] = {
				label = 'بدنه ال ام جی',
				isWeapon = false,
				isBuy = false,
				price = 75,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 30},
				}
			},
			['badanesniper'] = {
				label = 'بدنه اسنایپر',
				isWeapon = false,
				isBuy = false,
				price = 10000,
				count = 1,
				craftime = 120000,
				requirements = {
					{item = 'folad', label = 'فولاد' , count = 150},
					{item = 'lole', label = 'لوله' , count = 25},
				}
			},
		}
	},
	{
		--[[name = "Kargah",
		color = 56,
		Icon = 566,
		Scale = 1.0,
		Display = 4,]]--
		x = 606.4747, y = -3087.851, z = 5.060791,
		IsForTopGang = true,
		Items = {
			['WEAPON_PISTOL'] = {
				label = 'کلت',
				isWeapon = true,
				isBuy = false,
				price = 5,
				count = 1,
				craftime = 10000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 1},
					{item = 'badanekolt', label = 'بدنه کلت' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_COMBATPISTOL'] = {
				label = 'کلت جنگی',
				isWeapon = true,
				isBuy = false,
				price = 5,
				count = 1,
				craftime = 10000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 1},
					{item = 'badanekolt', label = 'بدنه کلت' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_PISTOL50'] = {
				label = 'کلت 50',
				isWeapon = true,
				isBuy = false,
				price = 5,
				count = 1,
				craftime = 10000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 1},
					{item = 'badanekolt', label = 'بدنه کلت' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_SNSPISTOL'] = {
				label = 'اس ان اس پیستول',
				isWeapon = true,
				isBuy = false,
				price = 5,
				count = 1,
				craftime = 10000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 1},
					{item = 'badanekolt', label = 'بدنه کلت' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_HEAVYPISTOL'] = {
				label = 'کلت سنگین',
				isWeapon = true,
				isBuy = false,
				price = 5,
				count = 1,
				craftime = 10000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 1},
					{item = 'badanekolt', label = 'بدنه کلت' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_APPISTOL'] = {
				label = 'ای پی پیستول',
				isWeapon = true,
				isBuy = false,
				price = 15,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 3},
					{item = 'badanekolt', label = 'بدنه کلت' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 2},
					{item = 'sozan', label = 'سوزن' , count = 4},
				}
			},
			-- SMG
			['WEAPON_MICROSMG'] = {
				label = 'میکرو اس ام جی',
				isWeapon = true,
				isBuy = false,
				price = 20,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 2},
					{item = 'badanesmg', label = 'بدنه اس ام جی' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_MINISMG'] = {
				label = 'مینی اس ام جی',
				isWeapon = true,
				isBuy = false,
				price = 25,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 2},
					{item = 'badanesmg', label = 'بدنه اس ام جی' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 1},
					{item = 'sozan', label = 'سوزن' , count = 1},
				}
			},
			['WEAPON_SMG'] = {
				label = 'اس ام جی',
				isWeapon = true,
				isBuy = false,
				price = 30,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 2},
					{item = 'badanesmg', label = 'بدنه اس ام جی' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 2},
					{item = 'sozan', label = 'سوزن' , count = 2},
				}
			},
			['WEAPON_ASSAULTSMG'] = {
				label = 'اساولت اس ام جی',
				isWeapon = true,
				isBuy = false,
				price = 50,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 3},
					{item = 'badanesmg', label = 'بدنه اس ام جی' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 2},
				}
			},
			['WEAPON_COMBATPDW'] = {
				label = 'کامبت پی دی دبلیو',
				isWeapon = true,
				isBuy = false,
				price = 45,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 2},
					{item = 'badanesmg', label = 'بدنه اس ام جی' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 2},
					{item = 'sozan', label = 'سوزن' , count = 2},
				}
			},
			-- shotgun
			['WEAPON_PUMPSHOTGUN'] = {
				label = 'پامپ شاتگان',
				isWeapon = true,
				isBuy = false,
				price = 55,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 2},
					{item = 'badaneshotgun', label = 'بدنه شاتگان' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 2},
					{item = 'sozan', label = 'سوزن' , count = 2},
				}
			},
			-- Assault Rifle
			['WEAPON_ASSAULTRIFLE'] = {
				label = 'ای کی 47',
				isWeapon = true,
				isBuy = false,
				price = 100,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 3},
					{item = 'badanerifle', label = 'بدنه رایفل' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 3},
				}
			},
			['WEAPON_CARBINERIFLE'] = {
				label = 'کرباین رایفل',
				isWeapon = true,
				isBuy = false,
				price = 110,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 3},
					{item = 'badanerifle', label = 'بدنه رایفل' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 3},
				}
			},
			['WEAPON_ADVANCEDRIFLE'] = {
				label = 'ادونسد رایفل',
				isWeapon = true,
				isBuy = false,
				price = 120,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 3},
					{item = 'badanerifle', label = 'بدنه رایفل' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 3},
				}
			},
			['WEAPON_SPECIALCARBINE'] = {
				label = 'کرباین مخصوص',
				isWeapon = true,
				isBuy = false,
				price = 150,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 4},
					{item = 'badanerifle', label = 'بدنه رایفل' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 4},
					{item = 'sozan', label = 'سوزن' , count = 3},
				}
			},
			['WEAPON_BULLPUPRIFLE'] = {
				label = 'بولپاپ رایفل',
				isWeapon = true,
				isBuy = false,
				price = 130,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 4},
					{item = 'badanerifle', label = 'بدنه رایفل' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 3},
				}
			},
			['WEAPON_COMPACTRIFLE'] = {
				label = 'کامپکت رایفل',
				isWeapon = true,
				isBuy = false,
				price = 85,
				count = 1,
				craftime = 20000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 2},
					{item = 'badanerifle', label = 'بدنه رایفل' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 2},
				}
			},
			-- LMG
			['WEAPON_GUSENBERG'] = {
				label = 'لایت ماشین گان',
				isWeapon = true,
				isBuy = false,
				price = 150,
				count = 1,
				craftime = 30000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 3},
					{item = 'badanelmg', label = 'بدنه ال ام جی' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 3},
					{item = 'sozan', label = 'سوزن' , count = 3},
				}
			},
			-- sniper rifle
			['WEAPON_SNIPERRIFLE'] = {
				label = 'اسنایپر',
				isWeapon = true,
				isBuy = false,
				price = 2500,
				count = 1,
				craftime = 120000,
				requirements = {
					{item = 'fanar', label = 'فنر' , count = 10},
					{item = 'badanesniper', label = 'بدنه اسنایپر' , count = 1},
					{item = 'mashe', label = 'ماشه' , count = 10},
					{item = 'sozan', label = 'سوزن' , count = 10},
				}
			},
		}
	},
}


