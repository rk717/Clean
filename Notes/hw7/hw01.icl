module hw01
import StdEnv

:: Month = January | February | March | April | May | June | July | August | September | October | November | December
:: Gender = Male | Female | AttackHelicopter | Nghia
:: Date = {year::Int, month::Month, day::Int}
:: Person = {name::String, gender::Gender, age::Int, birthday::Date, isDead::Bool}
:: Account = {number::Int, owner::Person, balance::Real, dateCreated::Date}

Tringa :: Person
Tringa = {name = "Tringa", gender = Female, age = 42, birthday = {year = 1977, month = May, day = 12}, isDead = False}
Hossam :: Person
Hossam = {name = "Hossam", gender = AttackHelicopter, age = 69, birthday = {year = 1950, month = June, day = 27}, isDead = False}
Nicola :: Person
Nicola = {name = "Nicola", gender = Male, age = 9001, birthday = {year = -6982, month = January, day = 1}, isDead = True}
Zuka :: Person
Zuka = {name = "Zuka", gender = Male, age = 20, birthday = {year = 1999, month = February, day = 11}, isDead = False}
LeMinhNghia :: Person
LeMinhNghia = {name = "Nghia", gender = Nghia, age = 420, birthday = {year = 1599, month = February, day = 4}, isDead = True}

A00 :: Account
A00 = {number = 0, owner = Nicola, balance = 9000.01, dateCreated = {year = 1945, month = August, day = 6}}

A01 :: Account
A01 = {number = 1, owner = Hossam, balance = -1337.42, dateCreated = {year = 1900, month = December, day = 25}}

A02 :: Account
A02 = {number = 2, owner = Tringa, balance = 123.45, dateCreated = {year = 2010, month = May, day = 12}}

A03 :: Account
A03 = {number = 3, owner = Zuka, balance = 35.0, dateCreated = {year = 2019, month = November, day = 11}}

A420 :: Account
A420 = {number = 420, owner = LeMinhNghia, balance = 420.0, dateCreated = {year = 420, month = April, day = 20}}

SittBank :: [Account]
SittBank = [A00,A01,A02,A03]

/*
Write a function that takes an Int and a
list of Accounts updates each Account
in the list by adding the number to the balance.
*/
add :: Real Account -> Account
add num myaccount =: {balance = a}
= {myaccount & balance = a + num }

gimmeMoney :: [Account] Real-> [Account]
gimmeMoney mylist num
= [add num acc  \\ acc <- mylist]
Start = gimmeMoney SittBank 1000000.0 //[(Account 0 (Person "Nicola" Male 9001 (Date -6982 January 1) True) 1009000.01 (Date 1945 August 6)),(Account 1 (Person "Hossam" AttackHelicopter 69 (Date 1950 June 27) False) 998662.58 (Date 1900 December 25)),(Account 2 (Person "Tringa" Female 42 (Date 1977 May 12) False) 1000123.45 (Date 2010 May 12)),(Account 3 (Person "Zuka" Male 20 (Date 1999 February 11) False) 1000035 (Date 2019 November 11))]