module test_1
import StdEnv

::University={uniName::String,students::[Student],teachers::[Teacher]}
::Teacher={tname::String,subject::String}
::Student={studentName::String,age::Int,grades::{Int},favoriteTeacher::Teacher}

ELTE::University
ELTE={uniName="ELTE",students=[Marko,Nikola,Josh,Dame],teachers=[Mary,Peter,John]}

BME::University
BME={uniName="BME",students=[Ana,Josh,Sofi,Nikola],teachers=[Viktor,John,Peter]}

EmptyUni::University
EmptyUni={uniName="Empty",students=[],teachers=[]}

Peter::Teacher
Peter={tname="Peter",subject="Functional"}
Viktor::Teacher
Viktor={tname="Viktor",subject="Math"}
Mary::Teacher
Mary={tname="Mary",subject="OOP"}
John::Teacher
John={tname="John",subject="Functional"}

Marko::Student
Marko={studentName="Marko",age=19,grades={4,4,4,5},favoriteTeacher= Mary}
Sofi::Student
Sofi={studentName="Sofi",age=22,grades={5,5,4,5,5},favoriteTeacher=John}
Dame::Student
Dame={studentName="Dame",age=21,grades={2,3,4,5},favoriteTeacher=Peter}
Ana::Student
Ana={studentName="Ana",age=18,grades={5,5,5,5},favoriteTeacher=Viktor}
Nikola::Student
Nikola={studentName="Nikola",age=19,grades={4,4,4,4,2},favoriteTeacher=Peter}
Nik::Student
Nik={studentName="Nik",age=20,grades={4,4,4,4,3},favoriteTeacher=Peter}
Nik2::Student
Nik2={studentName="Nik2",age=22,grades={4,4,4,4,5},favoriteTeacher=Peter}
Josh::Student
Josh={studentName="Josh",age=22,grades={4,5,5},favoriteTeacher=John}

/*2 Given a University, return an array of all the
students or teachers names which are shorter than 6*/
//shorterThan6::University->{String}

nameLen :: String -> Bool
nameLen name
|size name >= 6 = False
=True

change :: [String] -> {String}
change names
={s \\ s <- names}

shorterThan6::University->{String}
shorterThan6 myuni
=change ([s.studentName\\s<-myuni.students | nameLen s.studentName ] ++ [s.tname\\s<-myuni.teachers | nameLen s ])

Start=shorterThan6 BME//{"Ana","Josh","Sofi","John","Peter"}
