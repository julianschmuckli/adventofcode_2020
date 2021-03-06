* Input declaration
DATA: lv_input TYPE TABLE OF i WITH EMPTY KEY,
      wa_input LIKE LINE OF lv_input.

* Assign with the puzzle input.
lv_input = VALUE #( ( 1837 ) ( 1585 ) ( 1894 ) ( 1715 ) ( 1947 ) ( 1603 ) ( 1746 ) ( 1911 ) ( 1939 ) ( 1791 ) ( 1800 ) ( 1479 ) ( 1138 ) ( 1810 ) ( 1931 ) ( 1833 ) ( 1470 ) ( 1882 ) ( 1725 ) ( 1496 ) ( 1890 ) ( 1862 ) ( 1990 ) ( 1958 ) ( 1997 ) ( 1844 )
( 1524 ) ( 541 ) ( 2001 ) ( 1591 ) ( 1687 ) ( 1941 ) ( 1940 ) ( 1561 ) ( 1813 ) ( 1654 ) ( 1500 ) ( 1575 ) ( 1826 ) ( 2006 ) ( 679 ) ( 1660 ) ( 1679 ) ( 1631 ) ( 2008 ) ( 575 ) ( 1583 ) ( 1883 ) ( 1904 ) ( 1436 ) ( 1650 ) ( 1532 ) ( 1907 ) ( 1803 ) (
1693 ) ( 1700 ) ( 359 ) ( 1516 ) ( 1625 ) ( 1908 ) ( 1994 ) ( 1910 ) ( 1644 ) ( 1706 ) ( 1781 ) ( 1639 ) ( 1662 ) ( 1712 ) ( 1796 ) ( 1915 ) ( 1550 ) ( 1721 ) ( 1697 ) ( 1917 ) ( 1665 ) ( 1646 ) ( 1968 ) ( 1881 ) ( 1893 ) ( 1468 ) ( 1678 ) ( 1774 ) (
285 ) ( 1754 ) ( 1856 ) ( 1677 ) ( 1823 ) ( 1802 ) ( 1681 ) ( 1587 ) ( 1767 ) ( 1711 ) ( 1900 ) ( 1983 ) ( 1787 ) ( 1996 ) ( 1726 ) ( 1982 ) ( 1971 ) ( 1553 ) ( 1542 ) ( 1863 ) ( 2002 ) ( 1831 ) ( 1891 ) ( 1555 ) ( 2000 ) ( 1847 ) ( 1783 ) ( 1873 ) (
1761 ) ( 1742 ) ( 1534 ) ( 1993 ) ( 1898 ) ( 1973 ) ( 1974 ) ( 1597 ) ( 1540 ) ( 1581 ) ( 1864 ) ( 1452 ) ( 1637 ) ( 1649 ) ( 1886 ) ( 1965 ) ( 1460 ) ( 1664 ) ( 1701 ) ( 1647 ) ( 1812 ) ( 1937 ) ( 1902 ) ( 2004 ) ( 1991 ) ( 1718 ) ( 1887 ) ( 1606 ) (
1748 ) ( 1737 ) ( 1608 ) ( 1641 ) ( 1710 ) ( 1724 ) ( 705 ) ( 1985 ) ( 1571 ) ( 1805 ) ( 131 ) ( 1788 ) ( 1707 ) ( 1513 ) ( 1615 ) ( 1897 ) ( 1476 ) ( 1927 ) ( 1745 ) ( 1926 ) ( 1839 ) ( 1807 ) ( 1955 ) ( 1692 ) ( 1645 ) ( 1699 ) ( 1471 ) ( 1604 ) (
1830 ) ( 1622 ) ( 1972 ) ( 1866 ) ( 1814 ) ( 1816 ) ( 1855 ) ( 1820 ) ( 1034 ) ( 1673 ) ( 1704 ) ( 1969 ) ( 1580 ) ( 1980 ) ( 1739 ) ( 1896 ) ( 434 ) ( 497 ) ( 1851 ) ( 1933 ) ( 458 ) ( 1521 ) ( 1551 ) ( 1762 ) ( 2010 ) ( 1614 ) ( 1840 ) ( 1747 ) ( 1875
) ( 1836 ) ( 1895 ) ( 1518 ) ( 1825 ) ( 1987 ) ).

* Starting the Task
DATA: wa_current_number1 LIKE LINE OF lv_input,
      wa_current_number2 LIKE LINE OF lv_input,
      wa_current_number3 LIKE LINE OF lv_input.

LOOP AT lv_input INTO wa_current_number1.
  LOOP AT lv_input INTO wa_current_number2.
    LOOP AT lv_input INTO wa_current_number3.
     IF wa_current_number1 NE wa_current_number2 AND wa_current_number2 NE wa_current_number3 AND wa_current_number3 NE wa_current_number1.
       DATA(lv_sum) = wa_current_number1 + wa_current_number2 + wa_current_number3.
       IF lv_sum EQ 2020.
         DATA(lv_result) = wa_current_number1 * wa_current_number2 * wa_current_number3.
         WRITE: 'Result: ' && lv_result.
         EXIT.
       ENDIF.
     ENDIF.
    ENDLOOP.
    IF lv_sum EQ 2020.
      EXIT.
    ENDIF.
  ENDLOOP.
  IF lv_sum EQ 2020.
    EXIT.
  ENDIF.
ENDLOOP.
IF lv_result EQ ''.
  WRITE: 'No result'.
ENDIF.
