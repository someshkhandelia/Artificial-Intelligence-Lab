[cmd]

(set 'Emp '(
("Somesh" 1 "M" 40000)
("Milind" 2 "M" 50000)
("Sudeshna" 3 "F" 60000)
("Subhranil" 4 "M" 70000)
))

(println "**************deleting Milind********")
(setq x (find (assoc "Milind" Emp) Emp))
(pop Emp x)

(println "**************Current Database********")
(println Emp)

(println "**************Inserting Asmita********")
(push '("Asmita" 5 "F" 80000) Emp -1)

(println "**************Current Database********")
(println Emp)

(println "**************Asmita's salary********")
(println (lookup "Asmita" Emp 4))

[/cmd]
