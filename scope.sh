#!/bin/bash

func1()
{
	#declare sets the variable scope to local within the function
	declare costcenter="Toronto"
	#costcenter="Toronto"
}

func2()
{
	func1
	echo "Cost center is" $costcenter
}

func2
