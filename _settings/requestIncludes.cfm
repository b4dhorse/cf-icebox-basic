<!---
Author: Brandon Smith
Description: This file is called from the onRequestStart function in the Application.cfc
--->

<!--- name of folder where theme can be found --->
<cfset request.themefolder = "iceboxbasic" />

<!--- some basic variables --->
<cfset REQUEST.websitename = "Icebox Basic" />

<cfset REQUEST.pagetitle = REQUEST.websitename & " | " & replacelist(REReplace( CGI.script_name , "\b(\S)(\S*)\b" , "\u\1\L\2" , "all" ),"/,-,.cfm",", ,") />
<cfset REQUEST.metadescription = "" />
<cfset REQUEST.headerinfo = "" />

<!--- do not change anything below --->

<cfset REQUEST.baseFolderPath = expandpath("/") />
<cfset REQUEST.includetheme = true />

<!--- template path and absolute template path --->
<cfset REQUEST.templateabsolutepath = lcase(mid(CGI.script_name,2,len(CGI.script_name))) />
<cfset REQUEST.templatename = listgetat(arguments.requestname,listlen(arguments.requestname,"/"),"/")><!--- find the name of the page requested --->

<!--- build the website url, use in the template for absolute URL --->
<cfset REQUEST.baseurl = "http://"&CGI.SERVER_NAME&"/" />
<cfif CGI.HTTPS eq "on">
	<cfset REQUEST.baseurl = "https://"&CGI.SERVER_NAME&"/" />
</cfif>

<!--- location of the layout template --->
<cfset REQUEST.themeabspath = REQUEST.baseurl&"_themes/"&request.themefolder&"/" />
<cfset REQUEST.themepath = "/_themes/"&request.themefolder />