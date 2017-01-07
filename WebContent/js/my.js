

function haveUser(){
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	var tel = document.getElementById("tel").value;
	//var url = "Register?username="+username+"?password="+password+"?tel"+tel;
	var url = "Register?username="+username;
	var req;
	if(window.XMLHttpRequest){
		req = new XMLHttpRequest();
	}else{
		req = new ActiveXObject(Microsoft.XMLHTTP);
	}
	req.onreadystatechange = function(){
		if(req.readyState==4 && req.status==200){
			var text = req.responseText;
			if(text == "PASS"){
				alert("该用户名以被注册，换一个昵称吧！");
				name.onfacus();
				return false;
			}
		}
	};
	req.open("GET",url,true);
	req.send();
	
	
};

/**
 * 判断用户是否存在
 */
function hasUser(username){
	if(nusername == ""){
		this.focus();
		return false;
	}
	var param = "Register?username=" + username;
	$.ajax({
		url:param,
        type:"GET",
        dataType:"json",
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
        success:function(data){
            if(data == false){
                alert("您输入的用户名或密码有错！");loginform.username.focus();return false;
            }else{
                window.location.href = "index.html";//跳转到主页
            }
        }
    });
}

/**
 * 注册时表单验证
 */

function register(regiseterform){//传入表单参数
    if(loginform.username.value==""){       //验证用户名是否为空
        alert("请输入用户名！");loginform.username.focus();return false;
    }
    if(loginform.inputPassword.value==""){       //验证密码是否为空
        alert("请输入密码！");loginform.inputPassword.focus();return false;
    }
    if(loginform.confirmpwd.value==""){       //验证密码是否为空
        alert("请再次输入密码！");loginform.confirmpwd.focus();return false;
    }  
    if(loginform.inputEmail.value==""){       //验证密码是否为空
        alert("请输入邮箱！");loginform.inputEmail.focus();return false;
    }  
    var param="/wechat/UserServlet?action=login&username="+loginform.username.value+"&password="+loginform.password.value;  //将登录信息连接成字符串，作为发送请求的参数
    $.ajax({
        url:param,
        type:"POST",
        dataType:"json",
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
        success:function(data){
            if(data == false){
                alert("您输入的用户名或密码有错！");loginform.username.focus();return false;
            }else{
                window.location.href = "index.html";//跳转到主页
            }
        }
    });
}

/**
 * 登录时表单验证
 */
function login(loginform){//传入表单参数
    if(loginform.username.value==""){       //验证用户名是否为空
        alert("请输入用户名！");loginform.username.focus();return false;
    }
    if(loginform.password.value==""){       //验证密码是否为空
        alert("请输入密码！");loginform.password.focus();return false;
    }   
    var param="/wechat/UserServlet?action=login&username="+loginform.username.value+"&password="+loginform.password.value;  //将登录信息连接成字符串，作为发送请求的参数
    $.ajax({
        url:param,
        type:"POST",
        dataType:"json",
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
        success:function(data){
            if(data == false){
                alert("您输入的用户名或密码有错！");loginform.username.focus();return false;
            }else{
                window.location.href = "index.html";//跳转到主页
            }
        }
    });
}