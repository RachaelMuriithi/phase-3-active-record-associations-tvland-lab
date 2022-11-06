class Network < ActiveRecord::Base
  has_many :shows
  def sorry
    actor = Actor.find_or_create_by(first_name: "John", last_name: "Mulaney")
    "We're sorry about passing on #{actor.full_name}'s pilot"
  end
end
