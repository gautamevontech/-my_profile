
  # p Parameters: '{"Envelope"=>{"xmlns:xsi"=>"http://www.w3.org/2001/XMLSchema-instance", "xmlns:xsd"=>"http://www.w3.org/2001/XMLSchema", "xmlns:soapenv"=>"http://schemas.xmlsoap.org/soap/envelope/", "Body"=>{"notifications"=>{"OrganizationId"=>"00D500000006k4VEAQ", "EnterpriseUrl"=>"https://na32.salesforce.com/services/Soap/c/37.0/00D500000006k4V", "ActionId"=>"04k3800000008c5AAA", "SessionId"=>{"xsi:nil"=>"true"}, "xmlns"=>"http://soap.sforce.com/2005/09/outbound", "PartnerUrl"=>"https://na32.salesforce.com/services/Soap/u/37.0/00D500000006k4V", "Notification"=>{"sObject"=>{"xmlns:sf"=>"urn:sobject.enterprise.soap.sforce.com", "xsi:type"=>"sf:Account", "Id"=>"00138000018bQKsAAM", "Cross_Sell_Owner__c"=>"00550000003kQOhAAM"}, "Id"=>"04l3800002nxbg4AAA"}}}}}'

task :mytest do

	result1 = {"Envelope"=>{"xmlns:xsi"=>"http://www.w3.org/2001/XMLSchema-instance", "xmlns:xsd"=>"http://www.w3.org/2001/XMLSchema", "xmlns:soapenv"=>"http://schemas.xmlsoap.org/soap/envelope/", "Body"=>{"notifications"=>{"OrganizationId"=>"00D500000006k4VEAQ", "EnterpriseUrl"=>"https://na32.salesforce.com/services/Soap/c/37.0/00D500000006k4V", "ActionId"=>"04k3800000008c5AAA", "SessionId"=>{"xsi:nil"=>"true"}, "xmlns"=>"http://soap.sforce.com/2005/09/outbound", "PartnerUrl"=>"https://na32.salesforce.com/services/Soap/u/37.0/00D500000006k4V", "Notification"=>{"sObject"=>{"xmlns:sf"=>"urn:sobject.enterprise.soap.sforce.com", "xsi:type"=>"sf:Account", "Id"=>"00138000018bQKsAAM", "Cross_Sell_Owner__c"=>"00550000003kQOhAAM"}, "Id"=>"04l3800002nxbg4AAA"}}}}}
	    
	     values = result1['Envelope'].to_h
	   p  values = values.flatten

	result = {"Envelope"=>{"xmlns:xsi"=>"http://www.w3.org/2001/XMLSchema-instance", "xmlns:xsd"=>"http://www.w3.org/2001/XMLSchema", "xmlns:soapenv"=>"http://schemas.xmlsoap.org/soap/envelope/", "Body"=>{"notifications"=>{"OrganizationId"=>"00D500000006k4VEAQ", "EnterpriseUrl"=>"https://na32.salesforce.com/services/Soap/c/37.0/00D500000006k4V", "ActionId"=>"04k3800000008c5AAA", "SessionId"=>{"xsi:nil"=>"true"}, "xmlns"=>"http://soap.sforce.com/2005/09/outbound", "PartnerUrl"=>"https://na32.salesforce.com/services/Soap/u/37.0/00D500000006k4V", "Notification"=>{"sObject"=>{"xmlns:sf"=>"urn:sobject.enterprise.soap.sforce.com", "xsi:type"=>"sf:Account", "Id"=>"00138000018bQKsAAM", "Cross_Sell_Owner__c"=>"00550000003kQOhAAM"}, "Id"=>"04l3800002nxbg4AAA"}}}}}
	
	# p "=============================================================================================="
	# p "OrganizationId =>> "+result['Envelope']['Body']['notifications']['OrganizationId']
	# p "ActionId =>> "+result['Envelope']['Body']['notifications']['ActionId']
	# p "EnterpriseUrl =>> "+ result['Envelope']['Body']['notifications']['EnterpriseUrl']

 #    p"==========================================================================="
 # 	p "PartnerUrl =>> "+result['Envelope']['Body']['notifications']['PartnerUrl']
	# p "notification_notificatins_id =>> "+result['Envelope']['Body']['notifications']['Notification']['Id']
 #    p "Id =>> "+result['Envelope']['Body']['notifications']['Notification']['sObject']['Id']
	# p "Cross_Sell_Owner__c =>> "+result['Envelope']['Body']['notifications']['Notification']['sObject']['Cross_Sell_Owner__c']
 #    p "==========================================================================="


end


Scope in AngularJS

A Scope an object and working as a interface between view and controlller in angular AngularJS.

Accessing controller scope properties into view (HTML): we can access the controller property into our views.Here we are showing by following example


<!DOCTYPE html>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

<div ng-app="myfirstApp" ng-controller="firstCtrl">
<input ng-model="mycompanyname">

<h3>{{mycompanyname}}</h3>

</div>

<script>
var app = angular.module('myfirstApp', []);
app.controller('firstCtrl', function($scope) {
    $scope.mycompanyname = "Evon Tech, Dehardun";
});
</script>

<p>The property "mycompanyname" added in the controller, and can be fetched in the view by using the {{ }} brackets.</p>

</body>
</html>

The property "mycompanyname" added in the controller, and can be fetched in the view by using the {{ }} brackets.
That means,scope is a JavaScript object having some methods and properties which are accessible from both the view & controller.


In this following demo when we change the demoname in the input box, the changes will affect the model, and the demoname property in the controller


<!DOCTYPE html>
<html>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

<div ng-app="demoApp" ng-controller="demoCtrl">

<input ng-model="demoname">

<p>My angular demo app name is: <strong>{{demoname}}</strong></p>

</div>

<script>
var app = angular.module('demoApp', []);
app.controller('demoCtrl', function($scope) {
    $scope.demoname = "Demo app";
});
</script>

<p>When we change the demoname in the input box, the changes will affect the model, and the demoname property in the controller.</p>

</body>
</html>