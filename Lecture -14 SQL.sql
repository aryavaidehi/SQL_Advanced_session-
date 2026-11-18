-- THE CASE OF ITC AND ITS SALES--
-- CREATE A EXCEL DATASHEET CONTAINING THE COLUMN NAME DISTRIBUTER ID, NAME, CITY, REGION, PHONE NO
--TABLE OF DISTRIBUTION--

CREATE TABLE distributors (
  distributors_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
  --Dropping the table----
 DROP TABLE distributors;
 
 --CREATE A TABLE WITH THE NAME PRODUCTS CONTAINING PRODUCT ID, product name  , brand , category, PRICE AND STOCK 
 -- CREATE A TABLE FOR ITC PRODUCTS --

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    brand TEXT,
    category TEXT,
    price REAL,
    stock INTEGER
);

---Products--distributors

CREATE TABLE product(
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL UNIQUE,
  brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK (price>0),
  stock INTEGER DEFAULT 0
  );
  
  CREATE TABLE CONTAINING sales and should have sales_id, product_id, distributor_id, sales_date, quantity and amount
  
  -- CREATE A SALES TABLE FOR ITC --
-- QUANTITY MUST BE GREATER THAN 0 --

CREATE TABLE sales (
    sales_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    distributor_id INTEGER,
    sales_date DATE,
    quantity INTEGER CHECK (quantity > 0),
    amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributors_id) REFERENCES distributors(distributors_id)
);

quantity INTEGER NOT NULL CHECK (quantity > 0),

--- CHECKING THE COLUMN----
PRAGMA table_info(sales);
PRAGMA table_info(product);
PRAGMA table_info(distributors);
