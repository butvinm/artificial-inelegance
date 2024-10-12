% Semantic representation of Doki Doki Literature Club

% Declare dynamic modifiable facts
:- dynamic alive/1.


% Characters
character(you).
character(natsuki).
character(sayori).
character(yuri).
character(monika).


% Initially, everyone is alive
alive(you).
alive(natsuki).
alive(sayori).
alive(yuri).
alive(monika).


% Kill a character will retract the alive fact
kill(X) :- character(X), retract(alive(X)).


% You can love everyone except Monika
can_love(X) :- character(X), alive(X), X \= monika, X \= you.


% Monika will kill anyone you love
monika_kills(X) :-
    character(X),
    X \= monika,
    can_love(X),
    kill(X).


% Poems
poem('Hole in Wall').
poem('Save Me').
poem('The Lady who Knows Everything').
poem('Hole in Wall (2)').
poem('Save Me (2)').
poem('Happy End').
poem('Dear Sunshine').
poem('Bottles').
poem('%').
poem('Eagles Can Fly').
poem('Amy Likes Spiders').
poem('Because You').
poem('I`ll Be Your Beach').
poem('T3BlbiBZb3VyIFRoaXJkIEV5ZQ==').
poem('Natsuki`s Request (No Title)').
poem('Ghost under the light').
poem('The Raccoon ').
poem('Ghost under the Light pt. 2 ').
poem('Beach').
poem('Wheel').
poem('mdpnfbo,jrfp').
% Special poems
special(poem('happy thoughts')).
special(poem('CAN YOU HEAR ME?')).
special(poem('nothing is real')).
special(poem('Today I cut my skin open for the first time...')).
special(poem('STARE AT THE DOT TO REVEAL A SPECIAL MESSAGE')).
special(poem('STARE AT THE DOT TO REVEAL A SPECIAL MESSAGE - i love you')).
special(poem('A Joke')).
special(poem('A Dream')).
special(poem('Things I Like About Papa')).
special(poem('I can`t convince myself to go to therapy...')).
special(poem('A Dream 2')).

% Authors
author_is(poem('Hole in Wall'), character(monika)).
author_is(poem('Save Me'), character(yuri)).
author_is(poem('The Lady who Knows Everything'), character(monika)).
author_is(poem('Hole in Wall (2)'), character(monika)).
author_is(poem('Save Me (2)'), character(monika)).
author_is(poem('Happy End'), character(monika)).
author_is(poem('Dear Sunshine'), character(sayori)).
author_is(poem('Bottles'), character(sayori)).
author_is(poem('%'), character(sayori)).
author_is(poem('Eagles Can Fly'), character(natsuki)).
author_is(poem('Amy Likes Spiders'), character(natsuki)).
author_is(poem('Because You'), character(natsuki)).
author_is(poem('I`ll Be Your Beach'), character(natsuki)).
author_is(poem('T3BlbiBZb3VyIFRoaXJkIEV5ZQ=='), character(natsuki)).
author_is(poem('Natsuki`s Request (No Title)'), character(natsuki)).
author_is(poem('Ghost under the light'), character(yuri)).
author_is(poem('The Raccoon '), character(yuri)).
author_is(poem('Ghost under the Light pt. 2 '), character(yuri)).
author_is(poem('Beach'), character(yuri)).
author_is(poem('Wheel'), character(yuri)).
author_is(poem('mdpnfbo,jrfp'), character(yuri)).


