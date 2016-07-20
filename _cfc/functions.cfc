<cfcomponent>
	<cfset rootdir = expandpath("\") />
	<cfset fileExcludeList = "pagenotfound.cfm,header.cfm,footer.cfm" />
	<cfset dirExcludeList = "docs,img,_cfc,_settings,_themes" />
	
	<cffunction name="displaySideMenu">
		<cfset currentDir = getdirectoryfrompath(cgi.script_name) />
		<cfset tmpDir = directorylist(expandpath(currentDir),false,"query") />

			<cfoutput>
				<cfif getDirectoryFromPath(expandpath(cgi.script_name)) neq rootdir>
					<li class="first leaf menu-mlid-16284 menu-16284 collaborativepartners"><a href="..">&lt;- Back</a></li>
				</cfif>
				<cfloop query="tmpDir">
					<cfif (type eq "File" and find(".cfm",name) and not listfind(fileExcludeList,name)) OR (type eq "Dir" and not listfind(dirExcludeList,name))>
						<cfset itemName = replacelist(name,"-,.cfm"," ,") />
						<cfif itemName eq "Index">
							<cfset fullpath = getDirectoryFromPath(directory & "\\" & name) />
							<cfset itemName = listlast(fullpath, "\/") & " - Landing Page" />
							<cfif directory eq rootdir>
								<cfset itemName = "TTTA Center - Landing Page" />
							</cfif>
							<li class="first leaf menu-mlid-16284 menu-16284 collaborativepartners"><a href="#name#">#REReplace( itemName , "\b(\S)(\S*)\b" , "\u\1\L\2" , "all" )#</a></li>
						</cfif>
					</cfif>
				</cfloop>
				<cfloop query="tmpDir">
					<cfif (type eq "File" and find(".cfm",name) and not listfind(fileExcludeList,name)) OR (type eq "Dir" and not listfind(dirExcludeList,name))>
						<cfset itemName = replacelist(name,"-,.cfm"," ,") />
						<cfif itemName neq "Index">
							<li class="first leaf menu-mlid-16284 menu-16284 collaborativepartners"><a href="#name#">#REReplace( itemName , "\b(\S)(\S*)\b" , "\u\1\L\2" , "all" )#</a></li>
						</cfif>
					</cfif>
				</cfloop>
			</cfoutput>
		</ul>
	</cffunction>
</cfcomponent>