			<hr> 
			<footer>
				<p>
					&copy; CF Registration
				</p>
			</footer>
		</div>
<!-- /container -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
		</script>
		
		<cfoutput>
			<script>
				window.jQuery || document.write('<script src="#request.themepath#/js/vendor/jquery-1.11.2.min.js"><\/script>')
			</script>
			<script src="#request.themepath#/js/vendor/bootstrap.min.js">
			</script>
			<script src="#request.themepath#/js/main.js">
			</script>
		</cfoutput>
	</body>
</html>
