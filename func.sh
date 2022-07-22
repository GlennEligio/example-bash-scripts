
function user_input
{
	read -p "Please enter the cost center: " costcenter
	if test "$costcenter" = ""
	then
		echo "Enter a cost center..."
		return
	fi
}
