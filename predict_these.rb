require_relative 'possible_emails.rb'

margaery = PossibleEmails.new("Margaery Tyrell", "ironthrone.com")
theon = PossibleEmails.new("Theon Greyjoy", "direwolves.com")
alayne = PossibleEmails.new("Alayne Stone", "littlefinger.com")
jack = PossibleEmails.new("Jack Qyburn", "citadel.gov")

margaery.predict
theon.predict
alayne.predict
jack.predict

