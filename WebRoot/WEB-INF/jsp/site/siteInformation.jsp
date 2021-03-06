<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>

</title>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/common.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/default/easyui.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/icon.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Styles/default.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath}/Scripts/uploadify/uploadify.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/Scripts/uploadify/jquery.uploadify-3.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/layer/skin/layer.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath}/Scripts/uploadfile.js"></script>
    
   
  	
   
    <style type="text/css">
        a {
         color:black;
         text-decoration:none;}
        
			* {margin:0;padding:0;}
		.pwenzi{
            font-size: 10px;
            color: #787878;
		}
		.tr1{
			width: 150px; 
			text-align: center; 
			font-size: 16px;
			
		}
		.addressChoice{
			width:100%;
			height: 83%;
			margin: 15px 0 0 0 ;
			padding: 0;
			border-top: 1px solid #ccc;
			overflow:auto;
		}
		.addressShow{
			border-bottom: 1px solid #ccc;
		}
		.addressShow:hover{
			background-color: #e0e0e0;
			cursor: pointer;
		}
		.addressChoiceName{
			margin:6px 6px 3px 6px;
			font-size: 15px;
			color: #272727;
			font-weight: 500;
		}
		.addressChoiceData{
			margin:3px 6px 6px 8px;
			font-size: 12px;
			color: #5cadad;
		}
		.reminder{
			font-size: 10px;
			color: #ff7575;
		}
	</style>
         
      
    </head>
