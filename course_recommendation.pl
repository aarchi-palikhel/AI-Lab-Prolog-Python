% Question 5: Course Recommendation Expert System
% Recommend a course based on student interests.
%
% Requirements:
% 1) recommend(Student, Course): infer suitable course from interests
% 2) Add at least 4 different recommendation rules
% 3) Allow multiple recommendations if multiple interests match

interest(riya, programming).
interest(riya, math).
interest(karan, design).
interest(karan, communication).
interest(samir, data).
interest(samir, programming).

% Course mapping ideas:
% programming + math -> ai
% design + communication -> ui_ux
% data + programming -> data_science
% communication + management -> project_management

% TODO: Write your rules below
% recommend(Student, Course) :- ...

% Example queries:
% ?- recommend(riya, C).
% ?- recommend(karan, C).
% ?- recommend(samir, C).
