%John Likes AI and CS
likes(john, ai).
likes(john, cs).

%Sara Likes AI but not CS
likes(sara, ai).
\+likes(sara, cs).

%Jack Likes Whatever Sara Likes.
likes(jack, X) :- likes(sara, X).