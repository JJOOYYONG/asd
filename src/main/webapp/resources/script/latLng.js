var latLngService = (function () {
	
	function unum(email, callback, error) {
		console.log('get unum...');
		
		$.ajax({
			//aync: false,
			type: 'get',
			url: '/latLng/getUnum/'+email+'.json',
			success: function (result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error: function (xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}
	
	function add(latLng, callback, error) {
		console.log('add latLng...');
		
		$.ajax({
			//aync: false,
			type: 'post',
			url: '/latLng/insert',
			data: JSON.stringify(latLng),
			contentType: 'application/json; charset=utf-8',
			success: function (result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error: function (xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}
	
	function remove(unum, callback, error) {
		console.log('remove latLng...');
		
		$.ajax({
			//aync: false,
			type: 'delete',
			url: '/latLng/'+unum,
			success: function (result, status, xhr) {
				if (collback) {
					collback(result);
				}
			},
			error: function (xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}
	
	function getList(param, callback, error) {
		console.log('get List...');
		var unum = param.unum;
		$.ajax({
			//aync: false,
			type: 'get',
			url: '/latLng/getList/'+unum+'.json',
			success: function (result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error:function (xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}
	
	return {
		add: add,
		unum: unum,
		remove: remove,
		getList: getList
	}
})(); // latLngService