<body onload="" >
    
         <!-- 封装视频的url -->
        <input type="hidden" id="logourl1" >
    	<input type="hidden" id="location"    />	
        <div style="width: 850px; margin: 0 auto">
		<div id="headerPanel" class="easyui-panel">
        <form id="form_edit1" name="form_edit" enctype="multipart/form-data">
            <input type="hidden" id="siteid" name="siteid">
            <table style="text-align: content;margin: 10px;" >
                <tr style="height: 55px"  >
               		<td class="tr1" >所在省份</td> 
                    <td>
						<input id="province" name="province" class="easyui-combobox" style="width: 250px;height:27px;"  panelheight="100px" editable="editable"  />
                    </td>
               		 
                    <td rowspan="3" colspan="2" style="text-align: center;" align="center" >
                        <span id="inputStr" style="display: none;"></span>
                        <div style="width: 100%; position: relative; text-align: center; margin-top: 10px;">
                            <img id="imgShow" style="width: 150px; height: 120px; cursor: pointer;" src="" />
                            <input type="hidden" id="sitelogo" name="sitelogo"  />
                            <p class="pwenzi"  > 封面图(150*194)</p>
                        </div>
                       	
                    </td>
                </tr>
                <tr style="height: 55px" >
                	<td class="tr1" >所在市级</td> 
                    <td>
						<input id="city" name="city" class="easyui-combobox" style="width: 250px;height:27px;" panelheight="100px" editable="editable" />
                    </td>
                    
                  
                </tr>
                <tr style="height: 55px"  >
                 	<td class="tr1" >所在地区</td> 
                    <td colspan="3" >
						<input id="area" name="area" class="easyui-combobox" style="width: 250px;height:27px;" panelheight="100px" editable="editable" />
                    </td>
                    
                </tr>
                <tr style="height: 55px"  >
                    
                    <td class="tr1" ><span style="color: red;">*</span>搜索地址<span style="color: red;">*</span></td> 
                    <td colspan="3" >
						<input id="address" name="address" class="easyui-validatebox" style="width: 40rem;height:27px;" disabled="disabled"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="easyui-linkbutton" onclick="searchAddressPage()"  data-options="iconCls:'icon-search'"> 搜索地址 </a>
                    </td>
                </tr>                                                           
                <tr style="height: 55px"  >
                     <td class="tr1" >站点账号</td> 
                    <td>
						<input id="count" class="easyui-validatebox" style="width: 250px;height: 25px"  disabled="disabled"  />
                           
                    </td>
                     <td class="tr1" >站点密码</td> 
                    <td>
						<input id="pwd" class="easyui-validatebox" style="width: 250px;height: 25px"  disabled="disabled"  />
                           
                    </td>
                </tr>
                
                <tr style="height: 55px" >
                    <td class="tr1" >站点名称:</td>
                    <td>
						<input id="sitename" name="sitename" class="easyui-validatebox"  style="width: 250px;height: 25px"  />	
                    </td>
                    <td class="tr1" >
                    	站点简称
                    </td>
                    <td>
                       <input id="siteabbreviation" name="siteabbreviation" class="easyui-validatebox"   style="width: 250px;height: 25px"  />
                    </td>
                </tr>
                <tr style="height: 55px" >
                     <td class="tr1" >负责人姓名</td>
                    <td>
						<input id="dutypeople" name="dutypeople" class="easyui-validatebox"  style="width: 250px;height: 25px"  />
                           
                    </td>
                    <td class="tr1" >负责人电话</td> 
                    <td>
						<input id="dutyphone" name="dutyphone" class="easyui-validatebox"  style="width: 250px;height: 25px"  />
                           
                    </td>
                </tr>
                <tr style="height: 55px">
					
					    <td colspan="4">
							<div style="width: 400px; margin: 0 auto;margin-left: 250px;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="javascript:;" class="easyui-linkbutton" onclick="Submit()" style="height: 30px; width: 120px;">
								<span style="font-size: 26px; color: #F08833">保存资料</span></a>
							    <a  href="javascript:;" class="easyui-linkbutton" onclick="JumpPage()" style="height: 30px; width: 120px;">
								<span style="font-size: 26px; color: #F08833">修改密码</span> </a>
									
							</div>
						</td>
					</tr>
            </table>
        
        </form>
        <div id="dialogInfopwd" class="easyui-dialog" title="修改密码" style="width: 350px; height: 180px;" data-options="modal:true,closed:true,buttons:'#btnFightTypepwd'"   closable="false">
			<form id="formFight">
				<table style="margin: 10px;" class="ticketTable" >
	                 <tr>
	                     <td>新密码</td>
	                     <td>
	                          <input id="newpwd" name="newpwd" class="easyui-validatebox" style="width: 196px" data-options="required:'True'"/>
	                     </td>
	                 </tr>
	                 <tr>
	                     <td>确认新密码</td>
	                     <td>
	                     	<input id="newtopwd" name="newtopwd" class="easyui-validatebox" style="width: 196px"  data-options="required:'True'"  />
	                     </td>
	                 </tr>      
			     </table>
			</form>
			 <div id="btnFightTypepwd">
		         <a href="javascript:void;" class="easyui-linkbutton" onclick="addBodypwd()">提交</a>
		         <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialogInfopwd').dialog('close'); return false;">取消</a>
		     </div>
		 </div>
     </div>
     </div>
    <div id="searchAddressPage" class="easyui-dialog" title="查询位置" style="width: 400px; height: 470px; padding: 10px; " data-options="modal:true,closed:true">
    	<!--查询条件--><span class="reminder" >温馨提示：选好省分、城市、地区 会更好的搜寻</span>
	    <div class="easyui-panel">
	        <form id="fromSearch">
	            <table>
	                <tr>
	                    <td>
	                     	<input id="addressPage" name="addressPage" placeholder="输入站点全名称即可！"  class="easyui-validatebox" style="width: 200px;height: 20px;"  editable="editable" />
	                    </td>
	                    <td>
	                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="Search()">查询</a>
	                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-clear'" onclick="Clear()">清空</a>
	                    </td>
	                </tr>
	            </table>
	        </form>
	    </div>
	    <div class="addressChoice" >
	    	<table id="tbAddressChoice"></table>
	    </div>
    </div>
    
    <script type="text/javascript">
	  //修改站点省
	    function upDataQueryProvince(){
			$('#province').combobox({
	       	 	valueField: 'id',
	            textField: 'name',
	            url: 'selectAllLinkage.do?parentid=0',
	            onSelect: function (record) {
	            	upDataQueryCity(record.id);
	            }
	       });
		}
	    //修改站点市
	    function upDataQueryCity(id){
			$('#city').combobox({
	       	 	valueField: 'id',
	            textField: 'name',
	            url: 'selectAllLinkage.do?parentid='+id,
	            onSelect: function (record) {
	            	upDataArea(record.id);
	            }
	       });
		}
	    //修改站点区县
	    function upDataArea(id){
			$('#area').combobox({
	       	 	valueField: 'id',
	            textField: 'name',
	            url: 'selectAllLinkage.do?parentid='+id
	            /* onSelect: function (record) {
	            	//upDataStreet(record.id);
	            } */
	       });
		}
	    //修改街道
	    /* function upDataStreet(id){
	    	$('#street').combobox({
	       	 	valueField: 'id',
	            textField: 'name',
	            url: 'selectAllLinkage.do?parentid='+id,
	            
	       });
	    } */
	function Submit(){
        
        var json = {}; 
        json.siteid=$("#siteid").val();
        json.province=$("#province").combobox("getValue");
        json.city=$("#city").combobox("getValue");
        json.area=$("#area").combobox("getValue");
        //json.street=$("#street").combobox("getValue");
        json.sitename=$("#sitename").val();
        json.siteabbreviation=$("#siteabbreviation").val();
        json.dutypeople=$("#dutypeople").val();
        json.dutyphone=$("#dutyphone").val();
        json.address=$("#address").val();
        json.sitelogo=$("#sitelogo").val();
        var location = $("#location").val();
        var locations = location.split(",");
        json.lng = locations[0];
        json.lat = locations[1];
         $.post("updataBySiteId.do", json, function (msg) {
         	if (msg == "1") {
         	   $.messager.alert('提示', '操作成功', 'info');
         	  dataLoad();
             }else {
                 $.messager.alert('提示', '操作失败', 'error');
             }
         });
             
   
    }
	//清空数据
	function wipeData(){
		$("#siteid").val("");
		$("#province").combobox("setValue","");
        $("#city").combobox("setValue","");
        $("#area").combobox("setValue","");
        //$("#street").combobox("getValue","");
        $("#sitename").val("");
        $("#siteabbreviation").val("");
        $("#dutypeople").val("");
        $("#dutyphone").val("");
        $("#address").val("");
        document.getElementById("imgShow").src = "";
        $("#sitelogo").val("");
        $('#count').val("");
        $('#pwd').val("");
        $("#location").val("");
	}
	function dataLoad(){
		wipeData();
		var id = ${user.siteid}
		$("#siteid").val(id);
		 $.post("selectBySiteidUpdatap.do", "siteid="+id, function (data) {
			 if (data != "0") {
                 var dataObj = eval("(" + data + ")");
                 //修改站点省
                 upDataQueryProvince();
                 //修改站点市
                 if(dataObj.province != null)
                 upDataQueryCity(dataObj.province);
                 //修改站点区县
                 if(dataObj.city != null)
                 upDataArea(dataObj.city);
                 //修改街道
                /*  if(dataObj.area != null)
                 upDataStreet(dataObj.area); */
                 $("#province").combobox("setValue",dataObj.province);
                 $("#city").combobox("setValue",dataObj.city);
                 $("#area").combobox("setValue",dataObj.area);
                 //$("#street").combobox("setValue",dataObj.street);
                 $("#sitename").val(dataObj.sitename);
                 $("#siteabbreviation").val(dataObj.siteabbreviation);
                 $("#dutypeople").val(dataObj.dutypeople);
                 $("#dutyphone").val(dataObj.dutyphone);
                 $("#address").val(dataObj.address);
                 document.getElementById("imgShow").src = dataObj.sitelogo;
                 $("#sitelogo").val(dataObj.sitelogo);
                 $('#count').val(dataObj.siteaccount);
                 $('#pwd').val(dataObj.sitepwd);
                 $("#location").val(dataObj.location);
             }
             else {
                 $.messager.alert('提示', '操作失败', 'error');
             }
	       });
	}
	
	//跳回跳转过来的页面
	function JumpPage() {
		$("#newpwd").val("");
		$("#newtopwd").val("");
		$("#dialogInfopwd").dialog("open");
	}
	function addBodypwd(){
		var newpwd = $("#newpwd").val();
		var newtopwd = $("#newtopwd").val();
		if (!$("#formFight").form("validate")) {
            return;
        }else{
        	if(newpwd == newtopwd){
        		var json = {};
        		json.siteid = $("#siteid").val();
        		json.sitepwd =  newtopwd;
        		$.post("updataBySiteId.do", json, function (msg) {
	                if (msg == "1") {
	                	$.messager.alert('提示', '操作成功 。。三秒后自动跳转', 'info');
	                 	setTimeout(function(){window.parent.location.href = "index.jsp"; }, 3000);
	                }else {
	                	$.messager.alert('提示', '操作失败', 'error');
	                }
                });
        	}else{
   				$.messager.alert('提示', '密码不一致', 'error');
   			}
        }
			
		
	}
	//搜索区域里的站点位置
	//站点内容清空
	function Clear(){
		$("addressPage").val("");
	}
	var addressSearch = 0;
	function searchAddressPage(){
		$("#searchAddressPage").dialog("open");
        var area = $("#area").combobox("getValue");
        var city = $("#city").combobox("getValue");
        var province = $("#province").combobox("getValue");
        if(!(area == null || area === undefined || area == '')){
        	addressSearch = area 
        }else  if(!(city == null || city === undefined || city == '')){
        	addressSearch = city
        }else  if(!(province == null || province === undefined || province == '')){
        	addressSearch = province
        }
	}
	function Search(){
		var addressPage = $("#addressPage").val();
		$(".addressChoice").html("");
		if(!(addressPage == null || addressPage === undefined || addressPage == '')){
			if(addressSearch != 0){
				$.post("addressSiteSearch.do", "addressPage="+addressPage+"&addressSearch="+addressSearch ,function (data) {
					var obj2=eval("("+data+")"); 
					$(obj2).each(function(index,list){   
						console.log(list.name)
						var operation = '<div class="addressShow" onclick="addressChoice(&#34;'+list.id+'&#34;)"  >';
							operation += '<input type="hidden" id="'+list.id+'Name" value="'+list.name+'" >';
							operation += '<input type="hidden" id="'+list.id+'Address" value="'+list.address+'" >';
							operation += '<input type="hidden" id="'+list.id+'Location" value="'+list.location+'" >';
							operation += '<div class="addressChoiceName" >'+list.name+'</div>';
							operation += '<div class="addressChoiceData" ><div class="dataRegion">'+list.cityname+'-'+list.adname+'-'+list.address+'</div>';
							operation += '</div></div>';
						$(".addressChoice").append(operation);
					});	
				});
			}else{
				$.messager.alert('提示', '请选择一个省分或者城市', 'error');
			}
		}else{
			$.messager.alert('提示', '请输入站点名称', 'error');
		}
	}
	function addressChoice(id){
		var name = $("#"+id+"Name").val();
		var address = $("#"+id+"Address").val();
		var location = $("#"+id+"Location").val();
		$("#sitename").val(name);
		$("#location").val(location);
		$("#address").val(address);
		$("#searchAddressPage").dialog("close");
	}
	
	
	$(function(){
		UploadFileInit();
		dataLoad();
	})
       //上传图片初始化
        function UploadFileInit() {
        
            var options = {
            	action: "nesw_UploadFile.do",
                data: {
                    "fileDirectory": 'UploadFiles/CompetitionFiles',
                    "largeWidth": '200',
                    "largeHeight": '200',
                    "smallWidth": '80',
                    "smallHeight": '80',
                    "fileID": "imgFile",
                    "iswarter": "false",
                    "isoriginal": "false"
                },
                onComplete: function (data) {
                    if (data != "") {
                        var error = data.error;
                        var largerUrl = data.largerUrl;
                        var smallUrl = data.smallUrl;
                        if (error == "1") {
                            document.getElementById("imgShow").src = largerUrl;
                            $("#sitelogo").val(largerUrl);
                        }
                        if (error == "0") {
                            alert(largerUrl);
                        }
                    }
                }
            };
            //上传图片初始化
            $("#inputStr").InitUploadFile(options);
            $("#imgShow").click(function () {
                $("#inputStr").InitUploadFile("upload");
            });
        }
    </script>

</body>
</html>
