% Question 4: Library Fine Calculation System
% Build rules to decide overdue books and fine amount.
%
% Requirements:
% 1) overdue(Student, Book): true if returned after allowed days
% 2) fine(Student, Book, Amount): Amount = overdue_days * rate_per_day
% 3) no_fine(Student, Book): true when returned on time

% issue(Student, Book, IssueDay).
% return(Student, Book, ReturnDay).
% allowed_days(Book, Days).
% fine_rate(Book, Rate).

issue(aasha, ai_book, 1).
return(aasha, ai_book, 10).
allowed_days(ai_book, 7).
fine_rate(ai_book, 5).

issue(bibek, prolog_book, 2).
return(bibek, prolog_book, 6).
allowed_days(prolog_book, 7).
fine_rate(prolog_book, 4).

% TODO: Write your rules below
% overdue(Student, Book) :- ...
% fine(Student, Book, Amount) :- ...
% no_fine(Student, Book) :- ...

% Example queries:
% ?- overdue(aasha, ai_book).
% ?- fine(aasha, ai_book, A).
% ?- no_fine(bibek, prolog_book).
