<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0095)https://demo.themewagon.com/preview/free-bootstrap-4-html5-travel-blog-website-template-fantasy -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Themewagon Live Demo | Fantasy-Free Bootstrap 4 HTML5
	travel blog website template</title>

<!-- Mobile Specific -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css"
	href="/resources/fantasy/demo.css">

<style>
body {
	height: calc(100% - 51px);
	box-sizing: content-box;
	min-height: 600px;
}
</style>
</head>
<body>

	<div id="switcher">
		<div class="center">
			<div class="logo">
				<a href="http://www.themewagon.com/"> <img class="logo"
					src="/resources/fantasy/logo-demo.png"
					alt="ThemeWagon">
				</a>
			</div>

			<ul>
				<li id="theme_list"><a id="theme_select"
					href="https://themewagon.com/themes">View All Themes</a></li>
			</ul>
			<div class="responsive">
				<a
					href="https://demo.themewagon.com/preview/free-bootstrap-4-html5-travel-blog-website-template-fantasy#"
					class="desktop active" title="View Desktop Version"></a> <a
					href="https://demo.themewagon.com/preview/free-bootstrap-4-html5-travel-blog-website-template-fantasy#"
					class="tabletlandscape" title="View Tablet Landscape (1024x768)"></a>
				<a
					href="https://demo.themewagon.com/preview/free-bootstrap-4-html5-travel-blog-website-template-fantasy#"
					class="tabletportrait" title="View Tablet Portrait (768x1024)"></a>
				<a
					href="https://demo.themewagon.com/preview/free-bootstrap-4-html5-travel-blog-website-template-fantasy#"
					class="mobilelandscape" title="View Mobile Landscape (480x320)"></a>
				<a
					href="https://demo.themewagon.com/preview/free-bootstrap-4-html5-travel-blog-website-template-fantasy#"
					class="mobileportrait" title="View Mobile Portrait (320x480)"></a>
			</div>

			<ul class="links">
				<li class="download"><a
					href="https://themewagon.com/themes/free-bootstrap-4-html5-travel-blog-website-template-fantasy/">
						<img
						src="/resources/fantasy/download.png"
						alt=""> Download
				</a></li>
				<li class="close"><a
					href="https://technext.github.io/fantasy/index.html"> <img
						src="/resources/fantasy/cross.png"
						alt=""> Close
				</a></li>
			</ul>
		</div>
	</div>

	<iframe id="iframe"
		src="/resources/fantasy/index.html"
		frameborder="0" width="100%"></iframe>

	<script async=""
		src="/resources/fantasy/analytics.js.다운로드"></script>
	<script
		src="/resources/fantasy/jquery.min.js.다운로드"></script>

	<script type="text/javascript">
		var IS_IPAD = navigator.userAgent.match(/iPad/i) != null;
		$("#header-bar").hide();
		clicked = "desktop";
		var t = {
			desktop : "100%",
			tabletlandscape : 1040,
			tabletportrait : 788,
			mobilelandscape : 500,
			mobileportrait : 340,
			placebo : 0
		};
		jQuery(".responsive a").on("click", function() {
			var e = jQuery(this);
			for (device in t) {
				if (e.hasClass(device)) {
					clicked = device;
					jQuery("#iframe").width(t[device]);
					if (clicked == device) {
						jQuery(".responsive a").removeClass("active");
						e.addClass("active")
					}
				}
			}
			return false
		});
		if (IS_IPAD) {
			$("#iframe").css("padding-bottom", "60px")
		}
	</script>

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-55162400-1', 'auto');
		ga('send', 'pageview');
	</script>




</body>
</html>