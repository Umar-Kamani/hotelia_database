USE hotelia;

INSERT INTO room_type
(room_type_id, room_type, room_rate)
VALUES
(122, 'Suite', 150.00),
(123, 'Deluxe', 120.00),
(124, 'Standard', 100.00),
(125, 'Single', 80.00),
(126, 'Penthouse', 500.00),
(127, 'Executive Suite', 300.00),
(128, 'Family Room', 200.00);

INSERT INTO room
(room_number, room_type_id, room_access_pin, room_capacity, room_condition)
VALUES
(101, 124, 4567, 2, 'Clean'),
(102, 122, 7821, 4, 'Clean'),
(103, 123, 9134, 3, 'Dirty'),
(104, 124, 2389, 2, 'Clean'),
(105, 122, 5612, 4, 'Maintenance'),
(106, 123, 3478, 3, 'Clean'),
(107, 125, 8901, 1, 'Clean');

INSERT INTO guest
(passport_number, full_name, phone_number, date_of_birth)
VALUES
('P1234567', 'David Villa', '+23058452321', '1998-05-12'),
('C3452021', 'Florence Antish', '+23059198544', '2000-11-03'),
('PP778831', 'Kevin Andrea', '+23055698712', '1997-02-28'),
('M9922114', 'Sarah Jenkins', '+23057112233', '1995-08-14'),
('B4455667', 'Michael Chang', '+23054998877', '1991-04-22'),
('K1122334', 'Elena Rostova', '+23058223344', '1993-12-05'),
('X5566778', 'Marcus Vance', '+23059445566', '1989-07-19');

INSERT INTO booking
(guest_id, room_number, booking_status,
start_date, end_date, check_in_time, check_out_time)
VALUES
(1, 101, 'Checked-in',
'2026-05-01', '2026-05-03',
'2026-05-01 14:00:00', '2026-05-03 11:00:00'),

(2, 102, 'Checked-out',
'2026-05-05', '2026-05-08',
'2026-05-05 13:30:00', '2026-05-08 10:00:00'),

(3, 103, 'Checked-in',
'2026-05-10', '2026-05-12',
'2026-05-10 15:00:00', '2026-05-12 19:00:00'),

(4, 104, 'Checked-out',
'2026-05-15', '2026-05-17',
'2026-05-15 14:15:00', '2026-05-17 10:30:00'),

(5, 105, 'Checked-in',
'2026-05-20', '2026-05-25',
'2026-05-20 12:00:00', '2026-05-25 11:00:00'),

(6, 106, 'Checked-in',
'2026-05-26', '2026-05-28',
'2026-05-26 15:30:00', '2026-05-28 10:00:00'),

(7, 107, 'Checked-out',
'2026-05-28', '2026-05-30',
'2026-05-28 14:00:00', '2026-05-30 11:00:00');
