CREATE TABLE supplier
  (
     supplier_id TINYINT,
     name        VARCHAR
  );

INSERT INTO supplier
VALUES      (5,
             'Party Animals'),
            (1,
             'Catering Plus'),
            (2,
             'Dave''s Discos'),
            (3,
             'Entertainment Tonight'),
            (4,
             'Ice Ice Baby');

CREATE TABLE invoice
  (
     supplier_id    TINYINT,
     invoice_amount DECIMAL(8, 2),
     due_date       DATE
  );

INSERT INTO invoice
VALUES      (5,
             6000,
             Last_day_of_month(CURRENT_DATE + INTERVAL '3' month)),
            (1,
             2000,
             Last_day_of_month(CURRENT_DATE + INTERVAL '2' month)),
            (1,
             1500,
             Last_day_of_month(CURRENT_DATE + INTERVAL '3' month)),
            (2,
             500,
             Last_day_of_month(CURRENT_DATE + INTERVAL '1' month)),
            (3,
             6000,
             Last_day_of_month(CURRENT_DATE + INTERVAL '3' month)),
            (4,
             4000,
             Last_day_of_month(CURRENT_DATE + INTERVAL '6' month)); 