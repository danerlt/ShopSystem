--本文件所建立的约束条件只包括外键
USE ShopSystem
--customer表中的约束
ALTER TABLE customer
ADD 
CONSTRAINT FK_cust_level
FOREIGN KEY (cust_level) REFERENCES discount(cust_level)
on delete cascade
on update cascade
--product表中的约束
ALTER TABLE product
ADD 
CONSTRAINT FK_kind_no
FOREIGN KEY (kind_no) REFERENCES kind(kind_no),
CONSTRAINT FK_sup_no
FOREIGN KEY(sup_no) REFERENCES company(sup_no)
on delete cascade
on update cascade
--shopcart表中的约束
ALTER TABLE shopcart
ADD 
CONSTRAINT FK_cust_id
FOREIGN KEY(cust_id) REFERENCES customer(cust_id),
CONSTRAINT FK_prod_id
FOREIGN KEY(prod_id) REFERENCES product(prod_id)
on delete cascade
on update cascade
--sale_item表的约束
ALTER TABLE sale_item
ADD 
CONSTRAINT FK_order_no
FOREIGN KEY (order_no) REFERENCES sales(order_no),
CONSTRAINT FK_prod_id
FOREIGN KEY (prod_id) REFERENCES product(prod_id)
on delete cascade
on update cascade
