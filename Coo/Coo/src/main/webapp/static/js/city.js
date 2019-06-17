$(function () {
    function editUrlParas(key, val) {
        var urlparams = window.location.href.split('?')[1];
        var urlLists = urlparams.split('&');
        var hasAttr = false;
        urlLists.forEach(function (v, k) {
            if (v.split('=')[0] === 'p')
                urlLists[k] = 'p=1';
            if (v.split('=')[0] === key) {
                urlLists[k] = key + '=' + val;
                hasAttr = true
            }
        })
        var uri = urlLists.join('&');
        if (!hasAttr) uri = uri + '&' + key + '=' + val;
        return window.location.href.split('?')[0] + '?' + uri;
    }

    function cut() {
        var text = $('.search-bar .btn1 span').text();
        if (text.length > 4) {
            text = text.slice(0, 2);
            $('.search-bar .btn1 span').text(text);
        }
    }

    cut();
    //
    $('.input-box input').on('focus', function () {
        $(this).addClass('active');
    })
    $('.input-box input').on('blur', function () {
        $(this).removeClass('active');
    })
    //
    $('.search-btn').on('click', function () {
        gdt('track', 'SEARCH');         //

        var keyWords = $("input[name='keyword']").val();
        var url = editUrlParas('k', encodeURIComponent(keyWords))
        window.location.href = url
    })
    $("input[name='keyword']").on("keydown", function (e) {
        if (e.keyCode == 13) {
            $('.search-btn').trigger('click');
            e.preventDefault();
        }
    });

    $('.btn2-sel').on('click', 'li', function (e) {
        e.stopPropagation();
        window.location.href = editUrlParas('st', $(this).data('val'))
    });
    //ç›¸ä¼¼æœç´¢
    $('.similar-search li').on('click', function () {
        $('.input-box input').val($(this).text());
        $('.search-btn').trigger('click');
    });
    //
    $('.filter-condition .list-item').on('click', 'li', function () {
        var $this = $(this),
            key = $this.parent().parent().data('type'),
            val = $this.data('val'),
            next_url = addUrlArgs(key, val);
        console.log(next_url);
        console.log(key);
        $(this).addClass('active').siblings().removeClass('active');
        
        window.location.href = addUrlParam('p', 1, next_url);
			//传递数据到后台
//        $.ajax({
//			url:'http://localhost:8080/Coo/jobs/c-10000cc',
//			async:false, 
//			data:{
//				"k":val,
//			},
//			type:"POST",
//			dataType:"json",
//			success:function(data){
//				console.log(data);
//
//				var jsonData = JSON.parse(data);
//				var json1 = jsonData;
//				alert(json1);
//				
//				for(var i=0;i<json1.msg.length;i++)
//				{
//					alert(json1.msg[i].post_id);
//					var newStr = 
//						"<li class='font'>"+
//						"<div class='info1'>"+
//                        "<div class='name-box clearfix'>"+
//                        "<input type='hidden' value="+json1.msg[i].post_id+">"+
//                        "<a class='name' href='job/1?post_id="+json1.msg[i].post_id+"' target='_blank' data-info='1'>"+json1.msg[i].post_name+"</a>"+
//                           "<span class='release-time'>2天前</span></div>"+
//                        "<div class='more'>"+
//                            "<span>¥"+json1.msg[i].comm+"/天</span><span>"+json1.msg[i].post_worktime+"天/周</span><span>"+json1.msg[i].practice_time+"</span><span>"+json1.msg[i].post_location+"</span>"+
//                        "</div>"+
//                    "</div>"+
//                    "<div class='info2'>"+
//                        "<div class='company-box'>"+
//                            "<a class='company' href='/com/EFBSTTKN23UYJOH6K1CHBXPQOMLX0COM' target='_blank'>"+json1.msg[i].company_name+"</a>"+
//                            "<p class='type'>"+json1.msg[i].company_type+"</p>"+
//                        "</div>"+
//                    "</div>"+
//                    "<div class='logo'>"+
//                        "<a href='/com/EFBSTTKN23UYJOH6K1CHBXPQOMLX0COM' target='_blank'>"+
//                            "<img src="+"https://xbimg.xiaobaishixi.com/63/89/63B9AA52382CC5864F0CC3AF353BB189.png'"+ "alt='悦世界游戏实习招聘/>"+
//                        "</a>"+
//                    "</div>"+
//                "</li>";
//				$(".position-list li").remove();
//				$(".position-list").append(newStr);
//				}
//				
//				 
//
//			}
//		});
//    
//        
//        
//        window.location.href = addUrlParam('p', 1, next_url);//本页面跳转
        
    });

    $('#release-select').change(function () {
        var val = $(this).find('option:selected').val();
        var next_url = addUrlArgs('ft', val);
        window.location.href = addUrlParam('p', 1, next_url);
    });
    $('#correct-select').change(function () {
        var val = $(this).find('option:selected').val();
        var next_url = addUrlArgs('ch', val);
        window.location.href = addUrlParam('p', 1, next_url);
    });

    $('#part-select').change(function () {
        var val = $(this).find('option:selected').val();
        var next_url = addUrlArgs('pt', val);
        window.location.href = addUrlParam('p', 1, next_url);
    });

    $('.filter-box .btn').on('click', function () {
        var $this = $(this);
        $this.addClass('active').siblings('.btn').removeClass('active');
        if ($this[0] === $('.filter-box .btn1')[0]) {
            $this.siblings('.line').removeClass('active');
        } else {
            $this.siblings('.line').addClass('active');
        }
        var num = $this.data('order');
        window.location.href = addUrlParam('t', num);
    });

    function addUrlArgs(name, value, url) {
        var currentUrl = url || window.location.href.split('#')[0];
        var patt = new RegExp(name + "-[^_&]*_");
        var other_para = '';
        
        if (/\?/g.test(currentUrl)) {
            other_para = currentUrl.split('?')[1];
            currentUrl = currentUrl.split('?')[0];

            var endStr = currentUrl.charAt(currentUrl.Length-1);
 
            if(endStr = 'h')
            {
            	
            	currentUrl = currentUrl.substring(0,currentUrl.length-1);
            	
            }
 
        } else {
            other_para = 'k=' + value;
            currentUrl = '/jobs';
            
        }
        if (currentUrl.slice(-4) == 'jobs') {
            currentUrl += '/'
        }
        if (patt.test(currentUrl)) {
            currentUrl = currentUrl.replace(patt, name);
        } else {
            currentUrl += name;
            
        }

        //
        if (value === '') {
            var patt2 = new RegExp(name + "-[^_&]*_");
            currentUrl = currentUrl.replace(patt2, '');
        }
        if (other_para !== '') {
            if (currentUrl.slice(-1) == '/') {
                currentUrl = currentUrl.substring(0, currentUrl.length - 1)
            }
            
            currentUrl += '?' +other_para;
            
        }
      
        return currentUrl;
    }

    $(document).delegate('.city-more', 'click', function () {
        $('.city-cover').fadeIn('fast')
    })

    $(document).delegate('.province', 'mouseenter', function () {
        var this_ = $(this);
        var code = $(this).data('code');
        var url = window.location.href;
        this_.parents('li').siblings('li').find('.zone').remove();
        $.get('/city/code/' + code, function (data) {
            console.log(data)
            if (data.code === 100) {
                if (data.data) {
                    var item = '<ul class="zone">';
                    data.data.forEach(function (v) {
                        var url = editUrlParas('c', v.code)
                        item += '<a href="' + url + '"><li>' + v.name + '</li></a>';
                    });
                    item += '</ul>';
                    this_.parents('li').append(item)
                }
                else {
                    this_.click(function () {
                        window.location.href = editUrlParas('c', this_.data('code'))
                    })
                }
            }
        })
    })
    $(document).delegate('.data>li', 'mouseleave', function () {
        $(this).find('.zone').remove();
    })

    $(document).delegate('#close', 'click', function () {
        $('.city-cover').fadeOut('fast');
    })


    var dataJson = [{
        ad_position: 'P_2_1',
        max_num: 10
    }];
    getRecommend(loc_city, dataJson, function (data) {
        var data1 = data.msg.P_2_1;
        if (data1 && data1.length > 0) {
            $.each(data1, function (i, val) {
                $('.ad-box').append('<a href="'+val.redirect+'" target="_blank"><img src="'+val.img+'" title="'+val.title+'" alt="'+val.desc+'"/></a>')
            })
        }
    });
})