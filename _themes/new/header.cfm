<!doctype html>
<html class="no-js" lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<cfoutput><title>#REQUEST.pagetitle#</title></cfoutput>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<cfoutput><link rel="stylesheet" href="#request.themepath#/css/bootstrap.min.css"></cfoutput>
		<style>
			body {
			    padding-top: 50px;
			    padding-bottom: 20px;
			}
		</style>
		<cfoutput>
			<link rel="stylesheet" href="#request.themepath#/css/bootstrap-theme.min.css">
			<link rel="stylesheet" href="#request.themepath#/css/main.css">
		
			<script src="#request.themepath#/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		</cfoutput>
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.cfm">
						CF Icebox Basic
					</a>
				</div>
				
<!--/.navbar-collapse -->
			</div>
		</nav>
<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				<h1>
					CF Icebox Basic
				</h1>
				<p>
					A basic CMS for Coldfusion using Bootstrap.
				</p>
			</div>
		</div>
		<div class="container">
