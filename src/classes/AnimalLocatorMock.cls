public class AnimalLocatorMock {

	public static void testGetCallout() {
		animalLocator al = new AnimalLocator();
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();

		mock.setStaticResource('GetAnimalResource');
		mock.setStatusCode(200);
		mock.setHeader('Content-type', 'application/json;charset=UTF-8');

		Test.setMock(HttpCalloutMock.class, mock);

		String result = al.getAnimalNameById(1);
		System.assertNotEquals(null, result, 'callout returned null');
		System.assertEquals('chicken', result);


	}



}
