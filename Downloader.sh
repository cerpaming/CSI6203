#!/bin/bash

		echo "Running the download function"
		read -p "Please type an URL of file to download: " url

       
		case $url in
			exit)
				exit 0
			;;

			*)

			
          mkdir -m 777 "Downloads"
			cd "Downloads"
						
				wget "$url"
				echo "Done"
			
			
				
                
                
			;;
		esac


