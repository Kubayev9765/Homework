--create database Sam_Airport

--create table Passenger(
--passenger_id bigint,
--first_name varchar(50),
--last_name varchar(50),
--data_of_birth date,
--country_of_citzenship varchar(50),
--country_of_residence varchar(50),
----created_at timestamp,
----updated_at timestamp
--constraint PK_pass_id primary key(passenger_id)

--)

--create table security_check(
--sch_id bigint,
--check_result varchar(50),
--comments varchar(6555),
------created_at timestamp,
------updated_at timestamp,
--passenger_id bigint
--constraint PK_sch_id primary key(sch_id)


--)

--alter table security_check
--add constraint FK_pass_id foreign key(passenger_id) references Passenger(passenger_id)

--create table Baggage_check(
--bagg_id bigint,
--check_result varchar(50),
--created_at bigint,
--updated_at bigint,
--booking_id bigint,
--passenger_id bigint
--constraint PK_bagg_id primary key(bagg_id)
--)
--alter table Baggage_check
--add constraint FK_passe_id foreign key(passenger_id) references Passenger(passenger_id)

--create table No_fly_list(
--nfl_id bigint,
--active_from date,
--active_to date,
--no_fly_reason date,
----created_at timestamp,
----updated_at timestamp,
--psgnr_id bigint
--constraint PK_nfl_id primary key(nfl_id)
--)

--alter table No_fly_list
--add constraint FK_psgnr_id foreign key(psgnr_id) references Passenger(passenger_id)

--create table Booking(
--booking_id bigint,
--flight_id bigint,
--status varchar(20),
--booking_platform varchar(20),
----created_at timestamp,
----updated_at timestamp,
--passenger_id bigint
--constraint PK_booking_id primary key(booking_id)
--)


--alter table Booking
--add constraint FK_passenger_id foreign key(passenger_id) references Passenger(passenger_id)

--alter table Baggage_check
--add constraint FK_booking_id  foreign key(booking_id ) references Booking(booking_id)

--create table Baggage(
--bagg_id bigint,
--weigt_in_kg decimal(4,2),
----created_at timestamp,
----updated_at timestamp,
--booking_id bigint
--constraint PK_bagga_id primary key(bagg_id)
--)
--alter table Baggage
--add constraint FK_bookinge_id  foreign key(booking_id ) references Booking(booking_id)

--create table Boarding_pass(
--boarding_id bigint,
--qr_cocde varchar(6555),
----created_at timestamp,
----updated_at timestamp,
--booking_id bigint
--constraint PK_boarding_id primary key(boarding_id)
--)

--alter table Boarding_pass
--add constraint FK_book_id  foreign key(booking_id ) references Booking(booking_id)

--create table Flight_manifest(
--fm_id bigint,
----created_at timestamp,
----updated_at timestamp,
--booking_id bigint,
--flight_id bigint
--constraint PK_fm_id primary key(fm_id)
--)

--alter table Flight_manifest
--add constraint FK_booki_id  foreign key(booking_id ) references Booking(booking_id)

--alter table Flight_manifest
--add constraint FK_flight_id  foreign key(flight_id ) references Flights(flight_id)

--create table Flights(
--flight_id bigint,
--deporting_gate varchar(20),
--arriving_gate varchar(20),
----created_at timestamp,
----updated_at timestamp,
--airline_id bigint,
--departing_airport_id bigint,
--arriving_airport_id bigint
--constraint PK_flight_id primary key(flight_id)
--)
--alter table Flights
--add constraint FK_airline_id  foreign key(airline_id ) references Airline(airline_id)

--alter table Flights
--add constraint FK_departing_airport_id  foreign key(departing_airport_id ) references Airport(airport_id)

--alter table Flights
--add constraint FK_arriving_airport_id  foreign key(arriving_airport_id ) references Airport(airport_id)


--create table Airline(
--airline_id bigint,
--airline_code varchar,
--airline_name bigint,
--airline_country varchar(50),
----created_at timestamp,
----updated_at timestamp,
--constraint PK_airline_id primary key(airline_id)
--)

--create table Airport(
--airport_id bigint,
--airport_name varchar(50),
--country varchar(50),
--state varchar(50),
--sity varchar(50),
----created_at timestamp,
----updated_at timestamp,
--constraint PK_airport_id primary key(airport_id)
--)


