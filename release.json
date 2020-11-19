{
	"objects": [
		{
			"kind": "ApplicationVersion",
			"name": "${DIL_REPOSITORY_BRANCH}",
			"application": "Local|${DIL_REPOSITORY_NAME}"
		},
		{
			"kind": "Release",
			"name": "${DIL_REPOSITORY_NAME}",
			"version": "${DIL_REPOSITORY_BRANCH}",
			"applicationVersions": [
				"Local|${DIL_REPOSITORY_NAME}/${DIL_REPOSITORY_BRANCH}"
			],
			"isReplaceApplicationVersionOnChangeNotification": false,
			"markAsDonePhaseName": "",
			"runOnCreation": false
		},
		{
			"kind": "Phase",
			"name": "${DIL_ENVIRONMENT_NAME}",
			"release": "${DIL_REPOSITORY_NAME}/${DIL_REPOSITORY_BRANCH}",
			"approvalGate": "AUTOMATIC",
			"skipTasksWithUnchangedApplications": false,
			"isApprovalRequired": false,
			"environments": [
				"${DIL_ENVIRONMENT_NAME}_${DIL_REPOSITORY_NAME}"
			]
		},
		{
			"phase": "${DIL_REPOSITORY_NAME}/${DIL_REPOSITORY_BRANCH}/${DIL_ENVIRONMENT_NAME}",
			"isDisabled": false,
			"applicationVersionBuilds": [
				{
					"applicationVersion": "Local|${DIL_REPOSITORY_NAME}/${DIL_REPOSITORY_BRANCH}",
					"buildNumber": "%${DIL_REPOSITORY_NAME}.last_successful_change%"
				}
			],
			"isOnFailurePhaseEnabled": true,
			"isSkipTaskOnFailure": false,
			"name": "${DIL_ENVIRONMENT_NAME}",
			"kind": "Task"
		}
	],
	"parameters": [
		{
			"name": "DIL_REPOSITORY_NAME",
			"value": "code-churn"
		},
		{
			"name": "DIL_REPOSITORY_BRANCH",
			"value": "main"
		},
		{
			"name": "DIL_ENVIRONMENT_NAME",
			"value": "DEV"
		}
	]
}
