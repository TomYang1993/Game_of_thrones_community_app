User.create!([
  {email: "tomyang@gmail.com", encrypted_password: "$2a$11$WGfWZyZ.lNeGd/LhWLtwxO2CwahndySmBL7jUDJYnibGgpGcxysFi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, house_id: 1, honor: 0, profile_pic: "link"},
  {email: "ty@gmail.com", encrypted_password: "$2a$11$UCPuYXRp2O0MBLIfCuUWJ.BO/wvHrzgR0ZR0UpCQm45C1D1L9AEMi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, house_id: 1, honor: 0, profile_pic: "link"},
  {email: "yt@gmail.com", encrypted_password: "$2a$11$AQjLrCFjLcAq8WAizuAwRu0X6iZsaerIbCK64PfKPrtizeD8EUroa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, house_id: 1, honor: 0, profile_pic: "link"},
  {email: "ht@gmail.com", encrypted_password: "$2a$11$PH29vYWh6.r0yjY3ykk/1uXkaoYyejUX/MjhTS4u8fhoRn7glAbjS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, house_id: 2, honor: 0, profile_pic: "link"},
  {email: "user@gmail.com", encrypted_password: "$2a$11$QGBbpXO2Gaji.Q9xbBkb0.HFq0KqXlz7wOVGsoUUr76/4oOqYzt/W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, house_id: 1, honor: 0, profile_pic: "link"},
  {email: "us@gmail.com", encrypted_password: "$2a$11$LJ4.C4Yb1..RBvm/GxglWOpa86W6Ty2Az3RhjuG6ikfsLahDKjNhu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, house_id: 3, honor: 0, profile_pic: "link"}
])
Answer.create!([
  {user_id: 1, question_id: 1, content: "3 I guess"},
  {user_id: 2, question_id: 1, content: "4 I guess"},
  {user_id: 6, question_id: 2, content: "3 left i think "},
  {user_id: 4, question_id: 1, content: "You guys are crazy "},
  {user_id: 2, question_id: 2, content: "will be no more left "},
  {user_id: 3, question_id: 1, content: "It should be 9 cause "}
])
Category.create!([
  {name: "Tv series"},
  {name: "Fan"},
  {name: "Fan"},
  {name: "Author"},
  {name: "interview"}
])
Feed.create!([
  {image: "link", content: "", vote_number: 0},
  {image: "link", content: "", vote_number: 0},
  {image: "link", content: "", vote_number: 0},
  {image: "link", content: "", vote_number: 0},
  {image: "link", content: "", vote_number: 0}
])
FeedCategory.create!([
  {feed_id: 2, category_id: 2},
  {feed_id: 1, category_id: 2},
  {feed_id: 3, category_id: 1},
  {feed_id: 4, category_id: 3},
  {feed_id: 5, category_id: 3}
])
FeedVote.create!([
  {user_id: 1, feed_id: 2, image: "link"},
  {user_id: 4, feed_id: 2, image: "link"},
  {user_id: 5, feed_id: 2, image: "link"},
  {user_id: 1, feed_id: 4, image: "link"},
  {user_id: 2, feed_id: 4, image: "link"},
  {user_id: 3, feed_id: 4, image: "link"}
])
House.create!([
  {name: "Targaryen", motto: "fire and blood", background_image: "http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-targaryen-1024x1024@2x.jpg", family_tree_image: "link", history_description: "Over the sea"},
  {name: "Baratheon", motto: "Ours is the fury", background_image: "http://assets.viewers-guide.hbo.com/larges2-houses-rgb-sigil-avatar-house-baratheon-joffrey-1024x1024@2x.jpg", family_tree_image: "link", history_description: "Founded after the"},
  {name: "Stark", motto: "Winter is coming", background_image: "http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-stark-1024x1024@2x.jpg", family_tree_image: "link", history_description: "The leading house of the north"}
])
HouseBadge.create!([
  {house_id: 3, image: "http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-stark-1024x1024@2x.jpg"},
  {house_id: 2, image: "http://assets.viewers-guide.hbo.com/larges2-houses-rgb-sigil-avatar-house-baratheon-stannis-1024x1024@2x.jpg"},
  {house_id: 1, image: "http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-targaryen-1024x1024@2x.jpg"}
])
HouseBio.create!([
  {house_id: 1, content: "Viserys"},
  {house_id: 1, content: "Daenerys"},
  {house_id: 2, content: "Robert"},
  {house_id: 2, content: "Renly"},
  {house_id: 2, content: "Stannis"},
  {house_id: 3, content: "Robb"},
  {house_id: 3, content: "Arya"},
  {house_id: 3, content: "Sansa"}
])
HouseImage.create!([
  {house_id: 1, link: "http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-targaryen-1024x1024@2x.jpg"},
  {house_id: 2, link: "http://assets.viewers-guide.hbo.com/larges2-houses-rgb-sigil-avatar-house-baratheon-joffrey-1024x1024@2x.jpg"},
  {house_id: 3, link: "http://assets.viewers-guide.hbo.com/larges1-houses-rgb-sigil-avatar-house-stark-1024x1024@2x.jpg"}
])
HouseStory.create!([
  {house_id: 3, content: "Everybody dies in this family"},
  {house_id: 2, content: "King?"},
  {house_id: 1, content: "They have many dragons"}
])
Question.create!([
  {user_id: 2, content: "How many dragons do Daenerys have?"},
  {user_id: 4, content: "How many people left in House Stark?"}
])
Story.create!([
  {title: "A", content: "", image: "link"},
  {title: "B", content: "", image: "link"},
  {title: "C", content: "", image: "link"}
])
StoryLike.create!([
  {user_id: 1, story_id: 1, image: "link"},
  {user_id: 2, story_id: 1, image: "link"},
  {user_id: 2, story_id: 2, image: "link"},
  {user_id: 2, story_id: 3, image: "link"},
  {user_id: 4, story_id: 3, image: "link"}
])
UserStory.create!([
  {user_id: 2, story_id: 1},
  {user_id: 1, story_id: 1},
  {user_id: 1, story_id: 2},
  {user_id: 3, story_id: 2},
  {user_id: 4, story_id: 2},
  {user_id: 2, story_id: 3},
  {user_id: 5, story_id: 3},
  {user_id: 6, story_id: 3}
])
