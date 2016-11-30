@isTest
private class TestVerifyDate {
    @isTest static void dateWithin30() {
        Date d1 = Date.newInstance(2001, 01, 01);
        Date d2 = Date.newInstance(2001, 01, 20);
   		Date withinRange = VerifyDate.CheckDates(d1, d2);
        System.assertEquals(d2 , withinRange);
    }
    
    @isTest static void dateNotWithin30 () {
         Date d1 = Date.newInstance(2001, 01, 01);
         Date d2 = Date.newInstance(2001, 04, 20);
         Date outOfRange = VerifyDate.CheckDates(d1, d2);
         System.assertEquals(d1.addDays(30), outOfRange);
    }
}