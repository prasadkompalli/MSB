## Synopsis

This prject build an automated environment set up with Centos7 Packer Image and Vagrant Box in our machine on the top of VMWare station.   

## Introduction
	
In this project We are able to provide one packer image to the developers of services bay with a identical packer image and provide portable work enviroment using vagrant box.		

	* Packer :

	Packer is an open source tool for creating identical machine images for multiple platforms from a single source configuration. Packer does not replace configuration management like Chef or Puppet. In fact, when building images, Packer is able to use tools like Chef or Puppet to install software onto the image.  
	
	* Vagrant :
	
	Vagrant provides easy to configure, reproducible, and portable work environments built on top of industry-standard technology and controlled by a single consistent workflow to help maximize the productivity and flexibility of you and your team.
		
	
## Pre-requisites 

	* Packer
	* Vagrant
	* GitBash
	* VMWare WorkStation
	
## Installation
	
	
	The following are the required softwares that are necessary installed to work on this project.
	
 * Packer
		
Install the packer by using the below link. 
				
	https://www.packer.io/downloads.html

At our project time, We are using Packer (0.10.1). Please download the proper package for your operating system and architecture. We are downloaded the packer in Windows8.1 machine. After downloaded put the path setting to the packer into the environment variables.
    


 * Vagrant

 Install the vagrant by using the below link.
 
	https://www.vagrantup.com/downloads.html

At our project time, We are using vagrant (1.8.5). Please download the proper package for your operating system and architecture. We are downloaded the vagrant in Windows8.1 machine. After downloaded put the path setting to the vagrant into the environment variables.
	
	
 * VMWare Workstation

 * GitBash
 
Install the Git bash.


## Run 

Clone the above code from our git repository.

`git clone https://github.com/prasadkompalli/MSB.git`

After clone the repo run the below command from the git commandline to automate the environment set up by using packer. It Creates one packer image and vagrant box. 

`packer build Centos7Template.json`


## Contributors




## License
<dl>
<dt><i>Miracle Software Systems.Inc</i></dt>
<dt><i>MIL Labs </i></dt>
</dl>