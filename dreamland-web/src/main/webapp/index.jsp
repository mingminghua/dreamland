<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>梦境网</title>
    <link href="${ctx}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>

    <link href="${ctx}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>

    <link rel="stylesheet" href="${ctx}/css/reply/css/style.css">
    <link rel="stylesheet" href="${ctx}/css/reply/css/comment.css">

    <style>
        body,html{
            background-color: #EBEBEB;
            padding: 0;
            margin: 0;
            height:100%;
        }
        .stats-buttons  a{
            text-decoration:none;
        }
        .commentAll a{
            text-decoration:none;
        }

        .comment-show a{
            text-decoration:none;
        }
        a {
            color: inherit;
            outline: 0;
        }
        a:-webkit-any-link {
            cursor: pointer;

        }
        .container{
            min-height:100%;
            position: relative;

        }
        #content{
            min-height:100%;
            position: relative;
        }
        .col-md-9{
            padding-bottom: 80px;
        }
        .content-text{
            padding: 20px;

        }
        .single-share{
            float: right;
        }
        .stats-buttons {
            float: left;
        }
        .foot-nav-col li{
            list-style: none;
            margin-left: 100px;
        }
        .foot-nav-col h3{
            margin-left:120px;
        }
        .foot-nav-col a{
            text-decoration:none;
            color:grey;

        }
        .foot-nav-col a:link,a:visited { color:grey;}
        .foot-nav-col a:hover,a:active { color: #6318ff;}

        .foot-nav-col{
            margin-top: 20px;
            float: left;
        }

        .author img {
            width: 35px;
            height: 35px;
            border-radius: 35px;
            padding: 0;
            margin-right: 10px;
        }
        fieldset, img {
            border: 0;
        }
        .author a, .author span {
            float: left;
            font-size: 14px;
            font-weight: 700;
            line-height: 35px;
            color: #9b8878;
            text-decoration: none;
        }
        .author-h2 {
            display: block;
            font-size: 1.5em;
            -webkit-margin-before: 0.83em;
            -webkit-margin-after: 0.83em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-weight: bold;
            font-size: 100%;
            font-weight: 400;
        }
        .commentAll{
            margin-left: 5px;
        }

    </style>
</head>
<body>
<div class="container">
    <div>
        <h1>Dreamland-梦境网</h1>
    </div>
    <div style="position: absolute;margin-left: 980px;margin-top: -40px;">
        <c:if test="${empty user}">
            <a name="tj_login" class="lb" href="login?error=login" style="color: black">[登录]</a>
            &nbsp;&nbsp;
            <a name="tj_login" class="lb" href="register" style="color: black">[注册]</a>
        </c:if>
        <c:if test="${not empty user}">
            <a name="tj_loginp" href="javascript:void(0);"   class="lb" onclick="personal('${user.id}');" style="color: black"><font color="#9370db">${user.nickName}, 欢迎您！</font></a>
            &nbsp;&nbsp;
            <a name="tj_login" class="lb" href="${ctx}/loginout" style="color: black">[退出]</a>
        </c:if>

    </div>
    <nav class="navbar navbar-inverse">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="javascript:void(0);">首页</a>
        </div>
        <div id="navbar-menu" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">最新梦</a></li>
                <li><a href="#">最热梦</a></li>
                <li><a href="#">梦诗词</a></li>
                <li><a href="#">梦问答</a></li>
                <li><a href="#">我的梦</a></li>
                <li><a href="${ctx}/list?id=${user.id}">个人空间</a></li>
            </ul>
        </div>

        <form class="navbar-form navbar-right" role="search" style="margin-top: -35px;margin-right: 10px">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <!--<button type="submit" class="btn btn-default">Submit</button>-->
            &nbsp; &nbsp;<i class="icon icon-search" style="color: white"></i>
        </form>

    </nav>

    <div id="content" class="row-fluid">
        <div class="col-md-9"  style="background-color: white;">
            <div id="content_col" class="content-main">
                    <!-- 正文开始 -->

                    <div class="content-text">

                        <div class="author clearfix">
                            <div>
                                <a href="#" target="_blank" rel="nofollow" style="height: 35px" >
                                     <img src="/images/icon_m.jpg">
                                </a>
                            </div>
                            <a href="#" target="_blank" >
                                <h2 class="author-h2">
                                   剑随风
                                </h2>
                            </a>

                        </div>

                       <h2>深夜的思考</h2>
                        <p>人生如梦，今天以前发生的事就像做梦一样，若隐若现，朦朦胧胧，我在想人活着的意义是什么呢？有一位老人临终前说过一句话：我感觉这辈子好像没活过一样，想想过去的种种，就像梦一样，一辈子就这么结束了。。。</p>

                        <img src="/images/1.png" alt="" />

                        <div style="height: 5px"></div>
                        <div class="stats">
                            <!-- 笑脸、评论数等 -->
                            <span class="stats-vote"><i id="${cont.id}" class="number">66</i> 赞</span>
                            <span class="stats-comments">
                    <span class="dash"> · </span>
                         <a  onclick="reply(${cont.id},${cont.uId});">
                              <i class="number" id="comment_num_${cont.id}">5</i> 评论
                          </a>
                    </span>
                        </div>
                        <div style="height: 5px"></div>
                        <div class="stats-buttons bar clearfix">
                            <a style="cursor: pointer;" onclick="upvote_click(${cont.id},1);">
                                <i class="icon icon-thumbs-o-up icon-2x"></i>
                                <span class="number hidden" id="up_${cont.id}">${cont.upvote}</span>
                            </a>
                            &nbsp;
                            <a style="cursor: pointer;" onclick="upvote_click(${cont.id},-1);">
                                <i class="icon icon-thumbs-o-down icon-2x"></i>
                                <span class="number hidden" id="down_${cont.id}">${cont.downvote}</span>
                            </a>
                            &nbsp;
                            <a style="cursor: pointer;" onclick="reply(${cont.id},${cont.uId});" title="点击打开或关闭">
                                <i class="icon icon-comment-alt icon-2x"></i>
                            </a>
                        </div>
                        <div class="single-share">
                            <a class="share-wechat" data-type="wechat" title="分享到微信" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                                <i class="icon icon-wechat icon-2x"></i>
                            </a>
                            <a class="share-qq" data-type="qq" title="分享到QQ" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                                <i class="icon icon-qq icon-2x"></i>
                            </a>
                            <a  class="share-weibo" data-type="weibo" title="分享到微博" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                                <i class="icon icon-weibo icon-2x"></i>
                            </a>
                        </div>
                        <br/>
                        &nbsp;
                        <div class="commentAll" style="display:none" id="comment_reply_${cont.id}">
                            <!--评论区域 begin-->
                            <div class="reviewArea clearfix">
                                <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
                                <a class="plBtn" id="comment_${cont.id}" onclick="_comment(${cont.id},${user.id==null?0:user.id},${cont.uId})" style="color: white;cursor: pointer;">评论</a>
                            </div>
                            <!--评论区域 end-->
                            <div class="comment-show-first" id="comment-show-${cont.id}">

                            </div>

                        </div>

                        <div class="single-clear">

                        </div>
                    </div>
                    <!-- 正文结束 -->
                    <div style="position: absolute;width:900px;background-color: #EBEBEB;height: 10px;left: 0px">
                    </div>

                <!-- 正文开始 -->

                <div class="content-text">

                    <div class="author clearfix">
                        <div>
                            <a href="#" target="_blank" rel="nofollow" style="height: 35px" >
                                 <img src="/images/icon_m.jpg">
                            </a>
                        </div>
                        <a href="#" target="_blank" >
                            <h2 class="author-h2">
                                坏菠萝
                            </h2>
                        </a>

                    </div>

                    <h2>梦见会开车</h2>
                    <p>我做梦自己会开车了，但是不知道咋停车，开到一个下坡停不下来了眼看要撞墙了，踩刹车也停不下来，还在往下滑，旁边还停着车咋办啊，急死我了，这时候我急中生智，把车门打开，脚伸到外面，脚踩地上，下坡滑行，用脚和地面产生摩擦，就像骑自行车那样，然后方向盘一打，车稳稳的和旁边那辆并排停在了一起，哈哈哈。</p>

                    <img src="/images/3.png" alt="" />

                    <div style="height: 5px"></div>
                    <div class="stats">
                        <!-- 笑脸、评论数等 -->
                        <span class="stats-vote"><i id="${cont.id}" class="number">66</i> 赞</span>
                        <span class="stats-comments">
                    <span class="dash"> · </span>
                         <a  onclick="reply(${cont.id},${cont.uId});">
                              <i class="number" id="comment_num_${cont.id}">5</i> 评论
                          </a>
                    </span>
                    </div>
                    <div style="height: 5px"></div>
                    <div class="stats-buttons bar clearfix">
                        <a style="cursor: pointer;" onclick="upvote_click(${cont.id},1);">
                            <i class="icon icon-thumbs-o-up icon-2x"></i>
                            <span class="number hidden" id="up_${cont.id}">${cont.upvote}</span>
                        </a>
                        &nbsp;
                        <a style="cursor: pointer;" onclick="upvote_click(${cont.id},-1);">
                            <i class="icon icon-thumbs-o-down icon-2x"></i>
                            <span class="number hidden" id="down_${cont.id}">${cont.downvote}</span>
                        </a>
                        &nbsp;
                        <a style="cursor: pointer;" onclick="reply(${cont.id},${cont.uId});" title="点击打开或关闭">
                            <i class="icon icon-comment-alt icon-2x"></i>
                        </a>
                    </div>
                    <div class="single-share">
                        <a class="share-wechat" data-type="wechat" title="分享到微信" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                            <i class="icon icon-wechat icon-2x"></i>
                        </a>
                        <a class="share-qq" data-type="qq" title="分享到QQ" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                            <i class="icon icon-qq icon-2x"></i>
                        </a>
                        <a  class="share-weibo" data-type="weibo" title="分享到微博" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                            <i class="icon icon-weibo icon-2x"></i>
                        </a>
                    </div>
                    <br/>
                    &nbsp;
                    <div class="commentAll" style="display:none" id="comment_reply_${cont.id}">
                        <!--评论区域 begin-->
                        <div class="reviewArea clearfix">
                            <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
                            <a class="plBtn" id="comment_${cont.id}" onclick="_comment(${cont.id},${user.id==null?0:user.id},${cont.uId})" style="color: white;cursor: pointer;">评论</a>
                        </div>
                        <!--评论区域 end-->
                        <div class="comment-show-first" id="comment-show-${cont.id}">

                        </div>

                    </div>

                    <div class="single-clear">

                    </div>
                </div>
                <!-- 正文结束 -->
                <div style="position: absolute;width:900px;background-color: #EBEBEB;height: 10px;left: 0px">
                </div>





                <!-- 正文开始 -->

                <div class="content-text">

                    <div class="author clearfix">
                        <div>
                            <a href="#" target="_blank" rel="nofollow" style="height: 35px" >
                                 <img src="/images/icon_m.jpg">
                            </a>
                        </div>
                        <a href="#" target="_blank" >
                            <h2 class="author-h2">
                                剑随风
                            </h2>
                        </a>

                    </div>

                    <h2>关于步步高的梦</h2>
                    <p>我梦见以前的老师因为没交作业，让我们几个跳《步步高》的舞蹈，然后让隔壁班没交作业的同学表演时装秀，然后我们两个班比赛…… \r\n我觉得好荒唐，还跳《步步高》呢，给我们准备了不少道具，我们居然也跳了，真是蠢的可以 \r\n请问这个梦代表什么啊，不过我在做这个梦的时候还是很开心的</p>

                    <img src="/images/2b.png" alt="" />

                    <div style="height: 5px"></div>
                    <div class="stats">
                        <!-- 笑脸、评论数等 -->
                        <span class="stats-vote"><i id="${cont.id}" class="number">66</i> 赞</span>
                        <span class="stats-comments">
                    <span class="dash"> · </span>
                         <a  onclick="reply(${cont.id},${cont.uId});">
                              <i class="number" id="comment_num_${cont.id}">5</i> 评论
                          </a>
                    </span>
                    </div>
                    <div style="height: 5px"></div>
                    <div class="stats-buttons bar clearfix">
                        <a style="cursor: pointer;" onclick="upvote_click(${cont.id},1);">
                            <i class="icon icon-thumbs-o-up icon-2x"></i>
                            <span class="number hidden" id="up_${cont.id}">${cont.upvote}</span>
                        </a>
                        &nbsp;
                        <a style="cursor: pointer;" onclick="upvote_click(${cont.id},-1);">
                            <i class="icon icon-thumbs-o-down icon-2x"></i>
                            <span class="number hidden" id="down_${cont.id}">${cont.downvote}</span>
                        </a>
                        &nbsp;
                        <a style="cursor: pointer;" onclick="reply(${cont.id},${cont.uId});" title="点击打开或关闭">
                            <i class="icon icon-comment-alt icon-2x"></i>
                        </a>
                    </div>
                    <div class="single-share">
                        <a class="share-wechat" data-type="wechat" title="分享到微信" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                            <i class="icon icon-wechat icon-2x"></i>
                        </a>
                        <a class="share-qq" data-type="qq" title="分享到QQ" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                            <i class="icon icon-qq icon-2x"></i>
                        </a>
                        <a  class="share-weibo" data-type="weibo" title="分享到微博" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                            <i class="icon icon-weibo icon-2x"></i>
                        </a>
                    </div>
                    <br/>
                    &nbsp;
                    <div class="commentAll" style="display:none" id="comment_reply_${cont.id}">
                        <!--评论区域 begin-->
                        <div class="reviewArea clearfix">
                            <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
                            <a class="plBtn" id="comment_${cont.id}" onclick="_comment(${cont.id},${user.id==null?0:user.id},${cont.uId})" style="color: white;cursor: pointer;">评论</a>
                        </div>
                        <!--评论区域 end-->
                        <div class="comment-show-first" id="comment-show-${cont.id}">

                        </div>

                    </div>

                    <div class="single-clear">

                    </div>
                </div>
                <!-- 正文结束 -->
                <div style="position: absolute;width:900px;background-color: #EBEBEB;height: 10px;left: 0px">
                </div>






            </div>




            <div id="page-info" style="position: absolute;width:900px;background-color: #EBEBEB;height: 80px;left: 0px;">
                <ul class="pager pager-loose">

                        <li><a href="javascript:void(0);">« 上一页</a></li>
                            <li class="active"><a href="javascript:void(0);">1</a></li>
                            <li ><a href="#">2</a></li>
                            <li ><a href="#">3</a></li>
                            <li ><a href="#">4</a></li>
                             <li ><a href="#">5</a></li>
                             <li ><a href="#">6</a></li>
                        <li><a href="javascript:void(0);">下一页 »</a></li>

                </ul>
            </div>


            <div class="foot" style="position: absolute;left: 0px;float: left;margin-top: 60px;">
                <div class="foot-nav clearfix">
                    <div class="foot-nav-col">
                        <h3>
                            关于
                        </h3>
                        <ul>
                            <li>
                                <a href="#" target="_blank" rel="nofollow">
                                    关于梦境
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="nofollow">
                                    加入我们
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="nofollow">
                                    联系方式
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="foot-nav-col">
                        <h3>
                            帮助
                        </h3>
                        <ul>
                            <li>
                                <a href="#" target="_blank" rel="nofollow">
                                    在线反馈
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="nofollow">
                                    用户协议
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="nofollow">
                                    隐私政策
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="foot-nav-col">
                        <h3>
                            下载
                        </h3>
                        <ul>
                            <li>
                                <a href="#"
                                   target="_blank" rel="external nofollow">
                                    Android 客户端
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="external nofollow">
                                    iPhone 客户端
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="foot-nav-col">
                        <h3>
                            关注
                        </h3>
                        <ul>
                            <li>
                                <a href="http://www.dreamland.wang" onMouseOut="hideImg()"  onmouseover="showImg()">
                                    微信
                                    <div id="wxImg" style="display:none;height:50px;back-ground:#f00;position:absolute;">
                                        <img src="images/dreamland.png"/><br/>
                                        手机扫描二维码关注
                                    </div>
                                    <!-- <div class="foot-wechat-tips">
                                        &lt;!&ndash; <span class="foot-wechat-icon"></span>&ndash;&gt;
                                         <span class=" icon icon-wechat icon-2x"></span>
                                         手机扫描二维码关注
                                     </div>-->
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="external nofollow">
                                    新浪微博
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" rel="external nofollow">
                                    QQ空间
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
               <!-- rgba(60,63,65,0.31)-->
                <hr style="position: absolute;background-color: rgba(161,171,175,0.31);width: 1000px;height: 1px;left: 0px"/>
                <hr style="position: absolute;background-color: rgba(161,171,175,0.31);width: 1000px;height: 1px;left: 0px"/>
                <div class="foot-nav clearfix" style="position: absolute;left: 0px;margin-top: 40px;text-align: center">
                    <div class="foot-copyrights" style="margin-left: 200px">
                        <p>
                            互联网ICP备案：京ICP备xxxxxx号-1
                        </p>
                        <p>
                            <span>违法和不良信息举报电话：010-xxxxxxx</span>
                            <span>邮箱：xxx@dreamland.wang</span>
                        </p>
                        <p style="margin-top: 8px">&copy;www.dreamland.wang 梦境网版权所有</p>
                    </div>
                </div>
            </div>
            <!--col-md-9结束 -->
        </div>


    <div class="col-md-3" style="position:absolute;top:0px;left: 880px;width: 268px;">
		<div style="background-color: white;width: 250px;height: 440px">
			<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=82" width="250" height="440" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
		</div>
	</div>


    </div>


</div>
<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/css/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>


<script type="text/javascript" src="${ctx}/css/reply/js/jquery.flexText.js"></script>

</body>
<script language=javascript>
    function  showImg(){
        document.getElementById("wxImg").style.display='block';
    }
    function hideImg(){
        document.getElementById("wxImg").style.display='none';
    }
    function personal(uId) {
        this.location =  "${ctx}/list?id="+uId;
    }


</script>



</html>