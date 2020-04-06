justin = User.create(username: "JB", email: "jb@outlook.com", password: "jb")
david = User.create(username: "david123", email: "david_malan@harvard.edu", password: "dm")

hulu = Bill.create(provider: "Hulu", balance: 7.99, duedate: "04/05/2020", paid?: false)
netflix = Bill.create(provider: "Netflix", balance: 9.99, duedate: "04/20/2020", paid?: false)
att = Bill.create(provider: "AT&T", balance: 9.99, duedate: "04/20/2020", paid?: false)

freedom_credit_card = Creditcard.create(name: "Freedom Unlimited", balance: 100.0, credit: 1000.0, duedate: "04/05/2020", intrest_rate: "12%")
simplicity_credit_card = Creditcard.create(name: "Simplicity", balance: 100.0, credit: 2000.0, duedate: "04/05/2020", intrest_rate: "12%")

chase_bank = Bank.create(name: "Chase Bank", url: "chase.com")
capitalone_bank = Bank.create(name: "Capital One", url: "chase.com")
chase_bank = Bank.create(name: "Chase Bank", url: "chase.com")
chase_bank = Bank.create(name: "Chase Bank", url: "chase.com")
