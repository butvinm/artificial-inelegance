% tape(left, right)
% tape consists of two parts: left and right
% head is the first element of right part
% left part is reversed for easier manipulation
% so, to represent tape [1 2 3 4 5 6< 7 8 9 10] (head is 6)
% we use tape([5 4 3 2 1], [6 7 8 9 10])
% tape(Left, Right).

% [1 2 3 4 5 6< 7 8 9 10] -> [1 2 3 4 5 6 7< 8 9 10]
% tape([5 4 3 2 1], [6 7 8 9 10]) -> tape([6 5 4 3 2 1], [7 8 9 10])
shift_tape_right(tape(Ls, [R|Rs]), tape([R|Ls], Rs)).


% [1 2 3 4 5 6< 7 8 9 10] -> [1 2 3 4 5< 6 7 8 9 10]
% tape([5 4 3 2 1], [6 7 8 9 10]) -> tape([4 3 2 1], [5 6 7 8 9 10])
shift_tape_left(tape([L|Ls], Rs), tape(Ls, [L|Rs])).


% set head value
% 69 [1 2 3 4 5 6< 7 8 9 10] -> [1 2 3 4 5 69< 7 8 9 10]
% tape([5 4 3 2 1], [6 7 8 9 10]) -> tape([6 5 4 3 2 1], [69 7 8 9 10])
set_head(Head, tape(Ls, [_|Rs]), tape(Ls, [Head|Rs])).


% get head value
% 69 [1 2 3 4 5 6< 7 8 9 10] -> 69
% tape([5 4 3 2 1], [6 7 8 9 10]) -> 6
get_head(tape(_, [Head|_]), Head).


% print tape in human readable format
% tape([5 4 3 2 1], [6 7 8 9 10]) -> [1 2 3 4 5 6< 7 8 9 10]
print_tape(tape(Ls, Rs)) :-
    reverse(Ls, RevLs),
    atomic_list_concat(RevLs, LsItems),
    atomic_list_concat(Rs, RsItems),
    format('~w|~w\n', [LsItems, RsItems]).


% machine(State, Tape)

% case Inc 1 0 -> Inc
machine(inc, Tape) :-
    get_head(Tape, 1),
    set_head(0, Tape, NewTape),
    shift_tape_right(NewTape, NewTape2),
    machine(inc, NewTape2).

% case Inc 0 1 -> Halt
machine(inc, Tape) :-
    get_head(Tape, 0),
    set_head(1, Tape, NewTape),
    shift_tape_left(NewTape, NewTape2),
    machine(halt, NewTape2).


% halt
machine(halt, Tape) :-
    writeln('Machine halted.'),
    print_tape(Tape).


% unknown case
machine(State, Tape) :-
    format('Unknown case: ~w\n', [State]),
    print_tape(Tape).


% calculate 11 + 1
% bin(11) + bin(1) = 1011 + 1 = 1100
% 1011 = tape([], [1, 1, 0, 1, &])
trace :-
    InitialTape = tape([], [1, 1, 0, 1, &]),
    machine(inc, InitialTape).
