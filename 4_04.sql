SELECT c.gname CUST_NAME, c.point POINT, g.gname GIFT_NAME
FROM customer c, gift g
WHERE g.gname = 'Notebook' AND c.point >= g.g_start;