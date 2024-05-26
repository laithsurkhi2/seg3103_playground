
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class DateTest  {
      @Test
      void nextDate_sample() {
        Date d = new Date(2020,5,3);
        assertEquals(new Date(2020,5,4), d.nextDate());
      }     
      @Test
      public void test1() {
      Date myday = new Date(1700, 6, 20);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(1700, 06, 21);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test2() {
      Date myday = new Date(2005, 4, 15);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(2005, 4, 16);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test3() {
      Date myday = new Date(1901, 7, 20);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(1901, 7, 21);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test4() {
      Date myday = new Date(3456, 3, 27);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(3456, 3, 28);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test5() {
      Date myday = new Date(1500, 2, 17);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(1500, 2, 18);
    assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test6() {
      Date myday = new Date(1700, 6, 29);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(1700, 6, 30);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test7() {
      Date myday = new Date(1800, 11, 29);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(1800, 11, 30);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test8() {
      Date myday = new Date(3453, 01, 29);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(3453, 01, 30);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test9() {
      Date myday = new Date(444, 02, 29);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(444, 03, 01);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test10() {
      Date myday = new Date(2005, 04, 30);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(2005, 05, 01);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test11() {
      Date myday = new Date(3453, 01, 30);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(3453, 01, 31);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test12() {
      Date myday = new Date(3456, 03, 30);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(3456, 03, 31);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test13() {
      Date myday = new Date(1901, 07, 31);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(1901, 8, 1);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test14() {
      Date myday = new Date(3453, 01, 31);
      Date nextdate= myday.nextDate();
      Date excpectdate= new Date(3453, 02, 1);
      assertEquals(nextdate, excpectdate);
      }
      @Test
      public void test15() {
          Date myday = new Date(3456, 12, 31);
          Date nextdate= myday.nextDate();
          Date excpectdate= new Date(3457, 01, 01);
          assertEquals(nextdate, excpectdate);
          }
      
      
      @Test
      public void test16() {
        assertThrows(
          IllegalArgumentException.class,
          () -> new Date(1500, 2, 31)
        );
      }
      @Test
      public void test17() {
        assertThrows(
          IllegalArgumentException.class,
          () -> new Date(1500, 2, 29)
        );
      }
      @Test
      public void test18() {
        assertThrows(
          IllegalArgumentException.class,
          () -> new Date(-1, 10, 20)
        );
      }
      @Test
      public void test19() {
        assertThrows(
      IllegalArgumentException.class,
      () -> new Date(1458, 15, 12)
    );
      }
      @Test
      public void test20() {
        assertThrows(
          IllegalArgumentException.class,
          () -> new Date(1975, 6, -50)
        );
      }
      
}
