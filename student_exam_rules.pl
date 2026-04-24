%list of all students
student(radha).
student(rakesh).
student(anish).
student(rekha).
student(bibek).

%students who studied
studied(radha).
studied(rakesh).
studied(anish).

%rules

%A student passes the exam if they studied.
passed(X) :- studied(X).

%A student is happy if they passed.
happy(X) :- passed(X).

%A student did not study if they are a student and there is no studied fact.
did_not_study(X) :- student(X), \+studied(X).
