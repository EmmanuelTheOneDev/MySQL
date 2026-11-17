-- use cape_codd;

-- 2.40
-- select sku, SKU_description, WarehouseCity, WarehouseState, warehouse.warehouseid
-- from inventory,warehouse
-- where warehousecity = "Atlanta"
-- or warehousecity = "Bangor"
-- or warehousecity = "Chicago"

-- 2.41
-- select sku, SKU_description, WarehouseCity, WarehouseState, W.WarehouseId
-- from INVENTORY AS I, WAREHOUSE AS W
-- where W.WarehouseCity in ('Atlanta', 'Bangor', 'Chicago');

-- 2.42
-- select sku, SKU_description, WarehouseCity, WarehouseState, warehouse.warehouseid
-- from inventory,warehouse
-- where warehousecity <> "Atlanta"
-- and warehousecity <> "Bangor"
-- and warehousecity <> "Chicago"


-- 2.43
-- select sku, SKU_description, WarehouseCity, WarehouseState, W.WarehouseId
-- from INVENTORY AS I, WAREHOUSE AS W
-- where W.WarehouseCity  not in ('Atlanta', 'Bangor', 'Chicago');

-- 2.44
--  select concat(Sku_description, " is located in ", warehousecity) as ItemLocation
--  from inventory,warehouse

-- 2.45
-- select sku_description, sku_description, W.warehouseId
-- from warehouse as W,inventory as I
-- where  W.manager in (
-- 	select manager
-- 	from warehouse 
-- 	where  manager = "Lucille Smith"
-- )

-- 2.46
-- select distinct sku, sku_description, W.warehouseId
-- from warehouse as W join inventory as I
-- where  W.manager = "Lucille Smith" 

-- 2.47
-- select sku, sku_description, W.warehouseId
-- from warehouse as W join inventory as I
-- on W.warehouseId = I.warehouseId
-- where W.manager = "Lucille Smith"

-- 2.48
-- select warehouseid, avg(QuantityOnHand) as AverageQuantity
-- from inventory
-- where warehouseid in (
-- 	select warehouseid
-- 	from warehouse 
-- 	where  manager = "Lucille Smith"
-- )
-- group by warehouseid;

-- 2.49
-- select I.warehouseid, avg(I.quantityOnhand) as averageQuantity
-- from inventory as I join warehouse as W
-- where W.manager = "Lucille Smith" 
-- and I.warehouseid = W.warehouseid
-- group by I.warehouseid;

-- 2.50
-- select I.warehouseid, avg(I.quantityOnhand) as averageQuantity
-- from inventory as I join warehouse as W
-- 	on I.warehouseid = W.warehouseid
-- where W.manager = "Lucille Smith" 
-- group by I.warehouseid

-- 2.51
-- select I.warehouseid, W.warehousecity, W.warehousecity, W.warehousestate, W.manager, I.sku, I.sku_description, I.quantityonhand
-- from inventory as I join warehouse as W
-- 	on I.warehouseid = W.warehouseid
-- where W.manager = "Lucille Smith" ;

-- 2.52
-- select warehouseid, sum(quantityonorder) as TotalItemsOnOrder, sum(quantityOnhand) as TotalItemsOnHand
-- from inventory
-- group by warehouseid, quantityOnhand;

-- 2.55
select *
from inventory join warehouse;