# Introduction
Custom A-MQ image for OpenShift

# Create build config

	oc new-app https://github.com/jarielpa/amq62-ose.git --dry-run -o yaml > amq62-ose.yaml

	oc create -f amq62-ose.yaml 

Delete entities not needed:

	oc delete dc amq62-ose
	oc delete service amq62-ose   
   
# Create custom image templates from existing templates
	
	oc export template amq62-basic -o yaml -n openshift > amq62-ose-basic.yaml
	oc export template amq62-persistent -o yaml -n openshift  > amq62-ose-persistent.yaml
	
Update template, image/imagestream names and other details to match your configuration
	
# Install templates

	oc apply -f amq62-ose-basic.yaml
	oc apply -f amq62-ose-persistent.yaml



