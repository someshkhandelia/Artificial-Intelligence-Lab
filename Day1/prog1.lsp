;DAY 1
;Write a Program in Lisp to Insert,Delete and Search for an element in a list

(set 'my_list '(1 2 3 4 5))

;Inserting an element in the list
(push 100 my_list -1) ; 100 gets inserted at last
(println my_list)

;Deleting an element from the list
(pop my_list 2); 3 gets deleted
(println my_list)

;Searching for element
(find 5 my_list); gives the position of 5 in the list