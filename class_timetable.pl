% Question 2: Class Timetable Conflict Checker
% Create rules to detect scheduling conflicts in a class timetable.
%
% Requirements:
% 1) conflict(Teacher, Day, Time): true if a teacher has more than one class at same day/time
% 2) free_teacher(Teacher, Day, Time): true if teacher has no class at that slot
%
% schedule(Teacher, Subject, Day, Time).
schedule(raj, ai, monday, t1).
schedule(raj, dbms, monday, t1).
schedule(sita, math, monday, t2).
schedule(raj, os, tuesday, t1).

% TODO: Write your rules below
% conflict(Teacher, Day, Time) :- ...
% free_teacher(Teacher, Day, Time) :- ...

% Example queries:
% ?- conflict(raj, monday, t1).
% ?- free_teacher(sita, monday, t1).
