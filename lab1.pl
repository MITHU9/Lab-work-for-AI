% Problem 1: Food Table with Facts, Rules, Goals, and Meaning
% Facts
food(pizza).
food(burger).
food(pasta).
healthy(salad).
healthy(fruits).

% Rules
unhealthy(X) :- food(X), \+ healthy(X).

% Queries
% ?- healthy(pizza).       % false
% ?- unhealthy(pizza).     % true
% ?- healthy(salad).       % true


% Problem 2: Student-Professor Relationship Table
% Facts
professor(john).
professor(alice).
student(bob).
student(charlie).

teaches(john, bob).
teaches(alice, charlie).

% Rules
teaches_to_professor(X, Y) :- professor(X), student(Y), teaches(X, Y).

% Queries
% ?- teaches(john, bob).                    % true
% ?- teaches_to_professor(john, bob).       % true
% ?- teaches_to_professor(alice, bob).      % false


% Problem 3: Car
% Facts
car(toyota, camry, 2020).
car(honda, civic, 2019).
car(tesla, model3, 2021).

electric(tesla).

% Rules
new_model(X) :- car(_, _, Year), Year > 2020.

% Queries
% ?- car(honda, Model, Year).     % Model = civic, Year = 2019
% ?- electric(tesla).             % true
% ?- new_model(X).                % X = tesla


% Problem 4: Own Pet and Love
% Facts
owns(john, dog).
owns(alice, cat).
loves(john, dog).
loves(alice, cat).

% Rules
loves_pet(X) :- owns(X, Y), loves(X, Y).

% Queries
% ?- loves_pet(john).   % true
% ?- loves_pet(alice).  % true
% ?- loves_pet(bob).    % false


% Problem 6: Family Tree with Rules and Facts
% Facts
parent(john, bob).
parent(john, alice).
parent(mary, bob).
parent(mary, alice).
parent(bob, charlie).
parent(susan, charlie).

male(john).
male(bob).
male(charlie).
female(mary).
female(alice).
female(susan).

% Rules
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Queries
% ?- father(john, bob).           % true
% ?- mother(mary, alice).         % true
% ?- grandparent(john, charlie).  % true


% Problem 13: Smart Home Temperature Control System
% Facts
low_temp(Temp) :- Temp < 18.
high_temp(Temp) :- Temp > 25.
normal_temp(Temp) :- Temp >= 18, Temp =< 25.

% Rules
control_temperature(Temp, 'Heater ON') :- low_temp(Temp).
control_temperature(Temp, 'AC ON') :- high_temp(Temp).
control_temperature(Temp, 'System OFF') :- normal_temp(Temp).

% Queries
% ?- control_temperature(22, Status).   % Status = 'System OFF'
% ?- control_temperature(15, Status).   % Status = 'Heater ON'
% ?- control_temperature(30, Status).   % Status = 'AC ON'


% Problem 14: Medical Diagnosis System for Common Diseases
% Facts
symptom(flu, fever).
symptom(flu, cough).
symptom(migraine, headache).
symptom(migraine, nausea).
symptom(cold, sore_throat).
symptom(cold, cough).

% Rules
diagnose(Disease, Symptoms) :- findall(S, symptom(Disease, S), Symptoms). 

% Queries
% ?- diagnose(flu, Symptoms).           % Symptoms = [fever, cough]
% ?- diagnose(migraine, Symptoms).      % Symptoms = [headache, nausea]
% ?- diagnose(cold, Symptoms).          % Symptoms = [sore_throat, cough]
                                                                                                                                          
