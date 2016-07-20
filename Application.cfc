<!---
Author: Brandon Smith
Description: Icebox Basic Application File
--->

<cfcomponent >
	<cfprocessingdirective suppresswhitespace="true">
		<cfsilent>
			<!--- application name, to be entered by admin --->
			<cfset this.name="Icebox Basic" />
			<cfset this.applicationTimeout = createtimespan(7,0,0,0) />
			<cfset this.sessionManagement="Yes">
			<cfset this.sessionTimeout = createtimespan(0,1,0,0) />
			
			<cffunction name="onApplicationStart" returntype="void">
				<!--- include settings for the application --->
				<cfinclude template="/_settings/applicationIncludes.cfm" />
			</cffunction>
			
			<cffunction name="onSessionStart" returntype="void">
				<!--- include settings for the session --->
				<cfinclude template="/_settings/sessionIncludes.cfm" />
			</cffunction>
			
			<cffunction name="onRequestStart">
				<cfargument name="requestname" required="true"><!--- requested page --->
				
				<!--- all request includes and variables are set in /_settings/requestIncludes.cfm --->
				<cfinclude template="/_settings/requestIncludes.cfm" />
				
				<!--- header include --->
				<cfinclude template="#request.themepath#/header.cfm" />

			</cffunction>
			
			<cffunction name="onRequestEnd">
				<cfargument name="requestname" required="true">
				<!--- footer include --->
				<cfinclude template="#request.themepath#/footer.cfm" />
			</cffunction>
			
			<cffunction name="onMissingTemplate">
				<cfargument name="targetPage" required="true" />
				<cflocation url="/404.cfm" addToken="false" />
			</cffunction>
			
		</cfsilent>
		</cfprocessingdirective>
</cfcomponent>
