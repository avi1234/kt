class CommonHelpers

	def self.load_data
		u1 = User.create name:"John43", email:"j5422@hotmail.com"
		u2 = User.create name:"falncy_rest", email:"billd@yahoo.com"
		u3 = User.create name:"DonnaGoor", email:"dgooril@hotmail.com"
		u4 = User.create name:"Candy_brencher", email:"kb@kbweb.com"
		u5 = User.create name:"Jeff_Burstein", email:"burstain@mekdy.com"

		p1 = Place.create name: "BBB Burger", lo: 6.333321, la: 5.321111, avg_stars: 2.5
		p2 = Place.create name: "Japanika", lo: 6.333321, la: 5.321111, avg_stars: 2.5
		p3 = Place.create name: "Beneddict", lo: 6.333321, la: 5.321111, avg_stars: 4
		p4 = Place.create name: "Moon Sushi Bar", lo: 6.333321, la: 5.321111, avg_stars: 4.5

		t1 = Tick.create comment:"Great food and service, u must try the hot role", :stars=> 4, user:u3, place:p2
		t2 = Tick.create comment:"I love this place. It's cozy to the point that yes, everyone is a bit squished in.", :stars=> 3, user:u2, place:p1
		t3 = Tick.create comment:"This is for the J.P location. App was B grade (Sausage excellent, cabbage mostly burnt), main was A- grade",:stars=>2, user:u1, place:p4
		t4 = Tick.create comment:"I have eaten here five times in the past year and the most recent two times (November and February) have not been up to previous standards",:stars=>5, user:u4, place:p3
		t5 = Tick.create comment:"I highly recommend Ten Tables. As soon as we walked in the door we were greeted warmly by the hostess.",:stars=>1, user:u5, place:p3
		t6 = Tick.create comment:"Fantastic food, service, and wine list. The steak is out of this world. The chocolate dessert is also incredible.",:stars=>4, user:u4, place:p1
		t7 = Tick.create comment:"Spectacular! The food was creative and delicious.", :stars=>3, user:u5, place:p2
		t8 = Tick.create comment:"Amazing very clever food. You can really tell that everything is so fresh. How this place didn't have a three waiting list I just dont know",:stars=>3, user:u3, place:p4
	end
end