% appears(poem, act, day, [chr0, chr1, chr3]) - denotes that a poem was shown in a given act and day
% act: In which act the poem is shown
% day: In which day the poem is shown
% chr0: List of characters to whom you should dedicated each of your poems to see this poem
appears(poem('Hole in Wall'), 1, 2, _).
appears(poem('Save Me'), 1, 3, _).
appears(poem('The Lady who Knows Everything'), 1, 4, _).
appears(poem('Hole in Wall (2)'), 2, 2, _).
appears(poem('Save Me (2)'), 2, 3, _).
appears(poem('Happy End'), 3, prelude, _).
appears(poem('Dear Sunshine'), 1, 2, _).
appears(poem('Bottles'), 1, 3, _).
appears(poem('%'), 1, festival, _).
appears(poem('Eagles Can Fly'), 1, 2, _).
appears(poem('Amy Likes Spiders'), 1, 3, _).
appears(poem('Because You'), 1, 4, YouPoem) :- you_poem_dedicated_to(character(natsuki), YouPoem).
appears(poem('I`ll Be Your Beach'), 1, 4, YouPoem) :- \+ you_poem_dedicated_to(character(natsuki), YouPoem).
appears(poem('T3BlbiBZb3VyIFRoaXJkIEV5ZQ=='), 2, 3, YouPoem) :- you_poem_dedicated_to(character(natsuki), YouPoem).
appears(poem('Natsuki`s Request (No Title)'), 2, 4, _).
appears(poem('Ghost under the light'), 1, 2, _).
appears(poem('The Raccoon '), 1, 3, _).
appears(poem('Ghost under the Light pt. 2 '), 1, 4, YouPoem) :- you_poem_dedicated_to(character(yuri), YouPoem).
appears(poem('Beach'), 1, 4, YouPoem) :- \+ you_poem_dedicated_to(character(yuri), YouPoem).
appears(poem('Wheel'), 2, 3, _).
appears(poem('mdpnfbo,jrfp'), 2, 4, _).
appears(poem(X), Act, Day, _) :-
    special(poem(X)),
    random(1, 3, RandAct),
    random(1, 5, RandDay),
    Act = RandAct,
    Day = RandDay.


% you poems

related_words(character(sayori), [
    'Adventure', 'Alone', 'Amazing', 'Awesome', 'Beauty', 'Bed', 'Bliss', 'Broken', 'Calm', 'Charm', 'Cheer', 'Childhood', 'Clumsy', 'Color', 'Comfort', 'Cry', 'Dance', 'Dark', 'Daydream', 'Dazzle', 'Death', 'Defeat', 'Depression', 'Embrace', 'Empty', 'Excitement', 'Extraordinary', 'Family', 'Fear', 'Feather', 'Fireflies', 'Fireworks', 'Flower', 'Flying', 'Forgive', 'Friends', 'Fun', 'Grief', 'Happiness', 'Heart', 'Holiday', 'Hope', 'Hopeless', 'Hurt', 'Joy', 'Laugh', 'Lazy', 'Loud', 'Love', 'Lucky', 'Marriage', 'Memories', 'Misery', 'Misfortune', 'Music', 'Nature', 'Ocean', 'Pain', 'Party', 'Passion', 'Peaceful', 'Play', 'Prayer', 'Precious', 'Promise', 'Rainbow', 'Raincloud', 'Romance', 'Rose', 'Sadness', 'Scars', 'Shame', 'Silly', 'Sing', 'Smile', 'Sparkle', 'Special', 'Sunny', 'Sunset', 'Sweet', 'Tears', 'Together', 'Tragedy', 'Treasure', 'Unrequited', 'Vacation', 'Warm', 'Wonderful'
]).

related_words(character(natsuki), [
    'Anger', 'Anime', 'Blanket', 'Boop', 'Bouncy', 'Bubbles', 'Bunny', 'Candy', 'Cheeks', 'Chocolate', 'Clouds', 'Cute', 'Doki-doki', 'Email', 'Fantasy', 'Fluffy', 'Games', 'Giggle', 'Hair', 'Headphones', 'Heartbeat', 'Hop', 'Jump', 'Jumpy', 'Kawaii', 'Kiss', 'Kitty', 'Lipstick', 'Lollipop', 'Marshmallow', 'Melody', 'Milk', 'Mouse', 'Nibble', 'Nightgown', 'Papa', 'Parfait', 'Peace', 'Pink', 'Playground', 'Poof', 'Pout', 'Puppy', 'Pure', 'Ribbon', 'Shiny', 'Shopping', 'Skipping', 'Skirt', 'Socks', 'Spinning', 'Sticky', 'Strawberry', 'Sugar', 'Summer', 'Swimsuit', 'Twirl', 'Valentine', 'Vanilla', 'Waterfall', 'Whisper', 'Whistle'
]).

