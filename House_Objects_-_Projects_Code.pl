
start :- hypothesize(Objects),
write('The Object is: '),
write(Objects),
nl,
undo.

/* hypotheses to be tested */

/*Bedroom Objects*/
hypothesize(closet) :- closet, !.

hypothesize('Laundry basket') :- laundry_basket, !.

hypothesize('Chair') :- chair, !.

hypothesize('Lamp') :- lamp, !.

hypothesize('Bed') :- bed, !.



/*Living Room Objects*/
hypothesize('Wall art') :- wall_art, !.

hypothesize('Curtains') :- curtains, !.

hypothesize('Floor rug ') :- floor_rug , !.

hypothesize('Decorative pillows ') :- decorative_pillows , !.

hypothesize('Side table') :- side_table, !.



/*Bathroom Objects*/
hypothesize('Sink') :- sink, !.

hypothesize('Shower') :- shower, !.

hypothesize('Mirror') :- mirror, !.

hypothesize('Hand towel') :- hand_towel, !.

hypothesize('Toothbrush holder') :- toothbrush_holder, !.



/*Storage Room Objects*/
hypothesize('Shelving units') :- shelving_units, !.

hypothesize('Ladder') :- ladder, !.

hypothesize('Vacuum cleaner') :- vacuum_cleaner, !.

hypothesize('Plastic storage containers') :- plastic_storage_containers, !.

hypothesize('Seasonal items') :- seasonal_items, !.



/*Kitchen Objects*/
hypothesize('Microwave') :- microwave, !.

hypothesize('Fridge') :- fridge, !.

hypothesize('Electric mixing machine') :- electric_mixing_machine, !.

hypothesize('Frying pan') :- frying_pan, !.

hypothesize('Spoon') :- spoon, !.



/*Office Room Objects*/
hypothesize('Computer') :- computer, !.

hypothesize('Desk') :- desk, !.

hypothesize('Library') :- library, !.

hypothesize('Movable office chair') :- movable_office_chair, !.

hypothesize('Desk lamp') :- desk_lamp, !.



/*Gym Room Objects*/
hypothesize('Treadmill') :- treadmill, !.

hypothesize('Dumbbells') :- dumbbells, !.

hypothesize('Exercise_mat') :- exercise_mat, !.

hypothesize('Stationary bike') :- stationary_bike, !.

hypothesize('Resistance bands') :- resistance_bands, !.



/*Lounge Objects*/
hypothesize('Sofa') :- sofa, !.

hypothesize('Coffee_table') :- coffee_table, !.

hypothesize('Television') :- television, !.

hypothesize('Bookshelf') :- bookshelf, !.

hypothesize('Floor lamp') :- floor_lamp, !.



/*Garden Objects*/
hypothesize('Flowers') :- flowers, !.

hypothesize('Garden bench') :- garden_bench, !.

hypothesize('Lawn') :- lawn, !.

hypothesize('Lawn mower') :- lawn_mower, !.

hypothesize('Lighting') :- lighting, !.



/*Swimming Lounge Objects*/
hypothesize('Swimming pool') :- swimming_pool, !.

hypothesize('Clothing drawer') :- clothing_drawer, !.

hypothesize('Towels') :- towels, !.

hypothesize('Jacuzzi') :- jacuzzi, !.

hypothesize('Life jacket') :- life_jacket, !.

hypothesize(unknown). /* no diagnosis */




/* House Rooms identification rules */

/* Bedroom identification */
closet :-
    base1,
    verify('Is the object capable of storing clothes'),
    verify('Can the object store things other than clothes').

laundry_basket :-
    base1,
    verify('Is this object used to hold dirty or clean laundry'),
    verify('Does this object typically have handles for easy carrying').

chair :-
    base1,
    verify('Is the object designed for sitting'),
    verify('Does the object have a backrest').

lamp :-
    base1,
    verify('Does the object provide light'),
    verify('Does the object have a switch or button to control the light').

bed :-
    base1,
    verify('Is the object used for sleeping or resting'),
    verify('Does the object have a mattress').



/* Living Room identification */
wall_art :-
    base2,
    verify('Is this object a form of decoration hung on the walls'),
    verify('Is this object used to enhance the aesthetics of the living room').

curtains :-
    base2,
    verify('Are these objects used as window coverings'),
    verify('Do these objects provide privacy in the living room').

floor_rug :-
    base2,
    verify('Is this object a large carpet or rug placed on the floor'),
    verify('Does this object define the seating area in the living room').

decorative_pillows :-
    base2,
    verify('Are these objects used for adding style and visual interest to sofas or chairs'),
    verify('Do these objects provide additional comfort and support when sitting or lounging in the living room').

side_table :-
    base2,
    verify('Is the object used as a small table placed beside a sofa or chair'),
    verify('Does the object have a flat surface and legs').


/* Bathroom identification */
sink :-
    base5,
    verify('Is this object typically used for washing hands and face'),
    verify('Is this object commonly found in a bathroom and used for water-related activities').

shower :-
    base5,
    verify('Is this object used for bathing'),
    verify('Does this object typically have a water spray or rainfall effect').

mirror :-
    base5,
    verify('Is this object used for reflection and checking one\'s appearance'),
    verify('Does this object usually hang on the wall and have a reflective surface').

hand_towel :-
    base5,
    verify('Is this object used for drying hands after washing'),
    verify('Is this object smaller in size compared to a bath towel').

