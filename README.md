#How Do I Use it?

Create variables.json with your ec2 credentials in it.

```
packer build -var-file=variables.json template_step_1.json;
packer build -var-file=variables.json template_step_2.json;
packer build -var-file=variables.json template_step_3.json;
```

# Why?  

I wanted to spin up a musicbrainz server on ec2 but I didn't want to setup musicbrainz from source code. 

There's already a configured machine it's just in ova format so I wanted to get it converted to an AMI.

I could have figured out how to set this all up using the chef code musicbrainz has on github but
there's no gaurentee they wouldn't decide to change the way they setup in the future.  

I am assuming they will continue to provide an OVA that is preconfigured.  

# What These Packer Templates Do

The first step removes the databases from the OVA because they are already stale and we want the newest
data.  Since I'm going to run this on EC2 I figured it'd be good to get the latest packages on the machine
as well.  

The second step uses the output from the first step and then downloads the newest dumps from musicbrainz
ftp server and stuff them into the database.  

The third step creates an AMI for use on ec2 and a vagrant box.  You could edit it to do one or the other.
