# shiena-clare-parac-api-user-v1

This project is the enhancement of the api-user-v1 application.This application is an exercise project for mule enablement.
For more information about this Mule application please go to the relevant Component Designs page.

## Dependencies


### DPE Mule Logging Utility

The logging utility used across Mule projects in DPE
- [mule4-json-logger](https://dev.azure.com/dd-managed-services/PE%20-%20Mule%20Enablement%20APAC/_git/mule4-json-logger)

### How to Get Started

Once you've cloned this repository into your workspace. On Anypoint Studio, perform the following steps:
1. Go to **File > Import** and select Anypoint Studio project from File System
2. Select the Project Root to be where your Mule application resides. Press Finish. Anypoint Studio will then automatically download any dependencies based of the POM file.
3. Have a look at the POM file to verify your project has the necessary dependencies. At a minimum, update the reference to the correct interface project for your application (or remove it if not required).
4. Once this has successfully completed, click on Run > Run As > Mule Application with Maven (or right click > Run Project). Note that there may be environment variables that you may need to set eg. `MULE_KEY`. Please reach out to your friendly Tech Lead for the **key** to use.
5. Anypoint Studio will then build the project, and will display a **DEPLOYED** status if successful. If not successful, it will display **FAILED**. If **FAILED** please have a look at the console logs to understand what's causing the error.
6. To run tests, right click on the project, click MUnit > Run Tests. Once done running, MUnit Coverage should show all green and 100% coverage.
