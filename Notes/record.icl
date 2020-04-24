module practice
import StdEnv
/*Given a list of Persons. Write a function which keeps only 
the Persons older than 16 whose height is an even number*/
::Person={  name::String, 
            age::Int, 
            height::Int}



Nikola::Person
Nikola={name="Nikola",age=19,height=194}
Ivana::Person
Ivana={name="Ivana",age=18,height=163}
Mark::Person
Mark={name="Mark",age=15,height=1170}
Michael::Person
Michael={name="Michael",age=16,height=180}

modify ::Person -> Bool 
modify p =: {age = a, height = b}
| a > 16 && b rem 2 == 0 = True
= False

fun1::[Person]->[Person]
fun1 myList
=[x \\ x <- myList | modify x == True]



Start=fun1 [Nikola,Mark,Michael]//[(Person "Nikola" 19 194)]
//Start=fun1 [Nikola,Ivana]//[(Person "Nikola" 19 194)]
//Start=fun1 [Ivana,Mark,Michael]//[] 


fun1 myList = [x \\ x <- myList | x.age > 16 && x.height rem 2 == 0]

fun1 myList = filter (\x -> x.age > 16 && x.height rem 2 == 0) myList
