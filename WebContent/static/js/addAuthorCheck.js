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

	// 需要检查的对象们
	var name = document.getElementById('name');
	var age = document.getElementById('age');
	var country = document.getElementById('country');

	var nameWarn = document.getElementById('name-warn');
	var ageWarn = document.getElementById('age-warn');
	var countryWarn = document.getElementById('country-warn');

	// 正则，不会写 先空着
    var ageReg = /^\d{1,3}$/;

	// 提示消息
	var msg={
		success:{
			'name':'名字可用',
			'age':'年龄有效',
			'country':'国籍格式正确'
		},
		error:{
			'name':'名字不可为空',
			'age':'年龄无效',
			'country':'国籍不可为空'
		},
		warning:{
			'name':'必填',
			'age':'必填',
			'country':'必填'
		}
	}


	// 提示颜色
	var colors={
		'success':'green',
		'error':'red',
		'warning':''
	}

	// 返回键为字符值为验证函数的对象
	var check = (function(){
    	var checkAge = function(age){
    		if(age.length === 0 || !ageReg.test(age)){
    			return 'error';
    		}
    		else {
    			return 'success';
    		}
    	}

    	var checkCountryOrName = function(nam){
    		if(nam.length === 0){
    			return 'error';
    		}
    		else{
    			return 'success';
    		}
    	}




    	return {
    		'checkage' : checkAge ,
    		'checkcountry' : checkCountryOrName,
    		'checkname' : checkCountryOrName
    	}
	})();



	var repeatWarn = function(element ,elementWarn,status,id){
		elementWarn.innerHTML = msg[status][id];
		elementWarn.style.color = colors[status];
		element.className = 'input '+status;
	}

	//检查前
	bindEvent(name , 'focus',function(){
		repeatWarn(name,nameWarn,'warning','name');
	});
	bindEvent(age ,'focus',function(){
		repeatWarn(age,ageWarn,'warning','age');
	});
	bindEvent(country,'focus',function(){
		repeatWarn(country,countryWarn,'warning','country');
	});

	//检查后
	bindEvent(name,'blur',function(){
		var checkResult = check['checkname'](name.value);
		repeatWarn(name,nameWarn,checkResult,'name');
	});
	bindEvent(age,'blur',function(){
		var checkResult = check['checkage'](age.value);
		repeatWarn(age,ageWarn,checkResult,'age');
	});
	bindEvent(country,'blur',function(){
		var checkResult = check['checkcountry'](country.value);
		repeatWarn(country,countryWarn,checkResult,'country');
	});

    
})();



function formCheck(){
	var name = document.getElementById('name');
	var age = document.getElementById('age');
	var country = document.getElementById('country');
	
	var ageReg = /^\d{1,3}$/;
	
	var check = (function(){
    	var checkAge = function(age){
    		if(age.length === 0 || !ageReg.test(age)){
    			return 'error';
    		}
    		else {
    			return 'success';
    		}
    	}

    	var checkCountryOrName = function(name){
    		if(name.length === 0){
    			return 'error';
    		}
    		else{
    			return 'success';
    		}
    	}




    	return {
    		'checkage' : checkAge ,
    		'checkcountry' : checkCountryOrName,
    		'checkname' : checkCountryOrName
    	}
	})();
	
	
	if(check['checkage'](age.value)==='success' && check['checkcountry'](country.value)==='success' && check['checkname'](name.value)==='success'){
		return true;
	}
	else{
		alert("不可添加");
		return false;
	}

};