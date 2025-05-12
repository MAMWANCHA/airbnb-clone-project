Relationships:
User to Property: One-to-Many

A User (with role 'host') can own multiple Properties (host_id foreign key)

User to Booking: One-to-Many

A User can make multiple Bookings

A Property can have multiple Bookings

Booking to Payment: One-to-One

Each Booking can have one Payment (though in reality might be One-to-Many if partial payments are allowed)

User to Review: One-to-Many

A User can write multiple Reviews

A Property can receive multiple Reviews

User to Message: Many-to-Many (implemented as two One-to-Many relationships)

A User can send multiple Messages

A User can receive multiple Messages
