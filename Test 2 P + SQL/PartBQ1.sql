-- .1 יצירה ואכלוס של מסד נתונים:

-- א

CREATE TABLE Televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    number_catalog TEXT UNIQUE,
    brand TEXT NOT NULL CHECK (brand IN ('Samsung', 'LG', 'Sony')),
    model TEXT NOT NULL,
    size_screen INTEGER CHECK (size_screen > 0),
    resolution TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),
    price REAL CHECK (price > 0),
    quantity_stock INTEGER CHECK (quantity_stock >= 0),
    year_release INTEGER CHECK (year_release >= 1950 AND year_release <= strftime('%Y', 'now')),
    tv_smart TEXT CHECK (tv_smart IN ('כן', 'לא')),
    Os TEXT,
    panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED')),
    CHECK (tv_smart = 'לא' OR Os IS NOT NULL)
);

-- ב כתוב 3 שאילתות של INSERT להוספת טלויזיות


INSERT INTO Televisions (number_catalog, brand, model, size_screen, resolution, price, quantity_stock, year_release, tv_smart, Os, panel_type)
VALUES ('S12345', 'Samsung', 'QLED Ultra', 55, '4K', 4000.00, 10, 2023, 'כן', 'Tizen', 'QLED');


INSERT INTO Televisions (number_catalog, brand, model, size_screen, resolution, price, quantity_stock, year_release, tv_smart, Os, panel_type)
VALUES ('L67890', 'LG', 'OLED Vision', 65, '8K', 7000.00, 5, 2024, 'כן', 'webOS', 'OLED');


INSERT INTO Televisions (number_catalog, brand, model, size_screen, resolution, price, quantity_stock, year_release, tv_smart, Os, panel_type)
VALUES ('S98765', 'Sony', 'Bravia HD', 43, 'Full HD', 2500.00, 15, 2020, 'לא', NULL, 'LED');


