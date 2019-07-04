
function service(request, response)
{
	'use strict';
	try 
	{
		require('TVendor.CopyLineItem.CopyLineItem.ServiceController').handle(request, response);
	} 
	catch(ex)
	{
		console.log('TVendor.CopyLineItem.CopyLineItem.ServiceController ', ex);
		var controller = require('ServiceController');
		controller.response = response;
		controller.request = request;
		controller.sendError(ex);
	}
}