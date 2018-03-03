<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
	</head>
	<body>
		<form action="${pageContext.request.contextPath }/registerServlet" onsubmit="return check()" method="post">
			<table id="mtb" align="center" border="1px" cellpadding="0px" cellspacing="0px" width="80%">
				<thead></thead>
					<caption>用户注册</caption>
				<tbody>
				<tr id="tr1"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";
					>
					<td width="30%" align="center">用户名</td>
					<td width="70%" >
						<input type="text" id="ue" name="username"/>
						<span id="sp1"></span>
					</td>
				</tr>
				<tr
					id="tr2"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">密码</td>
					<td width="70%" >
						<input type="password" id="pd" name="password"/>
						<span id="sp2"></span>
					</td>
				</tr>
				<tr
					id="tr3"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">确认密码</td>
					<td width="70%" >
						<input type="password" id="repd" />
						<span id="sp3"></span>
					</td>
				</tr>
				<tr
					id="tr4"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">真实姓名</td>
					<td width="70%" >
						<input type="text" name="name" id="ne"/>
						<span id="sp4"></span>
					</td>
				</tr>
				<tr
					id="tr5"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">邮箱</td>
					<td width="70%" >
						<input type="email" id="el" name="email"/>
						<span id="sp5"></span>
					</td>
				</tr>
				<tr
					id="tr6"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">
					生日
					</td>
					<td width="70%" > 
						<input type="date" id="by" name="birthday"/>
						<span id="sp6"></span>
					</td>
				</tr>
				<tr id="tr7"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">性别</td>
					<td width="70%" >
						<input type="radio" name="sex" value="male"/>男
						<input type="radio" name="sex" value="female"/>女
						<span id="sp7"></span>
					</td>
				</tr>
				<tr
					id="tr8"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">职业</td>
					<td width="70%" >
						<select id="job">
							<option>--请选择--</option>
							<option name="j">攻城狮</option>
							<option name="j">码农</option>
							<option name="j">程序猿</option>							
						</select>
						<span id="sp8"></span>
					</td>
				</tr>
				<tr
					id="tr9"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">城市</td>
					<td width="70%" >
						<select onchange="upd(this.value)">
							<option>--请选择--</option>
							<option value="0">浙江省</option>
							<option value="1">江苏省</option>
							<option value="2">安徽省</option>
							<option value="3">北京市</option>
							<option value="4">上海市</option>
							<option value="5">广东省</option>
						</select>
						<select id="provice">
							
						</select>
					</td>
				</tr>
				<tr
					id="tr10"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">爱好</td>
					<td width="70%" >
						<input type="checkbox" name="hobbyAll"/>全选
						<input type="checkbox" name="hobby"/>吃饭
						<input type="checkbox" name="hobby"/>睡觉
						<input type="checkbox" name="hobby"/>打豆豆						
					</td>
				</tr>
				<tr width="50%"
					id="tr11"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">简介</td>
					<td width="70%" >
						<textarea></textarea>
					</td>
				</tr>
				<tr width="50%"
				id="tr12"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">头像</td>
					<td width="70%" >
						<input type="file" />
					</td>
				</tr>
				<tr width="50%"
				id="tr13"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">你的头像</td>
					<td width="70%" align="center">
						<img src="img/b2.jpg" width="100%"/>
					</td>
				</tr>
				<tr width="50%"
				id="tr14"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td width="30%" align="center">验证码</td>
					<td width="70%" align="center">
						<input type="text" name="checkcode" width="50%">
						<img src="${pageContext.request.contextPath}/checkImgServlet" onclick="changeImg(this)" width="50%"/>
						<c:if test="${empty message }">
						</c:if>
						<c:if test="${!empty message }">
							${message }
						</c:if>
					</td>
				</tr>
				</tbody>
				<tfoot>
				<tr width="50%"
					id="tr15"
					onmouseover="change(this.id,'over')";
					onmouseout="change(this.id,'out')";>
					<td colspan="2" width="100%">
						<table width="100%">
							<tr width="100%">
								<td width="33%" align="right">
									<input type="submit" value="提交"/>
						
								</td>	
								<td width="33%" align="middle">
									<input type="reset"  value="重置"/>
								</td>
								<td width="33%" align="left"> 
										<input type="button"  value="返回"/>
								</td>
							</tr>
						</table>
					</td>					
				</tr>				
				</tfoot>
			</table>
		</form>
	</body>
	<script>
	
		function check(){
			var username=document.getElementById("ue");
			var password=document.getElementById("pd");
			var repassword=document.getElementById("repd");
			var name=document.getElementById("ne");
			var email=document.getElementById("el");
			var birthday=document.getElementById("by");
			var sexs=document.getElementsByName("sex");				
			var ueV=username.value;
			var pdV=password.value; 
			var repdV=repassword.value;
			var neV=name.value;
			var elV=email.value;
			var byV=birthday.value;
			var sp1=document.getElementById("sp1");
			var sp2=document.getElementById("sp2");
			var sp3=document.getElementById("sp3");
			var sp4=document.getElementById("sp4");
			var sp5=document.getElementById("sp5");
			var sp6=document.getElementById("sp6");
			var sp7=document.getElementById("sp7");
			var sp8=document.getElementById("sp8");
			sp1.innerHTML="";
			sp2.innerHTML="";
			sp3.innerHTML="";
			sp4.innerHTML="";
			sp5.innerHTML="";
			sp6.innerHTML="";
			sp7.innerHTML="";
			sp8.innerHTML="";
			if(ueV==null||ueV==""){
				sp1.innerHTML="<font color='red'>用户名不能为空</font>";
				return false;
			}
			if(pdV==null||pdV==""){
				sp2.innerHTML="<font color='red'>密码不能为空</font>";
				return false;
			}
			if(repdV==null||repdV==""){
				sp3.innerHTML="<font color='red'>确认密码不能为空</font>";
				return false;
			}
			if(repdV!=pdV){
				sp3.innerHTML="<font color='red'>密码不一致</font>";
				return false;
			}
			if(neV==null||neV==""){
				sp4.innerHTML="<font color='red'>真实姓名不能为空</font>";
				return false;
			}
			if(elV==null||elV==""){
				sp5.innerHTML="<font color='red'>邮箱不能为空</font>";
				return false;
			}
			var reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
			if(!reg.test(elV)){
				sp5.innerHTML="<font color='red'>格式错误</font>";
				return false;
			}
			if(byV==null||byV==""){
				sp6.innerHTML="<font color='red'>生日不能为空</font>";
				return false;
			}
			var sexRes=false;
			for(var i=0;i<sexs.length;i++){				
				if(sexs[i].checked){
					sexRes=true;
				}
			}
			if(!sexRes){
				sp7.innerHTML="<font color='red'>性别不能为空</font>";
				return false;
			}
			if(!jobJuge()){
				return false;
			}			
			else{
				return true;
			}
		}
		function jobJuge(){		
			var opts1=document.getElementsByName("j");	
			var jobRes=false;
			for(var i=0;i<opts1.length;i++){			
				if(opts1[i].selected){				
					jobRes=true;
					}
			}
			if(!jobRes){
			sp8.innerHTML="<font color='red'>职业不能为空</font>";
			return false;
			}
			else {
				return true;
			}
		}
		
		function change(id,info){
			var tr=document.getElementById(id);
			if(info=="over"){
				tr.style.backgroundColor="blueviolet";
			}
			if(info=="out"){
				tr.style.backgroundColor="white";
			}
		}
		function changeImg(obj){
			obj.src="/day16_showProducts/checkImgServlet?time="+new Date().getTime();
		}
		function upd(val){
			var provice=document.getElementById("provice");
			provice.length=0;
			var city=new Array();
			city[0]=new Array("杭州市","宁波市","温州市","嘉兴市","湖州市","绍兴市","金华市","衢州市","舟山市","台州市","丽水市");
			city[1]=new Array("南京市","无锡市","徐州市","常州市","苏州市","南通市","连云港市","淮安市","盐城市","扬州市","镇江市","泰州市","宿迁市");
			city[2]=new Array("合肥市","芜湖市","蚌埠市","淮南市","马鞍山市","淮北市","铜陵市","安庆市","黄山市","滁州市","阜阳市","宿州市","巢湖市","六安市","亳州市","池州市","宣城市");			
			city[3]=new Array("东城区","西城区","崇文区","宣武区","朝阳区","丰台区","石景山区","海淀区门","头沟区","房山区","通州区","顺义区","昌平区","大兴区","怀柔区","平谷区","密云县","延庆县");
			city[4]=new Array("黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区","浦东新区","金山区","松江区","青浦区","南汇区","奉贤区","崇明县");
			city[5]=new Array("广州市","韶关市","深圳市","珠海市","汕头市","佛山市","江门市","湛江市","茂名市","肇庆市","惠州市","梅州市","汕尾市","河源市","阳江市","清远市","东莞市","中山市","潮州市","揭阳市","云浮市");
			for(var i=0;i<city[val].length;i++){
				var textNode=document.createTextNode(city[val][i]);
				var optNode=document.createElement("option");
				optNode.appendChild(textNode);
				provice.appendChild(optNode);
			}			
		}
		window.onload=function(){
			var hobbyAll=document.getElementsByName("hobbyAll");
			var hobbys=document.getElementsByName("hobby");
			hobbyAll[0].onchange=function(){
				if(hobbyAll[0].checked){
					for(var i=0;i<hobbys.length;i++){
						hobbys[i].checked=true;
					}
				}
				else{
						for(var i=0;i<hobbys.length;i++){
						hobbys[i].checked=false;
					}					
				}
			}
			for(var i=0;i<hobbys.length;i++){
			hobbys[i].onchange=function(){
				var res=true;
				for(var j=0;j<hobbys.length;j++){
						if(hobbys[j].checked!=true){
							res=false;
						}
					}
				if(res){
					hobbyAll[0].checked=true;
					}
				else{
					hobbyAll[0].checked=false;
					}
				}
			}	
		};	
	</script>
</html>
