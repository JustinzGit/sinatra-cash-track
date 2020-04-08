Bank.create(name: "Bank of America", url: "bankofamerica.com")
Bank.create(name: "Capital One", url: "capitalone.com")
Bank.create(name: "Citibank", url: "online.citi.com")
Bank.create(name: "Wells Fargo", url: "wellsfargo.com")
Bank.create(name: "Chase", url: "chase.com")
Bank.create(name: "BB&T", url: "bbt.com")

# justin = User.create(username: "JB", email: "jb@outlook.com", password: "jb")
# david = User.create(username: "david123", email: "david_malan@harvard.edu", password: "dm")
#
# hulu = Bill.create(provider: "Hulu", balance: 7.99, duedate: "04/05/2020", paid?: false)
# netflix = Bill.create(provider: "Netflix", balance: 9.99, duedate: "04/20/2020", paid?: false)
# att = Bill.create(provider: "AT&T", balance: 9.99, duedate: "04/20/2020", paid?: false)
#
# sapphire_credit_card = Creditcard.create(name: "Chase Sapphire", balance: 100.0, credit: 1000.0, duedate: "04/05/2020", intrest_rate: "12%")
# platinum_credit_card = Creditcard.create(name: "Platinum", balance: 100.0, credit: 2000.0, duedate: "04/05/2020", intrest_rate: "12%")
#
# # Code below used to test associations
# # User can have many bills
# justin.bills << hulu
# justin.bills << att
# david.bills << netflix
#
# # User can have many banks
# justin.banks << chase_bank
# justin.banks << capitalone_bank
#
# # User can have many credit cards
# justin.creditcards << sapphire_credit_card
#
# # User can associate a credit card to a bank
# justins_sapphire = Creditcard.find_by(name: "Chase Sapphire", user_id: justin.id)
# chase_Bank = Bank.find_by(name: "Chase Bank")
# chase_Bank.creditcards << justins_sapphire
