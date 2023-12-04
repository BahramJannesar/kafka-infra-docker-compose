
-- Create a new table
CREATE TABLE public.kafka (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL
);

-- Insert some data into the table
INSERT INTO public.kafka (name, age) VALUES
    ('Bahram', 28),
    ('Nima', 34),
    ('Alireza', 24);
