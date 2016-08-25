# Game of Thrones Community

This website is a paradise for all the GOT fans.

Building >>>>>>


House.create(name:"Stark",motto:"Winter is coming",background_image:"http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-stark-1024x1024@2x.jpg",family_tree_image:"link",history_description:"The leading house of the north")

HouseBio.create(content:"Robb",house_id:"3")

HouseImage.create(link:"http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-stark-1024x1024@2x.jpg",house_id:"3")

HouseBadge.create(image:"http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-targaryen-1024x1024@2x.jpg",house_id:"1")

HouseStory.create(content:"They have many dragons",house_id:"1")

User.create(email:"us@gmail.com",password:"134251",password_confirmation:"134251",house_id:3,honor:0,profile_pic:"link")

Question.create(user_id:4,content:"How many people left in House Stark?")

Category.create(name:"Tv series")

Feed.create(image:"link",content:"",vote_number:0)




FeedVote.create(image:"link",user_id:1,feed_id:2)
