Plant.create ([
	{id: 1, name: "Basil", sname: "Ocimum basilicum", care: "Basil likes full sun and moist, nutrient-rich, well-drained soil.  It benefits from regular harvesting; every time a branch has six to eight leaves, repeat pruning the branches back to their first set of leaves.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=basil+seeds+non+gmo&tag=googhydr-20&index=aps&hvadid=153662934648&hvpos=1t2&hvnetw=g&hvrand=591819134585697497&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-128470237216&ref=pd_sl_ed9spokju_b", size: 1, image: File.new("#{Rails.root}/app/assets/images/basil.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 2, name: "Mint", sname: "Mentha", care: "Mint thrives in light soil with good drainage.  While mint can be started with seeds, you can alternatively propogate it by taking 6-inch cuttings of rooted stems and plant them horizontally in the soil. Mint stems will also root in a glass of water.  Most varieties prefer full sun and will tolerate some shade, but some may require protection from direct sunlight.  Mint is notorious for growing and spreading quickly, so be sure to pick and prune regularly.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=mint+seeds&tag=googhydr-20&index=aps&hvadid=205124813430&hvpos=1t1&hvnetw=g&hvrand=7357400104974845132&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-329307170&ref=pd_sl_5egrd79ae4_e", size: 1, image: File.new("#{Rails.root}/app/assets/images/mint.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 3, name: "Chives", sname: "Allium schoenoprasum", care: "Chives like full sun, making them ideal windowsill plants.  They should be watered when the soil is dry to the touch on the top. Low dose fertilization is recommended for growing chives indoors.", water: 4, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=chive+seeds&tag=googhydr-20&index=aps&hvadid=174259961752&hvpos=1t1&hvnetw=g&hvrand=14094736068175215289&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-70909061&ref=pd_sl_1bpv5ydhbh_b", size: 2, image: File.new("#{Rails.root}/app/assets/images/chives.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 4, name: "Cilantro", sname: "Coriandrum sativum", care: "Cilantro likes sunny places with full morning sun and dappled afternoon sunlight.  Water seedlings regularly (about an inch of water per week), until the plants are established.  At this point, plants grow quickly; keep them moist, but be careful not to overwater them.", water: 4, sale: "https://www.amazon.com/s/ref=nb_sb_ss_i_2_8?url=search-alias%3Dlawngarden&field-keywords=cilantro+seeds+for+planting&sprefix=cilantro%2Clawngarden%2C121&crid=EWY0V8N4XSVJ", size: 0, image: File.new("#{Rails.root}/app/assets/images/cilantro.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 5, name: "Oregano", sname: "Origanum", care: "Oregano loves full sun.  Regular trimming is encouraged, and keep in mind that oregano doesn’t need as much water as some other herbs.  Water when the soil feels dry to the touch; it’s best to water thoroughly (till water comes out of the drainage holes in the bottom of your container) and less often.", water: 3, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=oregano+seeds+non+gmo&tag=googhydr-20&index=aps&hvadid=178766014533&hvpos=1t1&hvnetw=g&hvrand=9601466500736507387&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-145292646765&ref=pd_sl_lrx77f53i_b", size: 1, image: File.new("#{Rails.root}/app/assets/images/oregano.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 6, name: "Parsley", sname: "Petroselinum crispum", care: "Parsley loves direct sunlight; turn the container every three or four days so that the plant doesn’t lean into the sun.  Keep it in a humid environment or mist with water regularly.  Water the pot regularly to keep the soil moist to the touch but not soggy, and it may be necessary to feed it every 2 weeks with half-strength liquid fertilizer.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=italian+parsley+seeds&tag=googhydr-20&index=aps&hvadid=153656153504&hvpos=1t2&hvnetw=g&hvrand=11635779241463892820&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-247620461&ref=pd_sl_3i4jftavzc_b", size: 0, image: File.new("#{Rails.root}/app/assets/images/parsley.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 7, name: "Rosemary", sname: "Rosmarinus officinalis", care: "Rosemary is a perennial evergreen shrub that loves full sun.  While not always a large plant, it can grow to a large size (up to 4 feet) if not trimmed.  Only water the soil when the top of the soil is dry to the touch, but never let the soil dry out completely. In the winter, rosemary plants grow much more slowly and need much less water than they do in the summer.  Be sure to plant in a container that has plenty of drainage.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=rosemary+seeds&tag=googhydr-20&index=aps&hvadid=205144134606&hvpos=1t1&hvnetw=g&hvrand=13793742337360526724&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-70908741&ref=pd_sl_8w9itftmzl_b", size: 0, image: File.new("#{Rails.root}/app/assets/images/rosemary.jpg"), edible: true, herb: true, fruitveg: false},
	{id: 8, name: "Arugula", sname: "Eruca sativa", care: "Arugula does well in the cooler temperatures of early spring and fall.  An ideal window plant, it likes sun and won’t grow larger than 2 feet unless left untrimmed.  Leaves can be picked and eaten directly from the plant; deeper soil will create longer leaves.  Carefully (gently)  water the plants regularly so that the soil remains moist but not soggy.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=baby+arugula+seeds&tag=googhydr-20&index=aps&hvadid=153723766787&hvpos=1t3&hvnetw=g&hvrand=16190922523839826374&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-30964745432&ref=pd_sl_7d6xuoviwb_b", size: 1, image: File.new("#{Rails.root}/app/assets/images/arugula.jpg"), edible: true, herb: false, fruitveg: true},
	{id: 9, name: "Meyer Lemon", sname: "Citrus × meyeri", care: "Believed to be a cross between a lemon tree and an orange tree, Meyer Lemon trees are surpringly suitable to being indoor plants because of their relatively small size and easy maintenance.  While it’s possible to grow a Meyer Lemon tree from seeds, the easiest way to grown one indoors is probably by starting with a small tree.  It likes full, direct sunlight (perfect for windows), and cool temperatures, around 60 degrees Fahrenheit.  Check the soil for dampness every other day. If the surface soil seems dry, check to a depth of 3 inches. If the soil is damp, wait another day to water the soil. If the soil is dry, give the plant 4 to 6 cups of water and recheck the soil; if it’s still not damp below 3 inches, add 2 more cups of water and check again.", water: 3, sale: "https://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Dlawngarden&field-keywords=meyer+lemon+tree", size: 3, image: File.new("#{Rails.root}/app/assets/images/lemon.jpg"), edible: true, herb: false, fruitveg: true},
	{id: 10, name: "Succulents", sname: "Varied", care: "While not edible, succulents are renowned for their uniqueness, hardiness, and air-purifying qualities.  They take up minimal space and love full, direct sunlight.  For growing succulents indoors, it’s easier to start with plants rather than seeds.  Even though they’re low-maintenance, they can be killed by overwatering; make sure to only water them when the soil is completely dry.  Keep in containers with plenty of drainage, and when you do water them, apply enough so that it runs out drainage holes (but don’t let them sit in the leftover water).", water: 1, sale: "https://www.amazon.com/s/ref=nb_sb_ss_i_1_6?url=search-alias%3Dlawngarden&field-keywords=succulent+plants&sprefix=succul%2Cundefined%2C124&crid=E84O2LGJLQA8", size: 0, image: File.new("#{Rails.root}/app/assets/images/succulent.jpg"), edible: false, herb: false, fruitveg: false}
])

User.create ([
	{id: 1, fname: "Dennis", lname: "California", hometown: "Surf City", bio: "Yikes.", admin: true, propic: File.new("#{Rails.root}/app/assets/images/devito.png"), password: "password", email: "dennis@california.com", username: "dennis"},
	{id: 2, fname: "Katy", lname: "Pola", hometown: "New York", bio: "Stop it, Dennis.", admin: true, propic: File.new("#{Rails.root}/app/assets/images/devito2.jpg"), password: "password", email: "katyp03@gmail.com", username: "katy"},
	{id: 3, fname: "Nick", lname: "Fehlinger", hometown: "New York", bio: "REALLY, stop it, Dennis.", admin: false, propic: File.new("#{Rails.root}/app/assets/images/devito3.jpg"), password: "password", email: "nick@nick.com", username: "nick"}
])

UserPlant.create ([
	{plant_id: 1, user_id: 1},
	{plant_id: 1, user_id: 2},
	{plant_id: 2, user_id: 1},
	{plant_id: 2, user_id: 3}
])

Post.create ([
	{id: 1, user_id: 1, picture: File.new("#{Rails.root}/app/assets/images/basilpost.jpg"), caption: "Look at this lil b grow."}
	])
Comment.create ([
	{id: 1, post_id: 1, user_id: 2, body: "WOW ITS GROWN!"}
	])
