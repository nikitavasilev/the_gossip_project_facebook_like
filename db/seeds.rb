require 'faker'

def gossip_table
  20.times do
    gossip = Gossip.create!(
			anonymous_gossiper: Faker::HowIMetYourMother.character,
			title: Faker::HowIMetYourMother.catch_phrase,
			content: Faker::HowIMetYourMother.quote
			)
  end
end

def comment_table
  40.times do
		comment = Comment.create!(
			content: Faker::Community.quotes,
			anonymous_commentor: Faker::Community.characters,
			gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id)
			)
  end
end

gossip_table
comment_table