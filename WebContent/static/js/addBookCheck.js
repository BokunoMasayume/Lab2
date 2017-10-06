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


	var  isbn = document.getElementById('isbn');
	var title = document.getElementById('title');
	var name = document.getElementById('name');
	var publisher = document.getElementById('publisher');
	var price = document.getElementById('price');
	var pyear = document.getElementById('pyear');
	var pmonth = document.getElementById('pmonth');
	var pday = document.getElementById('pday');

	var isbnWarn = document.getElementById('isbn-warn');
	var titleWarn = document.getElementById('title-warn');
	var nameWarn = document.getElementById('name-warn');
	var publisherWarn = document.getElementById('publisher-warn');
	var dateWarn = document.getElementById('date-warn');
	var priceWarn = document.getElementById('price-warn');

	//正则
	var isbnReg=/^(978-(\d{1,5})-(\d{2,5})-(\d{1,6})-\d)$/;
	var priceReg=/^(\d+)(\.\d+)?$/;
	var yearReg=/^\d{4}$/;
	var monthReg=/^(0?[1-9]|1[0-2])$/;
	var dayReg=/^((0?[1-9])|((1|2)[0-9])|30|31)$/;
	var nameReg=/^\d+$/;

	var msg={
		success:{
			'isbn' : 'ISBN格式正确',
			'title' : '标题可用',
			'name' : '作者ID可用',
			'publisher' : '出版商可用',
			'date' : '日期格式正确',
			'price' : '价格格式正确'
		},
		error:{
			'isbn' : 'ISBN格式不正确',
			'title':'标题不可为空',
			'name':'作者ID格式不正确',
			'publisher':'出版社不可为空',
			'date' : '日期格式不正确',
			'price' : '价格格式不正确'
		},
		warning:{
			'isbn' : '必填',
			'title' : '必填',
			'name' : '必填',
			'publisher' : '必填',
			'date' : '必填',
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

		var checkISBN = function(isbn){
			if(isbn.length===0 || !isbnReg.test(isbn)){
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

		var checkYear = function(y){
			if(!yearReg.test(y)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		var checkMonth = function(m){
			if(!monthReg.test(m)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		var checkDay = function(d){
			if(!dayReg.test(d)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		var checkID = function(i){
			if(i.length===0 || !nameReg.test(i)){
				return 'error';
				
			}
			else{
				return 'success';
			}
		}

		return {
			'checknotnull':checkNotNull,
			'checkisbn':checkISBN,
			'checkprice':checkPrice,
			'checkyear':checkYear,
			'checkmonth':checkMonth,
			'checkday':checkDay,
			'checkid':checkID
		}

	})();


	var repeatWarn = function(element,elementWarn,status,id){
		elementWarn.innerHTML = msg[status][id];
		elementWarn.style.color = colors[status];
		element.className = 'input '+status;
	}

	bindEvent(isbn,'focus',function(){
		repeatWarn(isbn,isbnWarn,'warning','isbn');
	});
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
	bindEvent(pyear,'focus',function(){
		repeatWarn(pyear,dateWarn,'warning','date');
	});
	bindEvent(pmonth,'focus',function(){
		repeatWarn(pmonth,dateWarn,'warning','date');
	});
	bindEvent(pday,'focus',function(){
		repeatWarn(pday,dateWarn,'warning','date');
	});


	bindEvent(isbn,'blur',function(){
		var checkResult = check['checkisbn'](isbn.value);
		repeatWarn(isbn,isbnWarn,checkResult,'isbn');
	});
	bindEvent(title ,'blur',function(){
		var checkResult = check['checknotnull'](title.value);
		repeatWarn(title,titleWarn,checkResult,'title');
	});
	bindEvent(name,'blur',function(){
		var checkResult = check['checkid'](name.value);
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
	bindEvent(pyear,'blur',function(){
		var checkResult = check['checkyear'](pyear.value);
		repeatWarn(pyear,dateWarn,checkResult,'date');
	});
	bindEvent(pmonth,'blur',function(){
		var checkResult = check['checkmonth'](pmonth.value);
		repeatWarn(pmonth,dateWarn,checkResult,'date');
	});
	bindEvent(pday,'blur',function(){
		var checkResult = check['checkday'](pday.value);
		repeatWarn(pday,dateWarn,checkResult,'date');
	});


	

})();


function formCheck(){
	var  isbn = document.getElementById('isbn');
	var title = document.getElementById('title');
	var name = document.getElementById('name');
	var publisher = document.getElementById('publisher');
	var price = document.getElementById('price');
	var pyear = document.getElementById('pyear');
	var pmonth = document.getElementById('pmonth');
	var pday = document.getElementById('pday');


	//正则
	var isbnReg=/^(978-(\d{1,5})-(\d{2,5})-(\d{1,6})-\d)$/;
	var priceReg=/^(\d+)(\.\d+)?$/;
	var yearReg=/^\d{4}$/;
	var monthReg=/^(0?[1-9]|1[0-2])$/;
	var dayReg=/^((0?[1-9])|((1|2)[0-9])|30|31)$/;
	var nameReg=/^\d+$/;

    var check = (function(){
		var checkNotNull = function(value){
			if(value.length === 0){
				return 'error';
			}
			else{
				return 'success';
			}
		}

		var checkISBN = function(isbn){
			if(isbn.length===0 || !isbnReg.test(isbn)){
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

		var checkYear = function(y){
			if(!yearReg.test(y)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		var checkMonth = function(m){
			if(!monthReg.test(m)){
				return 'error';
			}
			else{
				return 'success';
			}
		}
		var checkDay = function(d){
			if(!dayReg.test(d)){
				return 'error';
			}
			else{
				return 'success';
			}
		}

		var checkID = function(i){
			if(i.length===0 || !nameReg.test(i)){
				return 'error';
				
			}
			else{
				return 'success';
			}
		}

		return {
			'checknotnull':checkNotNull,
			'checkisbn':checkISBN,
			'checkprice':checkPrice,
			'checkyear':checkYear,
			'checkmonth':checkMonth,
			'checkday':checkDay,
			'checkid':checkID
		}

	})();


	if(check['checkisbn'](isbn.value)==='success' && check['checknotnull'](title.value)==='success' && check['checkid'](name.value)==='success' && check['checknotnull'](publisher.value)==='success' && check['checkprice'](price.value)==='success' && check['checkyear'](pyear.value)==='success' &&check['checkmonth'](pmonth.value)==='success' && check['checkday'](pday.value)=='success'){
// alert('ok');
		return true;
	}
	else{
		alert("不可添加");
		return false;
	}
};