toothbrush_holder :-
    base5,
    verify('Is this object commonly found on a bathroom countertop'),
    verify('Is this object used for storing toothbrushes in the bathroom').


/* Storage room identification */
shelving_units :-
    base8,
    verify('Is this object used for storing items in a vertical arrangement'),
    verify('Does this object typically have adjustable shelves').

ladder :-
    base8,
    verify('Is this object used for reaching high places'),
    verify('Does this object have steps for climbing').

vacuum_cleaner :-
    base8,
    verify('Is this object used for cleaning floors and carpets'),
    verify('Does this object typically have attachments for different cleaning tasks').

plastic_storage_containers :-
    base8,
    verify('Are these objects used for organizing and storing various items'),
    verify('Do these containers come in different sizes and shapes').

seasonal_items :-
    base8,
    verify('Are these objects stored in the storage room until they are needed'),
    verify('Do these objects include holiday decorations or sporting equipment').


/* Kitchen identification */
microwave :-
    base3,
    verify('Is this object used to heat food'),
    verify('Is this object emitting thermal radiation').

fridge :-
    base3,
    verify('Is this object used to preserve foods'),
    verify('Is this object always cold').

electric_mixing_machine :-
    base3,
    verify('Is food put in it to mash it together'),
    verify('Does this object make a loud sound').

frying_pan :-
    base3,
    verify('Does this object have a long handle'),
    verify('Is this object used to cook food with oil').

spoon :-
    base3,
    verify('Does this object have a small oval or round bowl with a long handle'),
    verify('Is this object used to eat, stir, and serve food').


/* Office Room identification */
computer :-
    base6,
    verify('Is this object used to store and process data'),
    verify('Can this object connect to the Internet').

desk :-
    base6,
    verify('Does this object have a flat or inclined surface and it usually has drawers'),
    verify('Can a computer be placed on it and all work done on it (reading, writing, etc.)').

library :-
    base6,
    verify('Does this object consist of many shelves'),
    verify('Does this object have a lot of books').

movable_office_chair :-
    base6,
    verify('Can this object be sat on'),
    verify('Does this object have four moving legs').

desk_lamp :-
    base6,
    verify('Does this object give light'),
    verify('Is this object placed on the desk, especially while reading or writing').



/* Gym Room identification */
treadmill :-
    base9,
    verify('Is this object used for walking or running indoors'),
    verify('Does this object have a motorized belt').

dumbbells :-
    base9,
    verify('Are these objects used for strength training'),
    verify('Do they come in various weights').

exercise_mat :-
    base9,
    verify('Is this object used for floor exercises and stretches'),
    verify('Is it typically made of foam or rubber').

stationary_bike :-
    base9,
    verify('Is this object used for cardiovascular exercise'),
    verify('Does it have pedals and a seat').

resistance_bands :-
    base9,
    verify('Are these objects elastic and used for strength training'),
    verify('Can they be easily adjusted for different levels of resistance').


/* Lounge identification */
sofa :-
    base4,
    verify('Is this object typically designed for seating multiple people'),
    verify('Does it often have cushions for comfort').

coffee_table :-
    base4,
    verify('Is this object usually placed in front of a sofa'),
    verify('Is it used for placing drinks, books, or decorative items').

television :-
    base4,
    verify('Is this object used for watching visual content'),
    verify('Can it display both live broadcasts and pre-recorded media').

bookshelf :-
    base4,
    verify('Does this object have multiple shelves for storing books'),
    verify('Is it used for organizing and displaying reading material').

floor_lamp :-
    base4,
    verify('Does this object provide additional lighting in a room'),
    verify('Is it often placed near seating areas for reading or ambiance').


/* Garden identification */
flowers :-
    base7,
    verify('Is the object multi-coloured'),
    verify('Does the object have a smell').

garden_bench :-
    base7,
    verify('Is the object a seating structure typically made of wood or metal?'),
    verify('Is it designed for relaxation and enjoying the garden?').

lawn :-
    base7,
    verify('Is the color of the object green'),
    verify('Is the object polymorphic').

lawn_mower :-
    base7,
    verify('Does the object have a voice'),
    verify('Does the object move places').

lighting :-
    base7,
    verify('Is the object a light source'),
    verify('Is it located in several places in the garden').


/* Swimming Lounge identification */
swimming_pool :-
    base10,
    verify('Does the object contain water'),
    verify('Is the object multi-sized').

clothing_drawer :-
    base10,
    verify('Does the object store clothes inside'),
    verify('Are the shoes placed inside the object').

towels :-
    base10,
    verify('Is the object used to dry the body'),
    verify('Is the object used to dry hair').

jacuzzi :-
    base10,
    verify('Does the object contain cold water'),
    verify('Does the object contain hot water').

life_jacket :-
    base10,
    verify('Does the object help in surviving drowning'),
    verify('Should beginners wear it in swimming').


/* classification rules */
base1 :- verify('Is the object in Bedroom'), !.

base2 :- verify('Is the object in Living Room'), !.

base3 :- verify('Is the object in Kitchen'), !.

base4 :- verify('Is the object in Lounge'), !.

base5 :- verify('Is the object in Bathroom'), !.

base6 :- verify('Is the object in Office'), !.

base7 :- verify('Is the object in Garden'), !.

base8 :- verify('Is the object in Storage Room'), !.

base9 :- verify('Is the object in Gym Lounge'), !.

base10 :- verify('Is the object in Swimming Lounge'), !.


/* how to ask questions */
ask(Question) :-
    write(''),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.