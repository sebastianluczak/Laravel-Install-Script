#!/bin/bash

function usage() { echo -e "Usage: install_laravel <project_name>\nInstalls Laravel 4.2 in currect directory."; }

if [ -d $1 ]
then	
	usage;
	exit;
else
	echo -e "\nPreparing to install Laravel to "$(pwd)"/"$1"\n";
	mkdir $1;
	cd $1;
	echo -e "Installing Laravel...";
	composer create-project laravel/laravel . --prefer-dist >> /dev/null
	echo -e "Installing VarDumper()...";
	composer require symfony/var-dumper >> /dev/null
	echo -e "Installing DebugBar()...";
	composer require barryvdh/laravel-debugbar >> /dev/null
	echo -e "Consider installing L4-Generators!";
fi
