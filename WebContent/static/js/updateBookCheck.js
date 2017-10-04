(function(){

	// 绑定事件函数
	var bindEvent = function(element,type,handle){
		if(element.addEventLister){
			element.addEventLister(type,handle,false);
		}else if(element.attachEvent){
			element.attachEvent('on'+type,handle);
		}else{
			element['on'+type] = handle;
		}
	}



	var title = document.getElementById('title');
	var name = document.getElementById('name');
	var publisher = document.getElementById('publisher');
	var price = document.getElementById('price');
	var pdate = document.getElementById('pdate');

	
	var titleWarn = document.getElementById('title-warn');
	var nameWarn = document.getElementById('name-warn');
	var publisherWarn = document.getElementById('publisher-warn');
	var dateWarn = document.getElementById('date-warn');
	var priceWarn = document.getElementById('price-warn');

	//正则
	var isbnReg=/^((\d{5})-(\d)-(\d{3})-(\d))$/;
	var priceReg=/^(\d+)(\.\d+)?$/;
	var dateReg=/^(\d{4})-(0?[1-9]|1[0-2])-((0?[1-9])|((1|2)[0-9])|30|31)$/;
	

	var msg={
		success:{
			'isbn' : 'ISBN格式正确',
			'title' : '标题可用',
			'name' : '作者姓名可用',
			'publisher' : '出版商可用',
			'date' : '日期格式正确',
			'price' : '价格格式正确'
		},
		error:{
			'isbn' : 'ISBN格式不正确',
			'title':'标题不可为空',
			'name':'作者姓名不可为空',
			'publisher':'出版社不可为空',
			'date' : '日期格式不正确,需为yyyy-mm-dd',
			'price' : '价格格式不正确'
		},
		warning:{
			'isbn' : '必填',
			'title' : '必填',
			'name' : '必填',
			'publisher' : '必填',
			'date' : '必填，格式为 yyyy-mm-dd',
			'price' : '必填',
		}
	}

	var colors={
		'success':'green',
		'error':'red',
		'warning':''
	}

	var check = (function(){
		var checkNotNull = function(value){
			if(value.length === 0){
				return 'error';
			}
			else{
				return 'success';
			}
		}


		var checkPrice = function(price){
			if(!priceReg.test(price)){
				return 'error';
			}
			else{
				return 'success';
			}
		}

		var checkDate = function(y){
			if(!dateReg.test(y)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		

		return {
			'checknotnull':checkNotNull,
			'checkprice':checkPrice,
			'checkdate':checkDate
		}

	})();


	var repeatWarn = function(element,elementWarn,status,id){
		elementWarn.innerHTML = msg[status][id];
		elementWarn.style.color = colors[status];
		element.className = 'input '+status;
	}

	
	bindEvent(title,'focus',function(){
		repeatWarn(title,titleWarn,'warning','title');
	});
	bindEvent(name,'focus',function(){
		repeatWarn(name,nameWarn,'warning','name');
	});
	bindEvent(publisher,'focus',function(){
		repeatWarn(publisher,publisherWarn,'warning','publisher');
	});
	bindEvent(price,'focus',function(){
		repeatWarn(price,priceWarn,'warning','price');
	});
	bindEvent(pdate,'focus',function(){
		repeatWarn(pdate,dateWarn,'warning','date');
	});
	


	
	bindEvent(title ,'blur',function(){
		var checkResult = check['checknotnull'](title.value);
		repeatWarn(title,titleWarn,checkResult,'title');
	});
	bindEvent(name,'blur',function(){
		var checkResult = check['checknotnull'](name.value);
		repeatWarn(name,nameWarn,checkResult,'name');
	});
	bindEvent(publisher,'blur',function(){
		var checkResult = check['checknotnull'](publisher.value);
		repeatWarn(publisher,publisherWarn,checkResult,'publisher');
	});
	bindEvent(price,'blur',function() {
		var checkResult = check['checkprice'](price.value);
		repeatWarn(price,priceWarn,checkResult,'price');
	});
	bindEvent(pdate,'blur',function(){
		var checkResult = check['checkdate'](pdate.value);
		repeatWarn(pdate,dateWarn,checkResult,'date');
	});
	


	

})();


function formCheck(){
	
	var title = document.getElementById('title');
	var name = document.getElementById('name');
	var publisher = document.getElementById('publisher');
	var price = document.getElementById('price');
	var pdate = document.getElementById('pdate');


	//正则
	var isbnReg=/^((\d{5})-(\d)-(\d{3})-(\d))$/;
	var priceReg=/^(\d+)(\.\d+)?$/;
	var dateReg=/^(\d{4})-(0?[1-9]|1[0-2])-((0?[1-9])|((1|2)[0-9])|30|31)$/;


    var check = (function(){
		var checkNotNull = function(value){
			if(value.length === 0){
				return 'error';
			}
			else{
				return 'success';
			}
		}


		var checkPrice = function(price){
			if(!priceReg.test(price)){
				return 'error';
			}
			else{
				return 'success';
			}
		}

		var checkDate = function(y){
			if(!dateReg.test(y)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		

		return {
			'checknotnull':checkNotNull,
			'checkprice':checkPrice,
			'checkdate':checkDate
		}

	})();


	if( check['checknotnull'](title.value)==='success' && check['checknotnull'](name.value)==='success' && check['checknotnull'](publisher.value)==='success' && check['checkprice'](price.value)==='success' && check['checkdate'](pdate.value)==='success'){
// alert('ok');
		return true;
	}
	else{
		alert("不可添加");
		return false;
	}
};
