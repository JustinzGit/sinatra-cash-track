justin = User.create(username: "JB", email: "jb@outlook.com", password: "jb")
david = User.create(username: "david123", email: "david_malan@harvard.edu", password: "dm")

hulu = Bill.create(provider: "Hulu", balance: 7.99, duedate: "04/05/2020", paid?: false)
netflix = Bill.create(provider: "Netflix", balance: 9.99, duedate: "04/20/2020", paid?: false)
att = Bill.create(provider: "AT&T", balance: 9.99, duedate: "04/20/2020", paid?: false)

sapphire_credit_card = Creditcard.create(name: "Chase Sapphire", balance: 100.0, credit: 1000.0, duedate: "04/05/2020", intrest_rate: "12%")
platinum_credit_card = Creditcard.create(name: "Platinum", balance: 100.0, credit: 2000.0, duedate: "04/05/2020", intrest_rate: "12%")

chase_bank = Bank.create(name: "Chase Bank", url: "chase.com")
capitalone_bank = Bank.create(name: "Capital One", url: "chase.com")

# User can have many bills
justin.bills << hulu
justin.bills << netflix
justin.bills << att
david.bills << netflix

# User can have many banks
justin.banks << chase_bank
justin.banks << capitalone_bank

# User can have many credit cards
justin.creditcards << sapphire_credit_card

# User can associate a card to a bank
# justin_chase_bank = justin.banks.where(name: "Chase Bank")
# justin_chase_bank.creditcards << justin.creditcards.where(name: "Chase Sapphire")
