return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Perban',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Uang Kotor',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Anda makan burger yang lezat'
		},
	},

	['cola'] = {
		label = 'Coca Cola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Anda memuaskan dahaga Anda dengan cola'
		}
	},

	['parachute'] = {
		label = 'Parasut',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Sampah',
	},

	['paperbag'] = {
		label = 'Kantong Kertas',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identifikasi',
	},

	['panties'] = {
		label = 'Celana Dalam',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Kunci',
		weight = 160,
	},

	['phone'] = {
		label = 'Hand Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Uang',
	},

	['mustard'] = {
		label = 'Moster',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Kamu.. minum mustard'
		}
	},

	['water'] = {
		label = 'Air',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Anda minum air yang menyegarkan'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Rompi Antipeluru',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Pakaian',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Besi tua',
		weight = 80,
	},

	["metalscrap"] = {
		label = "Kepingan logam",
		weight = 100,
		stack = true,
		close = false,
		description = "Anda mungkin bisa membuat sesuatu yang menyenangkan dari ini",
		client = {
			image = "metalscrap.png",
		}
	},

	["weed_skunk"] = {
		label = "sigung gulma 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Kantong gulma dengan 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_amnesia"] = {
		label = "gulma Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Kantong ganja dengan 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["diving_fill"] = {
		label = "Tabung Selam",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["oxy"] = {
		label = "Resep Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "Labelnya Telah Dirobek",
		client = {
			image = "oxy.png",
		}
	},

	["wine"] = {
		label = "Anggur",
		weight = 300,
		stack = true,
		close = false,
		description = "Anggur yang enak untuk diminum di malam yang cerah",
		client = {
			image = "wine.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Tas Bukti Kosong",
		weight = 0,
		stack = true,
		close = false,
		description = "Banyak digunakan untuk menjaga DNA dari darah, selongsong peluru dan banyak lagi",
		client = {
			image = "evidence.png",
		}
	},

	["joint"] = {
		label = "Persendian",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney akan sangat bangga padamu",
		client = {
			image = "joint.png",
		}
	},

	["cokebaggy"] = {
		label = "Sekantong Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "Untuk menjadi bahagia dengan sangat cepat",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["weaponlicense"] = {
		label = "Lisensi Senjata",
		weight = 0,
		stack = false,
		close = true,
		description = "License Senjata",
		client = {
			image = "weapon_license.png",
		}
	},

	["advancedlockpick"] = {
		label = "Penguncian Tingkat Lanjut",
		weight = 500,
		stack = true,
		close = true,
		description = "Jika Anda sering kehilangan kunci, ini sangat berguna... Juga berguna untuk membuka bir Anda",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Benih Sigung",
		weight = 0,
		stack = true,
		close = true,
		description = "Benih gulma dari Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["rolling_paper"] = {
		label = "Kertas gulung",
		weight = 0,
		stack = true,
		close = true,
		description = "Kertas yang dibuat khusus untuk membungkus dan menghisap tembakau atau ganja.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["lighter"] = {
		label = "Lebih ringan",
		weight = 0,
		stack = true,
		close = true,
		description = "Pada malam tahun baru, api yang bagus untuk berdiri di sampingnya",
		client = {
			image = "lighter.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipataria",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ini juga dikenal sebagai karang hitam atau karang duri",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["thermite"] = {
		label = "Termit",
		weight = 1000,
		stack = true,
		close = true,
		description = "Terkadang Anda ingin semuanya terbakar",
		client = {
			image = "thermite.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Tas Bukti",
		weight = 200,
		stack = false,
		close = false,
		description = "Tas bukti yang terisi untuk melihat siapa yang melakukan kejahatan >:(",
		client = {
			image = "evidence.png",
		}
	},

	["armor"] = {
		label = "Baju zirah",
		weight = 5000,
		stack = true,
		close = true,
		description = "Beberapa perlindungan tidak ada salahnya... benar?",
		client = {
			image = "armor.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Kantong Gulma Kosong",
		weight = 0,
		stack = true,
		close = true,
		description = "Sebuah tas kecil yang kosong",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["rolex"] = {
		label = "Jam Tangan Emas",
		weight = 1500,
		stack = true,
		close = true,
		description = "Sebuah jam tangan emas tampak seperti jackpot bagi saya!",
		client = {
			image = "rolex.png",
		}
	},

	["ironoxide"] = {
		label = "Serbuk Besi",
		weight = 100,
		stack = true,
		close = false,
		description = "Beberapa bubuk untuk dicampur.",
		client = {
			image = "ironoxide.png",
		}
	},

	["walkstick"] = {
		label = "Tongkat jalan",
		weight = 1000,
		stack = true,
		close = true,
		description = "Tongkat jalan untukmu nenek-nenek di luar sana.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["nitrous"] = {
		label = "Nitrogen",
		weight = 1000,
		stack = true,
		close = true,
		description = "Percepat, pedal gas! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["printerdocument"] = {
		label = "Dokumen",
		weight = 500,
		stack = false,
		close = true,
		description = "Dokumen yang bagus",
		client = {
			image = "printerdocument.png",
		}
	},

	["heavyarmor"] = {
		label = "Armor Berat",
		weight = 5000,
		stack = true,
		close = true,
		description = "Beberapa perlindungan tidak ada salahnya... benar?",
		client = {
			image = "armor.png",
		}
	},

	["beer"] = {
		label = "Bir",
		weight = 500,
		stack = true,
		close = true,
		description = "Tidak seperti bir dingin yang enak!",
		client = {
			image = "beer.png",
		}
	},

	["police_stormram"] = {
		label = "badai petir",
		weight = 18000,
		stack = true,
		close = true,
		description = "Alat yang bagus untuk mendobrak pintu",
		client = {
			image = "police_stormram.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "Benih Janda Putih",
		weight = 0,
		stack = true,
		close = false,
		description = "Benih gulma Janda Putih",
		client = {
			image = "weed_seed.png",
		}
	},

	["iron"] = {
		label = "Besi",
		weight = 100,
		stack = true,
		close = false,
		description = "Sepotong logam praktis yang mungkin bisa Anda gunakan untuk sesuatu",
		client = {
			image = "iron.png",
		}
	},

	["firework1"] = {
		label = "Kembang Api1",
		weight = 1000,
		stack = true,
		close = true,
		description = "Kembang Api",
		client = {
			image = "firework1.png",
		}
	},

	["moneybag"] = {
		label = "Kantong Uang",
		weight = 0,
		stack = false,
		close = true,
		description = "Sebuah tas berisi uang tunai",
		client = {
			image = "moneybag.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Kantong gulma dengan 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["crack_baggy"] = {
		label = "Kantong Retak",
		weight = 0,
		stack = true,
		close = true,
		description = "Untuk lebih cepat bahagia",
		client = {
			image = "crack_baggy.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Tablet mahal",
		client = {
			image = "tablet.png",
		}
	},

	["jerry_can"] = {
		label = "Jerigen 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "Satu kaleng penuh Bahan Bakar",
		client = {
			image = "jerry_can.png",
		}
	},

	["id_card"] = {
		label = "KTP",
		weight = 0,
		stack = false,
		close = false,
		description = "Kartu yang berisi semua informasi Anda untuk mengidentifikasi diri Anda",
		client = {
			image = "id_card.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "Benih OGKush",
		weight = 0,
		stack = true,
		close = true,
		description = "Benih gulma OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_brick"] = {
		label = "Bata Gulma",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick untuk dijual ke pelanggan besar.",
		client = {
			image = "weed_brick.png",
		}
	},

	["newscam"] = {
		label = "Kamera Berita",
		weight = 100,
		stack = false,
		close = true,
		description = "Kamera untuk berita",
		client = {
			image = "newscam.png",
		}
	},

	["certificate"] = {
		label = "Sertifikat",
		weight = 0,
		stack = true,
		close = true,
		description = "Sertifikat yang membuktikan Anda memiliki barang tertentu",
		client = {
			image = "certificate.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Benih Amnesia",
		weight = 0,
		stack = true,
		close = true,
		description = "Benih gulma Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["meth"] = {
		label = "Met",
		weight = 100,
		stack = true,
		close = true,
		description = "Sekantong Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["painkillers"] = {
		label = "Obat penghilang rasa sakit",
		weight = 0,
		stack = true,
		close = true,
		description = "Untuk rasa sakit yang tidak dapat Anda tahan lagi, minumlah pil ini yang akan membuat Anda merasa sehat kembali",
		client = {
			image = "painkillers.png",
		}
	},

	["plastic"] = {
		label = "Plastik",
		weight = 100,
		stack = true,
		close = false,
		description = "DAUR ULANG! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["diamond_ring"] = {
		label = "Cincin berlian",
		weight = 1500,
		stack = true,
		close = true,
		description = "Cincin berlian tampak seperti jackpot bagi saya!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["radioscanner"] = {
		label = "Pemindai Radio",
		weight = 1000,
		stack = true,
		close = true,
		description = "Dengan ini Anda bisa mendapatkan beberapa peringatan polisi. Namun tidak 100% efektif",
		client = {
			image = "radioscanner.png",
		}
	},

	["handcuffs"] = {
		label = "Brogol",
		weight = 100,
		stack = true,
		close = true,
		description = "Sangat berguna saat orang berperilaku buruk. Mungkin bisa digunakan untuk hal lain?",
		client = {
			image = "handcuffs.png",
		}
	},

	["stickynote"] = {
		label = "Pesan tempel",
		weight = 0,
		stack = false,
		close = false,
		description = "Terkadang berguna untuk mengingat sesuatu :)",
		client = {
			image = "stickynote.png",
		}
	},

	["water_bottle"] = {
		label = "Sebotol air",
		weight = 500,
		stack = true,
		close = true,
		description = "Untuk semua yang haus di luar sana",
		client = {
			image = "water_bottle.png",
		}
	},

	["coke_small_brick"] = {
		label = "Paket Coke",
		weight = 350,
		stack = false,
		close = true,
		description = "Paket kecil kokain, kebanyakan digunakan untuk bertransaksi dan memakan banyak tempat",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["newsmic"] = {
		label = "Mikrofon Berita",
		weight = 100,
		stack = false,
		close = true,
		description = "Mikrofon untuk berita",
		client = {
			image = "newsmic.png",
		}
	},

	["coffee"] = {
		label = "Kopi",
		weight = 200,
		stack = true,
		close = true,
		description = "Pompa 4 Kafein",
		client = {
			image = "coffee.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "Untuk semua yang haus di luar sana",
		client = {
			image = "vodka.png",
		}
	},

	["10kgoldchain"] = {
		label = "Rantai Emas 10k",
		weight = 2000,
		stack = true,
		close = true,
		description = "Rantai emas 10 karat",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "Dengan pinger dan telepon Anda, Anda dapat mengirimkan lokasi Anda",
		client = {
			image = "pinger.png",
		}
	},

	["security_card_01"] = {
		label = "Kartu Keamanan A",
		weight = 0,
		stack = true,
		close = true,
		description = "Kartu keamanan... Entah apa fungsinya",
		client = {
			image = "security_card_01.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Telepon yang sangat mahal",
		client = {
			image = "iphone.png",
		}
	},

	["visa"] = {
		label = "Kartu Visa",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa dapat digunakan melalui ATM",
		client = {
			image = "visacard.png",
		}
	},

	["gatecrack"] = {
		label = "Retak gerbang",
		weight = 0,
		stack = true,
		close = true,
		description = "Perangkat lunak yang berguna untuk merobohkan beberapa pagar",
		client = {
			image = "usb_device.png",
		}
	},

	["markedbills"] = {
		label = "Uang yang Ditandai",
		weight = 1000,
		stack = false,
		close = true,
		description = "Uang?",
		client = {
			image = "markedbills.png",
		}
	},

	["weed_nutrition"] = {
		label = "Pupuk Tanaman",
		weight = 2000,
		stack = true,
		close = true,
		description = "Nutrisi tanaman",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["grape"] = {
		label = "Anggur",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh enak, anggur",
		client = {
			image = "grape.png",
		}
	},

	["cleaningkit"] = {
		label = "Perlengkapan Pembersihan",
		weight = 250,
		stack = true,
		close = true,
		description = "Kain mikrofiber yang diberi sedikit sabun akan membuat mobil Anda berkilau kembali!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "Saya suka fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["firstaid"] = {
		label = "Pertolongan pertama",
		weight = 2500,
		stack = true,
		close = true,
		description = "Anda dapat menggunakan kotak P3K ini untuk membuat orang kembali berdiri",
		client = {
			image = "firstaid.png",
		}
	},

	["weed_white-widow"] = {
		label = "Janda Putih Gulma 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Kantong gulma dengan 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["whiskey"] = {
		label = "Wiski",
		weight = 500,
		stack = true,
		close = true,
		description = "Untuk semua yang haus di luar sana",
		client = {
			image = "whiskey.png",
		}
	},

	["steel"] = {
		label = "Baja",
		weight = 100,
		stack = true,
		close = false,
		description = "Sepotong logam bagus yang mungkin bisa Anda gunakan untuk sesuatu",
		client = {
			image = "steel.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Perangkat Perbaikan Tingkat Lanjut",
		weight = 4000,
		stack = true,
		close = true,
		description = "Kotak peralatan bagus berisi barang-barang untuk memperbaiki kendaraan Anda",
		client = {
			image = "advancedkit.png",
		}
	},

	["harness"] = {
		label = "Tali Kekang Balap",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness jadi tidak peduli apa yang Anda tetap di dalam mobil",
		client = {
			image = "harness.png",
		}
	},

	["rubber"] = {
		label = "Karet",
		weight = 100,
		stack = true,
		close = false,
		description = "Karet, saya yakin Anda bisa membuat bebek karet sendiri dengannya :D",
		client = {
			image = "rubber.png",
		}
	},

	["goldbar"] = {
		label = "Emas batangan",
		weight = 7000,
		stack = true,
		close = true,
		description = "Terlihat cukup mahal bagi saya",
		client = {
			image = "goldbar.png",
		}
	},

	["tunerlaptop"] = {
		label = "Chip Tuner",
		weight = 2000,
		stack = false,
		close = true,
		description = "Dengan tunerchip ini Anda bisa mendapatkan steroid pada mobil Anda... Jika Anda tahu apa yang Anda lakukan",
		client = {
			image = "tunerchip.png",
		}
	},

	["repairkit"] = {
		label = "Perlengkapan Perbaikan",
		weight = 2500,
		stack = true,
		close = true,
		description = "Kotak peralatan bagus berisi barang-barang untuk memperbaiki kendaraan Anda",
		client = {
			image = "repairkit.png",
		}
	},

	["drill"] = {
		label = "Mengebor",
		weight = 20000,
		stack = true,
		close = false,
		description = "Masalah sebenarnya...",
		client = {
			image = "drill.png",
		}
	},

	["aluminumoxide"] = {
		label = "Bubuk Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Beberapa bubuk untuk dicampur",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Laptop mahal",
		client = {
			image = "laptop.png",
		}
	},

	["binoculars"] = {
		label = "Teropong",
		weight = 600,
		stack = true,
		close = true,
		description = "Perusak Licik...",
		client = {
			image = "binoculars.png",
		}
	},

	["coke_brick"] = {
		label = "Bata Kokas",
		weight = 1000,
		stack = false,
		close = true,
		description = "Paket kokain yang berat, kebanyakan digunakan untuk bertransaksi dan memakan banyak tempat",
		client = {
			image = "coke_brick.png",
		}
	},

	["security_card_02"] = {
		label = "Kartu Keamanan B",
		weight = 0,
		stack = true,
		close = true,
		description = "Kartu keamanan... Entah apa fungsinya",
		client = {
			image = "security_card_02.png",
		}
	},

	["copper"] = {
		label = "Tembaga",
		weight = 100,
		stack = true,
		close = false,
		description = "Sepotong logam bagus yang mungkin bisa Anda gunakan untuk sesuatu",
		client = {
			image = "copper.png",
		}
	},

	["driver_license"] = {
		label = "Surat izin Mengemudi",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["lawyerpass"] = {
		label = "Lulus Pengacara",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Kabut ungu 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerk Permen",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["tosti"] = {
		label = "Sandwich keju bakar",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["sandwich"] = {
		label = "Roti Berlapis",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["goldchain"] = {
		label = "Rantai Emas",
		weight = 1500,
		stack = true,
		close = true,
		description = "Rantai emas tampak seperti jackpot bagi saya!",
		client = {
			image = "goldchain.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "Benih gulma AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["diamond"] = {
		label = "Berlian",
		weight = 1000,
		stack = true,
		close = true,
		description = "Berlian tampak seperti jackpot bagi saya!",
		client = {
			image = "diamond.png",
		}
	},

	["glass"] = {
		label = "Kaca",
		weight = 100,
		stack = true,
		close = false,
		description = "Ini sangat rapuh, hati-hati",
		client = {
			image = "glass.png",
		}
	},

	["cryptostick"] = {
		label = "Tongkat Kripto",
		weight = 200,
		stack = false,
		close = true,
		description = "Mengapa ada orang yang membeli uang yang tidak ada.. Berapa banyak isinya..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["grapejuice"] = {
		label = "Jus anggur",
		weight = 200,
		stack = true,
		close = false,
		description = "Jus anggur dikatakan menyehatkan",
		client = {
			image = "grapejuice.png",
		}
	},

	["xtcbaggy"] = {
		label = "Tas XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Keluarkan pil itu sayang",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips Untuk Perjudian Kasino",
		client = {
			image = "casinochips.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Perangkat lunak yang berguna untuk mematikan beberapa sistem",
		client = {
			image = "usb_device.png",
		}
	},

	["firework2"] = {
		label = "Kembang Api2",
		weight = 1000,
		stack = true,
		close = true,
		description = "Kembang Api",
		client = {
			image = "firework2.png",
		}
	},

	["screwdriverset"] = {
		label = "Set Obeng",
		weight = 1000,
		stack = true,
		close = false,
		description = "Sangat berguna untuk mengencangkan... sekrup...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["diving_gear"] = {
		label = "Perlengkapan Selam",
		weight = 30000,
		stack = false,
		close = true,
		description = "Tangki oksigen dan rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["firework4"] = {
		label = "Kembang Api4",
		weight = 1000,
		stack = true,
		close = true,
		description = "Kembang Api",
		client = {
			image = "firework4.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Telepon yang sangat mahal",
		client = {
			image = "samsungphone.png",
		}
	},

	["kurkakola"] = {
		label = "Coca Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "Untuk semua yang haus di luar sana",
		client = {
			image = "cola.png",
		}
	},

	["newsbmic"] = {
		label = "Mikrofon Boom",
		weight = 100,
		stack = false,
		close = true,
		description = "BoomMic yang Dapat Digunakan",
		client = {
			image = "newsbmic.png",
		}
	},

	["labkey"] = {
		label = "kunci Laboratorium",
		weight = 500,
		stack = false,
		close = true,
		description = "Kunci untuk gembok...?",
		client = {
			image = "labkey.png",
		}
	},

	["electronickit"] = {
		label = "PERANGKAT ELEKTRONIK",
		weight = 100,
		stack = true,
		close = true,
		description = "Jika Anda selalu ingin membuat robot, Anda mungkin bisa memulainya dari sini. Mungkin Anda akan menjadi Elon Musk yang baru?",
		client = {
			image = "electronickit.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks untuk penyembuhan dan penghilang stres yang lengkap.",
		client = {
			image = "ifaks.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Sepotong logam bagus yang mungkin bisa Anda gunakan untuk sesuatu",
		client = {
			image = "aluminum.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Benih Kabut Ungu",
		weight = 0,
		stack = true,
		close = true,
		description = "Benih gulma Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["firework3"] = {
		label = "Memusnahkan",
		weight = 1000,
		stack = true,
		close = true,
		description = "Kembang Api",
		client = {
			image = "firework3.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ini juga dikenal sebagai karang pilar",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "Kantong gulma dengan 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},
}