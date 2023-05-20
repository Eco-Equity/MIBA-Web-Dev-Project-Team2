# Getting flights and bookings joining on customer ID
From flights f select f.flight_id, f.flight_date, f.flight_time, f.flight_from, f.flight_to, f.flight_price, f.flight_seats, f.flight_airline, f.flight_aircraft, f.flight_duration, f.flight_status, f.flight_notes, f.flight_created, f.flight_updated, b.booking_id, b.booking_customer_id, b.booking_flight_id, b.booking_date, b.booking_status, b.booking_notes, b.booking_created, b.booking_updated
where f.flight_id = b.booking_flight_id
order by f.flight_id asc
```