<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css" href="<c:url value="css/video.css"/>"/>

<link rel="stylesheet" type="text/css" href="<c:url value="css/media-player.css"/>"/>

<link rel="stylesheet" type="text/css" href="<c:url value="css/video-js.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="css/video-js.min.css"/>"/>

<title>TOD</title>
</head>
<body>
	<!-- ANSWERS/CHALLENGES CONTAINER -->
	<div class="video-container">
		<!-- RESPONSES -->
		<div class="responses-container">
		
			<div class="single-response">
				<div class="response-info">
					<c:if test="${!video.anonymous }">
						<a href="profilePage${video.challengeSender}" class="challenge-sender"><c:out value="${video.challengeSender}"/></a>
					</c:if>
					<c:if test="${video.anonymous }">
						<a href="#" class="challenge-sender"></a>
					</c:if>
					<div class="challenge-receiver">
						<c:if test="${video.user.profilePic!=null }">
							<img class="challenge-receiver-avatar" src="external/${video.user.profilePic }" alt="">
						</c:if>
						<c:if test="${video.user.profilePic==null }">
							<img class="challenge-receiver-avatar" src="<c:url value="img/user_np.png"/>" alt="">
						</c:if>
						<a href="profilePage${video.user.username}"><c:out value="${video.user.username}"/></a>
					</div>
					<div class="challenge-content"><c:out value="${video.challengeContent}"/></div>
				</div>
			    <video id="my-video" class="video-js" controls loop playsinline poster="external/${video.thumbnail }" data-setup="{}" >
				   <source src="external/${video.url }" type='video/mp4'>
				   <p class="vjs-no-js">
				     To view this video please enable JavaScript, and consider upgrading to a web browser that
				     <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
				   </p>
				</video>
				<div class="upload-date"><c:out value="${video.uploadDate}"/></div>
				</br>
			</div>
		</div>
	</div>

<!-- JAVASCRIPT INCLUDES -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</body>
</html>