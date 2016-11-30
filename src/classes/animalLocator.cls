public with sharing class animalLocator {
	public animalLocator() {}

		public String getAnimalNameById (Integer num) {
			String name;
			Http http = new Http();
			HttpRequest req = new HttpRequest();
			req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+num);
			req.setMethod('GET');

			HttpResponse response = http.send(req);

			if (response.getStatusCode() == 200) {

				Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
				Map<String, Object> animal = (Map<String,Object>) results.get('animal');

			}

			return 'string';
		}

}
