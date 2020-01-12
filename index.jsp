<html>
<head><title>Sign UP</title>
	
	<link rel="stylesheet" href="calendar/zapatec/zpcal/themes/wood.css" />
	<script type="text/javascript" src="calendar/zapatec/zpcal/utils/zapatec.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/src/calendar.js"></script>
	<script type="text/javascript" src="calendar/zapatec/zpcal/lang/calendar-en.js"></script>
</head>
<body>
	<form>
				<label for="birthdate">Date of Birth:</label>
				<input type="text" name="birthdate" maxlength="400"	size="15"   
					style="background-color: rgb(255, 255, 160);" readonly="readonly" id="calendar">
					<button id="trigger">...</button> 
					<script type="text/javascript">
								//         
								Zapatec.Calendar.setup({
									firstDay : 1,
									electric : false,
									inputField : "calendar",
									button : "trigger",
									ifFormat : "%Y-%m-%d",
									daFormat : "%Y-%m-%d"
								});
								//
							</script>
					
			<br>
				<input type="submit" value="Register" name="btnSubmit" />
				
		
	</form>
</body>
</html>

