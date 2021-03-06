json.array! @questions.each do |question|
  json.id question.id
  json.user_id question.user_id
  json.content question.content
  json.answers question.answers.order(created_at: :desc).each do |answer|
    json.id answer.id
    json.content answer.content
    json.question_id answer.question_id
    json.user_id answer.user_id
    json.profile_pic answer.user.house.housepages.first.image
    
  end
end
