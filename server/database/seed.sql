-- ALCERA sample data

-- Admin account (username: admin, password: alcera123)
INSERT INTO admins (username, password_hash) VALUES
('admin', '$2b$10$2pYQFK7MYH7HI/o94FtmgeWhvYCxiBC3pV/N6fY/TWXwobTXixaEK');

INSERT INTO menu_items (name, description, category, price, image_url, is_available) VALUES
-- Starters (6)
('Burrata & Heirloom Tomatoes', 'Creamy burrata with heirloom tomatoes, basil oil and sourdough crisps.', 'starters', 265.00, NULL, TRUE),
('Garden Bruschetta', 'Toasted sourdough with tomato, garlic, fresh basil and olive oil.', 'starters', 165.00, NULL, TRUE),
('Truffle Mushroom Soup', 'Velvety wild mushroom soup finished with truffle oil.', 'starters', 185.00, NULL, TRUE),
('Mediterranean Mezze Plate', 'Hummus, smoked eggplant dip, marinated olives and warm pita.', 'starters', 245.00, NULL, TRUE),
('Crispy Calamari', 'Lightly fried calamari with lemon and garlic aioli.', 'starters', 255.00, NULL, TRUE),
('Seasonal Garden Salad', 'Fresh greens, cherry tomatoes, cucumber, feta and pomegranate dressing.', 'starters', 175.00, NULL, TRUE),
-- Main courses (12)
('Grilled Sea Bass', 'Mediterranean sea bass with lemon butter, capers and seasonal greens.', 'main-courses', 495.00, NULL, TRUE),
('Citrus-Glazed Salmon', 'Oven-roasted salmon with orange glaze, wild rice and asparagus.', 'main-courses', 525.00, NULL, TRUE),
('Seafood Linguine', 'Linguine with shrimp, mussels and calamari in a light tomato sauce.', 'main-courses', 455.00, NULL, TRUE),
('Herb-Crusted Lamb', 'Slow-roasted lamb with rosemary jus and roasted root vegetables.', 'main-courses', 585.00, NULL, TRUE),
('Beef Tenderloin', 'Grilled beef tenderloin with red wine sauce and potato gratin.', 'main-courses', 645.00, NULL, TRUE),
('Lemon Herb Roast Chicken', 'Roast chicken with lemon, thyme, garlic and crispy potatoes.', 'main-courses', 395.00, NULL, TRUE),
('Chicken Caesar Bowl', 'Grilled chicken, romaine, parmesan, croutons and classic Caesar dressing.', 'main-courses', 285.00, NULL, TRUE),
('Wild Mushroom Risotto', 'Arborio rice with porcini, parmesan and fresh thyme.', 'main-courses', 385.00, NULL, TRUE),
('Pesto Linguine', 'Fresh linguine with basil pesto, pine nuts and parmesan.', 'main-courses', 325.00, NULL, TRUE),
('Eggplant Parmigiana', 'Baked layers of eggplant, tomato sauce, mozzarella and basil.', 'main-courses', 345.00, NULL, TRUE),
('Margherita Flatbread', 'Stone-baked flatbread with tomato, mozzarella and fresh basil.', 'main-courses', 265.00, NULL, TRUE),
('ALCÉRA Club Sandwich', 'Toasted sourdough with chicken, avocado, tomato and herb mayo, served with fries.', 'main-courses', 245.00, NULL, TRUE),
-- Desserts (6)
('Pistachio Crème Brûlée', 'Classic crème brûlée infused with pistachio.', 'desserts', 210.00, NULL, TRUE),
('Dark Chocolate Fondant', 'Warm chocolate fondant with vanilla bean ice cream.', 'desserts', 230.00, NULL, TRUE),
('Lemon Olive Oil Cake', 'Light Mediterranean cake with lemon glaze and berries.', 'desserts', 185.00, NULL, TRUE),
('San Sebastian Cheesecake', 'Burnt Basque-style cheesecake with a creamy center.', 'desserts', 220.00, NULL, TRUE),
('Tiramisu', 'Espresso-soaked ladyfingers layered with mascarpone cream.', 'desserts', 215.00, NULL, TRUE),
('Butter Croissant', 'Flaky, freshly baked French butter croissant.', 'desserts', 95.00, NULL, TRUE),
-- Drinks (6)
('Signature Lavender Latte', 'Espresso with steamed milk and a hint of lavender.', 'drinks', 135.00, NULL, TRUE),
('Flat White', 'Double espresso with velvety steamed milk.', 'drinks', 115.00, NULL, TRUE),
('Iced Matcha Latte', 'Ceremonial-grade matcha with cold milk over ice.', 'drinks', 140.00, NULL, TRUE),
('Cold Brew', 'Slow-steeped for 18 hours, smooth and bold.', 'drinks', 125.00, NULL, TRUE),
('Turkish Coffee', 'Traditionally brewed Turkish coffee served with Turkish delight.', 'drinks', 90.00, NULL, TRUE),
('Fresh Mint Lemonade', 'House-made lemonade with fresh mint.', 'drinks', 110.00, NULL, TRUE);

INSERT INTO promotions (title, description, image_url, valid_until) VALUES
('Student Lunch Set', 'Any main course with a drink at a special price for university students (valid student ID required).', NULL, '2027-06-30'),
('Study Break Coffee', '20% off all coffees on weekdays between 14:00 and 17:00 for students.', NULL, '2027-06-30'),
('Winter Garden Evenings', 'A complimentary dessert with every dinner reservation for two.', NULL, '2027-02-28');

-- Example data for testing the admin panel
INSERT INTO reservations (customer_name, email, phone, reservation_date, reservation_time, guests, special_requests, status) VALUES
('Elif Yilmaz', 'elif@example.com', '+90 555 111 2233', '2026-12-12', '19:30', 2, 'Window table if possible.', 'pending'),
('Mert Kaya', 'mert@example.com', '+90 555 444 5566', '2026-12-14', '13:00', 4, NULL, 'approved');

INSERT INTO messages (customer_name, email, subject, content) VALUES
('Zeynep Demir', 'zeynep@example.com', 'Private event', 'Hello, do you host small birthday celebrations in the garden area?');