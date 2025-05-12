-- Insert sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-1', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '555-1234', 'host'),
  ('uuid-2', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '555-5678', 'guest'),
  ('uuid-3', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', NULL, 'admin'),
  ('uuid-4', 'Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_4', '555-9101', 'guest');

-- Insert sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-101', 'uuid-1', 'Cozy Cottage', 'A cozy cottage in the mountains.', 'Mountainview, CO', 100.00),
  ('uuid-102', 'uuid-1', 'Beachfront Villa', 'Luxury villa with ocean views.', 'Miami Beach, FL', 500.00),
  ('uuid-103', 'uuid-2', 'City Apartment', 'Modern apartment in the heart of the city.', 'New York, NY', 150.00);

-- Insert sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-201', 'uuid-101', 'uuid-2', '2025-06-01', '2025-06-07', 600.00, 'confirmed'),
  ('uuid-202', 'uuid-102', 'uuid-4', '2025-07-15', '2025-07-20', 2500.00, 'pending'),
  ('uuid-203', 'uuid-103', 'uuid-2', '2025-06-10', '2025-06-15', 750.00, 'confirmed');

-- Insert sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('uuid-301', 'uuid-201', 600.00, '2025-06-01 10:00:00', 'credit_card'),
  ('uuid-302', 'uuid-202', 2500.00, '2025-07-14 12:00:00', 'paypal'),
  ('uuid-303', 'uuid-203', 750.00, '2025-06-10 15:30:00', 'stripe');

-- Insert sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-401', 'uuid-101', 'uuid-2', 5, 'Amazing stay! The cottage was perfect for a weekend getaway.'),
  ('uuid-402', 'uuid-102', 'uuid-4', 4, 'Beautiful villa, but the air conditioning could be better.'),
  ('uuid-403', 'uuid-103', 'uuid-2', 3, 'The apartment was fine, but the location was noisy.');

-- Insert sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-501', 'uuid-1', 'uuid-2', 'Hello Jane, your booking has been confirmed for the Cozy Cottage!'),
  ('uuid-502', 'uuid-4', 'uuid-1', 'Hi John, I am interested in booking the Beachfront Villa for July. Is it available?'),
  ('uuid-503', 'uuid-2', 'uuid-1', 'Thank you for the confirmation! I look forward to my stay.');

