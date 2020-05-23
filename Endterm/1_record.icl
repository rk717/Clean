module 1_record
import StdEnv

//这是一个tuple，order顺序是重要的
myBirthday :: (Int, String, Int)
myBirthday = (2000, "April", 01)
Start = snd3 myBirthday  //"April"

yourBirthday :: (String, Int, Int)
yourBirthday = ("April", 01, 2000)
Start = snd3 yourBirthday //1

//我们来做一个redcord，order顺序是重要的
:: Date = {
    year :: Int,
    month :: String,
    day :: Int
}
evanBday :: Date
evanBday = {year = 2000, month = "April", day = 1}
Start = evanBday //(Date 2000 "April" 1)


/////////////////////////
:: Person = {
    name :: String,
    favoriteColor :: [String],
    myBirthday :: Date,
    isSingle :: Bool
}
Evan :: Person
Evan = {birthday = evanBday, favoriteColor = ["Red", "Blue", "Green"], name = "Evan", isSingle = True}
Start = Evan //(Person "Evan" ["Red", "Blue", "Green"] (Date 2000 "April" 1) True)

Start = Evan.birthday.month  //"April"
Start = hd Evan.favoriteColor //"Red"

////////////////////////
//Record with flexible type

:: Point SomeType = {x::a, y::a, z::a}

p1 :: (Point Int)
p1 = {x=1, y=2, z=3}
Start = p1 //(Point 1 2 3)

p2 :: (Point Real)
p2 = {x=1.234, y=2.345, z=3.456}
Start = p2 //(Point 1.234, 2.345, 3.456)

p3 = {x=True, y=False, z=True}
Start = p3 //(Point True False True)

//////////////////////////////////////////

:: WeirdRecord a b c d e f = {x::(a,b),
                              y::[c],
                              z::e,
                              s::a,
                              r::Bool}
wr = {x("Evan", 41.343), y=[3,5,6,3,5], z="Hello", s="Bye", r=True}
Start = wr //(WeirdRecord ("Evan", 41.343) [3,5,6,3,5] "Hello" "Bye" True)

/////////////////////
getBirthMonth :: Person -> String
getBirthMonth p = p.birthday.month  //这个是最常用的
// getBirthMonth {birthday = b} = b.month
// getBirthMonth {birthday = {month = m}} = m


Start = getBirthMonth Evan //"April"

////////////////////////////
//更改record里面的值

updateSingleStatus :: Person -> Person
updateSingleStatus p = {p & isSingle = not p.isSingle}

Start = updateSingleStatus Evan //(Person "Evan" ["Red", "Blue", "Green"] (Date 2000 "April" 1) False)

////////////////////////////////////////
updateColors :: Person -> Person
updateColors p
| p.isSingle = {
    p & isSingle = not p.isSingle,
    favoriteColor = p.favoriteColor ++ ["White"]
    }
={p & isSingle = not p.isSingle, favoriteColor = []}

Start = updateColors Evan //(Person "Evan" ["Red", "Blue", "Green", "White"] (Date 2000 "April" 1) False)

Start = updateColors (updateSingleStatus Evan) //(Person "Evan" [] (Date 2000 "April" 1) True)

/////////////////////////////////////////////////////
//如何判断两个 record 变量是否相同

instance == Person
where
    (==)p1 p2 = p1.name == p2.name && p1.isSingle == p2.isSingle
    // (==) {name = n1} {name = n2} = n1 == n2

Start = Evan == Evan //True

////////////////////
instance == Date where (==) {day=d1, year=y1, month=m1} {day=d2, year=y2, month=m2} = d1==d2 && y1==y2 && m1==m2