related_words(character(yuri), [
    'Afterimage', 'Agonizing', 'Ambient', 'Analysis', 'Anxiety', 'Atone', 'Aura', 'Breathe', 'Cage', 'Captive', 'Climax', 'Contamination', 'Covet', 'Crimson', 'Desire', 'Despise', 'Destiny', 'Determination', 'Disarray', 'Disaster', 'Disoriented', 'Disown', 'Dream', 'Effulgent', 'Electricity', 'Entropy', 'Essence', 'Eternity', 'Existence', 'Explode', 'Extreme', 'Fester', 'Fickle', 'Flee', 'Frightening', 'Graveyard', 'Heavensent', 'Horror', 'Imagination', 'Incapable', 'Incongruent', 'Infallible', 'Inferno', 'Infinite', 'Insight', 'Intellectual', 'Journey', 'Judgment', 'Landscape', 'Lust', 'Massacre', 'Meager', 'Melancholy', 'Philosophy', 'Pleasure', 'Portrait', 'Question', 'Raindrops', 'Secretive', 'Sensation', 'Starscape', 'Suicide', 'Tenacious', 'Time', 'Uncanny', 'Uncontrollable', 'Unending', 'Universe', 'Unrestrained', 'Unstable', 'Variance', 'Vertigo', 'Vibrant', 'Vitality', 'Vivacious', 'Vivid', 'Whirlwind', 'Wrath'
]).

related_words(character(monika), ['Monika']).


% Helper rule to count occurrences of elements in the list
count_occurrences([], _, 0).
count_occurrences([H|T], Word, Count) :-
    count_occurrences(T, Word, TailCount),
    (H == Word -> Count is TailCount + 1 ; Count is TailCount).

% Rule to calculate the frequency of related words for a character
count_related_words(_, [], 0).
count_related_words(Words, [H|T], Count) :-
    count_related_words(Words, T, TailCount),
    count_occurrences(Words, H, WordCount),
    Count is TailCount + WordCount.


you_poem_dedicated_to(character(X), Words) :-
    findall(character(C)-Count,
        (related_words(character(C), Related), count_related_words(Words, Related, Count)),
        Counts),
    max_member(character(X)-_, Counts).


% Queries

% Can love Natsuki?
q1 :- can_love(natsuki).


% Can love Monika?
q2 :- can_love(monika).


% Prove that Monika will kill all characters. Supposed to succeed.
q3 :- forall(
    (can_love(X), writeln(X)),
    monika_kills(X)
).


% All poems shown in the Act 1 day 2.
q4(R) :- findall(
    Poem,
    appears(Poem, 1, 2, _),
    R
).

% Show special poems shown in Act 1 day 4.
q5(R) :- findall(
    Poem,
    (special(Poem), appears(Poem, 1, 4, _)),
    R
).


% Natsuki poem at Act 1 day 4 if you dedicated your poems to Natsuki.
q6(R) :- findall(
    Poem,
    (
        appears(Poem, 1, 4, ['Blanket', 'Papa', 'Peace']),
        author_is(Poem, character(natsuki))
    ),
    R
).


% Natsuki poem at Act 1 day 4 if you didnt dedicate your poems to Natsuki.
q7(R) :- findall(
    Poem,
    (
        appears(Poem, 1, 4, ['Adventure', 'Alone', 'Amazing']),
        author_is(Poem, character(natsuki))
    ),
    R
).
