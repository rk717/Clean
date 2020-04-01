/**1
  * Write a function, that takes a list of functions, and a list of
  * tuples (Int, Int) where the first Int indicates which function to
  * use and the second Int acts as a parameter and returns a list of
  * the results.
  
  * For example: Router [isEven,isOdd] [(1,2),(2,4),(1,57)] = [True, False, False]
  */

  Router :: [(a->b)] [(Int,a)] -> [b]
  Router listFunc listRoute
  | isEmpty listFunc || isEmpty listRoute = []
  = [(listFunc!!(funcNum-1)) param\\(funcNum, param) <- listRoute]
