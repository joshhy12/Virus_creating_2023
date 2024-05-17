<!DOCTYPE html>
<html>
<body>

<h2>JavaScript Numbers</h2>

<p>The toString() method can output numbers from base 2 to 36:</p>

<p id="demo"></p>

<script>
var myNumber = 10;
document.getElementById("demo").innerHTML =
"32 = " + "<br>" + 
" Decimal " + myNumber.toString(10) + "<br>" +
" Hexadecimal " + myNumber.toString(16) + "<br>" +
" Octal " + myNumber.toString(8) + "<br>" +
" Binary " + myNumber.toString(2);
</script>

</body>

<!-- Mirrored from www.w3schools.com/js/tryit.asp?filename=tryjs_numbers_tostring by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 27 Jan 2020 02:28:13 GMT -->
</html>
