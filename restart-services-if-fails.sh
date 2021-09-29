#!/bin/sh

#ps auxw | grep apache2 | grep -v grep > /dev/null
ps auxw | grep "dotnet WordPressAPI.dll" | grep -v grep > /dev/null

if [ $? != 0 ]
then
        docker restart dotnet-wp > /dev/null
fi
