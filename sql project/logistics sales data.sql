create database country_economy;
use country_economy;
select*from combined_50000_dataset;


ALTER TABLE combined_50000_dataset
ADD COLUMN Revenue DECIMAL(10,2),
ADD COLUMN Profit DECIMAL(10,2),
ADD COLUMN DelayDays INT,
ADD COLUMN State VARCHAR(50),
ADD COLUMN OrderCategory VARCHAR(50),
ADD COLUMN ProductCategory VARCHAR(50),
ADD COLUMN Rating INT,
ADD COLUMN DeliveryType VARCHAR(50);

select*from combined_50000_dataset;

SET SQL_SAFE_UPDATES = 0;

UPDATE combined_50000_dataset
SET Revenue = Quantity * Price;
select*from combined_50000_dataset;


UPDATE  combined_50000_dataset
SET Profit = (Quantity * Price) - ShippingCost;

UPDATE  combined_50000_dataset
SET DelayDays = DATEDIFF(DeliveryDate, ShipDate);

UPDATE  combined_50000_dataset
SET State =
    CASE 
        WHEN Region = 'North' THEN 'Delhi'
        WHEN Region = 'South' THEN 'Chennai'
        WHEN Region = 'East' THEN 'Kolkata'
        WHEN Region = 'West' THEN 'Mumbai'
    END;
    
    UPDATE combined_50000_dataset
SET OrderCategory =
    CASE
        WHEN Revenue >= 30000 THEN 'High Value'
        WHEN Revenue >= 10000 THEN 'Medium Value'
        ELSE 'Low Value'
    END;
    
    UPDATE combined_50000_dataset
SET ProductCategory =
    CASE
        WHEN Product IN ('Laptop','Mobile','Tablet','Camera') THEN 'Electronics'
        WHEN Product IN ('Keyboard','Mouse') THEN 'Accessories'
        WHEN Product IN ('Headphones') THEN 'Audio'
        WHEN Product IN ('Smartwatch') THEN 'Wearable'
        ELSE 'Other'
    END;
    
    
    UPDATE  combined_50000_dataset
SET Rating =
    CASE
        WHEN Status = 'On Time' THEN FLOOR(3 + RAND() * 2)
        ELSE FLOOR(1 + RAND() * 3)
    END;
    
UPDATE  combined_50000_dataset
SET DeliveryType =
    CASE
        WHEN ShippingCost >= 300 THEN 'Premium'
        WHEN ShippingCost >= 150 THEN 'Standard'
        ELSE 'Economy'
    END;
    
    
    select*from combined_50000_dataset;










