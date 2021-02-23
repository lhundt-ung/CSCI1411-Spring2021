#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Your command line contains $# arguments"
else 
    echo $1
    function localmessage
    {
        echo $1
    }
    
    localmessage "There!"
    localmessage $2
    echo "You have passed $# arguments"
fi