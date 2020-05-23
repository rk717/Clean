module array
import StdEnv

something :: {Int}
something = {1,2,3,4,5}

Start = something //{1,2,3,4,5}

Start = something.[2] //3   get us the index 2 element

/////////////////
blah :: {Int}
blah = {x \\ x<-[1..100] | isOdd x}
Start = blah //{1,3,5...99}

//////////////////////
lol :: {Int}
lol = {x \\ x<-: blah | x > 50}
//{51,53...99}

//string is actually #(char)

/////////////
myname = "Evan"
initial :: String -> Char
initial x = x.[0]

Start = initial myname //"E"
Start = size myname // 4
////////////////////////////

reversString :: String -> String
reversString x = l
where
    l = [elem \\ elem <-: x]  //built a list from an array
    m = reverse l
    result = {elem \\ elem <- m} //construct an array from a list

Start :: String
Start = reversString myName  //"navE"
//////////////////////////////////////////////////
//given an array of strings, filter out the ones that are palindromes
myArr :: {String}
myArr = {"racecar", "hello", "mmmmm", "blah", ""}

Start = myArr.[1].[(size myArr.[1])-1]
//'o'
////////////////////////////////////

isPal :: String -> Bool
isPal x = l == reverse l
where
    l = [e\\e<-:x]

Start = isPal "raccer" //False

////////////////////
palList :: {String} -> {String}
palList myArr = {aString \\ aString <-: myArr | isPal aString}

Start = palList myArr //{"racecar", "mmmmm", ""}

//////////////////////////////

palList :: {String} -> {String}
palList myArr = {aString \\ aString <-: myArr | isPal aString && size aString < 10 && size aString > 0}
Start = palList myArr //{"racecar"}

///////////////////////////////
//查看一个数字是不是palidrome
isPalindrom :: Int -> Bool
isPalindrom x = l == reverse l
where
    arr = toString x
    l = [e\\e<-:arr]
Start = isPalindrom 123454321 //True

//////////////////////////////////////

numDigits :: Int -> Int
numDigits x = size (toString x)
Start = numDigits 23456789 //8


/////////////////////////////////
// Typealias

:: myType :== Int

func :: myType -> Int 
func x = inc x

func2 :: myType -> Bool
func2 x = x > zero

Start = func2 2 //True
///////////////////////////////////
//bag

:: StupidType :== {Int, String}
func3 :: (Int, String) -> String
func3 (a,b) = b

Start = func3 (4567, "hello")  // "hello"
////////////////////////
myReverse :: MyListType -> MyListType
myReverse x = reverse x

////////////////////
String :== #{Char}
