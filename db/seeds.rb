Plant.create ([
	{id: 1, name: "Basil", sname: "Ocimum basilicum", care: "Basil hates pepper.  It LOVES cinnamon.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=basil+seeds+non+gmo&tag=googhydr-20&index=aps&hvadid=153662934648&hvpos=1t2&hvnetw=g&hvrand=591819134585697497&hvpone=&hvptwo=&hvqmt=b&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-128470237216&ref=pd_sl_ed9spokju_b", size: 1, image: File.new("#{Rails.root}/app/assets/images/basil.jpg")},
	{id: 2, name: "Mint", sname: "Mentha", care: "Mint spreads like fire.", water: 7, sale: "https://www.amazon.com/s/?ie=UTF8&keywords=mint+seeds&tag=googhydr-20&index=aps&hvadid=205124813430&hvpos=1t1&hvnetw=g&hvrand=7357400104974845132&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9004091&hvtargid=kwd-329307170&ref=pd_sl_5egrd79ae4_e", size: 1, image: File.new("#{Rails.root}/app/assets/images/mint.jpg")}
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
