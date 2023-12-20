# SysML2.0

Supports the specification, analysis, design, and verification and validation 
of complex systems that may include hardware, software, information, 
processes, personnel, and facilities

If you have been keeping track of the SysML v2 developments, you probably already know this. This week I decided to give it a try. If, like me, you are a practitioner of MBSE and SysML and are interested in getting a sense of what is coming up with SysML v2 and how you might try it.

As a first attempt, I started making a simple model of a Flashlight. I started by creating a new project, checking the “sysml.library” project on the Project References page. I also converted the project to an Xtext project, as required to set up indexing infrastructure for resolving references.

![](https://github.com/YashzAlphaGeek/SysML2.0/blob/master/Flashlight/FlashlightCameo.png)

![](https://github.com/YashzAlphaGeek/SysML2.0/blob/master/Flashlight/Flashlightv2.png)

![](https://github.com/YashzAlphaGeek/SysML2.0/blob/master/VehicleProject/VehicleProject.png)

![](https://github.com/YashzAlphaGeek/SysML2.0/blob/master/SysMLv2_Jupyter.png)

## Service APIs

GET ALL PROJECTS

GET REQUEST
<pre>
  http://sysml2.intercax.com:9000/projects
</pre>

RESPONSE
<pre>
  [
    {
        "@id": "00698b97-5b79-4ff6-8af5-4b2577d78d4d",
        "@type": "Project",
        "created": "2023-07-25T15:37:06.244174-04:00",
        "defaultBranch": {
            "@id": "7d9c3d12-3a43-4872-913f-5f160e46469b"
        },
        "description": null,
        "name": "VehicleQuantities Tue Jul 25 12:37:05 MST 2023"
    },
    {
        "@id": "02ff2b45-b4b7-4c0d-9eb9-980a6406ffe6",
        "@type": "Project",
        "created": "2023-08-03T17:50:43.602399-04:00",
        "defaultBranch": {
            "@id": "41f7ae51-b139-4f23-b73d-bfcf8d156e79"
        },
        "description": null,
        "name": "PowerSystemPartDefinitions Thu Aug 03 14:50:43 MST 2023"
    },
    {
        "@id": "0323d363-a76d-4e6f-bcfb-aa73775a6ed8",
        "@type": "Project",
        "created": "2023-12-19T18:40:51.647129-05:00",
        "defaultBranch": {
            "@id": "f4573ced-635f-4a18-8c6e-5e32b54b9fe6"
        },
        "description": null,
        "name": "Messaging_Example Wed Dec 20 00:40:49 CET 2023"
    },
    {
        "@id": "033a4a2c-d65e-46e1-8ddc-4d67a1ba2bee",
        "@type": "Project",
        "created": "2023-04-03T13:16:54.816101-04:00",
        "defaultBranch": {
            "@id": "02ead216-d0b4-4481-8bcb-214f6b47ceac"
        },
        "description": null,
        "name": "pkg2 Mon Apr 03 17:16:42 UTC 2023"
    }
]
</pre>

UPDATE PROJECT DESCRIPTION

PUT REQUEST
<pre>
  http://sysml2.intercax.com:9000/projects/8662ace5-9bd3-4e40-915f-3253ce869285
</pre>

REQUEST BODY
<pre>
{
    "@id": "8662ace5-9bd3-4e40-915f-3253ce869285",
    "@type": "Project",
    "created": "2023-12-19T13:16:49.984243-05:00",
    "defaultBranch": {
        "@id": "24db727e-2525-4b1e-af21-b5439b901ceb"
    },
    "description": "Vehicle Project Description",
    "name": "Yashwanth Tue Dec 19 23:47:04 IST 2023"
}
</pre>

GET PROJECTS BY ID

GET REQUEST
<pre>
  http://sysml2.intercax.com:9000/projects/8662ace5-9bd3-4e40-915f-3253ce869285
</pre>

RESPONSE
<pre>
  {
    "@id": "8662ace5-9bd3-4e40-915f-3253ce869285",
    "@type": "Project",
    "created": "2023-12-19T13:16:49.984243-05:00",
    "defaultBranch": {
        "@id": "24db727e-2525-4b1e-af21-b5439b901ceb"
    },
    "description": "Vehicle Project Description",
    "name": "Yashwanth Tue Dec 19 23:47:04 IST 2023"
}
</pre>
