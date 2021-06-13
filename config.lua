Config              = {}
Config.DrawDistance = 30
Config.Size         = {x = 1.5, y = 1.5, z = 1.5}
Config.Color        = {r = 0, g = 128, b = 255}
Config.Type         = 20
Config.Locale       = 'en'

Config.Zones = {
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
		}
	},
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
		}
	}
}


