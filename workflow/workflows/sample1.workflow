{
	"contents": {
		"8767a7eb-40ac-4bb2-96ea-ac68d84d701c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "sample1",
			"subject": "sample1",
			"name": "sample1",
			"documentation": "",
			"lastIds": "e8fa736e-dd82-4534-9e91-78f13dc5dd8e",
			"events": {
				"bf084844-c5d1-4826-96a2-f8cd76e4bfa6": {
					"name": "StartEvent1"
				},
				"f72a6b53-b8b0-41ca-8709-86daf0dc7902": {
					"name": "EndEvent1"
				},
				"5ddbb66b-ef96-4d8e-ba48-a1751bbe4cde": {
					"name": "BoundaryTimerEvent1"
				},
				"36995f4a-d458-4bca-a394-1fc69ded92b0": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"8a2259f9-6f72-4c4f-844e-58816ca804bd": {
					"name": "ManagerApproval"
				},
				"6ddd7946-f67a-4843-9abc-448f4c9fa2a5": {
					"name": "CostCenterApproval"
				},
				"eb637fc1-546c-4e02-8bf9-d54bdc3d80da": {
					"name": "Reminder"
				},
				"77845f4b-51dd-44f3-a1c5-0bc9c6080646": {
					"name": "Calculate Total Price"
				}
			},
			"sequenceFlows": {
				"9a3b0c7a-c871-4ea7-a6b7-25938effabbb": {
					"name": "SequenceFlow1"
				},
				"43c70dae-4d18-4f3c-a3a4-2ab2db25826b": {
					"name": "SequenceFlow2"
				},
				"c3daedfa-68d7-4e90-8576-e24cf31d9e2c": {
					"name": "SequenceFlow3"
				},
				"9fc65a83-3aba-424e-9969-799511260560": {
					"name": "SequenceFlow4"
				},
				"9bbc4f38-044c-4371-bca2-7dd04fddf416": {
					"name": "SequenceFlow5"
				},
				"971636fb-faa0-4ed2-82f0-9a5ff08d9686": {
					"name": "SequenceFlow6"
				}
			},
			"diagrams": {
				"8ff6fb3d-a346-4536-a216-d5f662cfedf9": {}
			}
		},
		"bf084844-c5d1-4826-96a2-f8cd76e4bfa6": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"f72a6b53-b8b0-41ca-8709-86daf0dc7902": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"5ddbb66b-ef96-4d8e-ba48-a1751bbe4cde": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent1",
			"name": "BoundaryTimerEvent1",
			"attachedToRef": "8a2259f9-6f72-4c4f-844e-58816ca804bd",
			"eventDefinitions": {
				"17e140cd-1dec-4401-9f6b-06ca9ed9c1c5": {}
			}
		},
		"8a2259f9-6f72-4c4f-844e-58816ca804bd": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Travel Expense Manager Approval for ${context.expense.user_name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientGroups": "WF_Sample_Manager",
			"formReference": "/forms/MyTravelExpenseApproval.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "mytravelexpenseapproval"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "ManagerApproval"
		},
		"6ddd7946-f67a-4843-9abc-448f4c9fa2a5": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Travel Expense Cost Owner Approval for ${context.expense.user_name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientGroups": "WF_Sample_CostOwner",
			"formReference": "/forms/MyTravelExpenseApproval.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "mytravelexpenseapproval"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "CostCenterApproval"
		},
		"eb637fc1-546c-4e02-8bf9-d54bdc3d80da": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Reminder",
			"mailDefinitionRef": "a664c56a-b6b4-419c-818d-ba97c9089580"
		},
		"77845f4b-51dd-44f3-a1c5-0bc9c6080646": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/sample1/calculateTotalPrice.js",
			"id": "scripttask1",
			"name": "Calculate Total Price"
		},
		"9a3b0c7a-c871-4ea7-a6b7-25938effabbb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "bf084844-c5d1-4826-96a2-f8cd76e4bfa6",
			"targetRef": "8a2259f9-6f72-4c4f-844e-58816ca804bd"
		},
		"43c70dae-4d18-4f3c-a3a4-2ab2db25826b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "8a2259f9-6f72-4c4f-844e-58816ca804bd",
			"targetRef": "77845f4b-51dd-44f3-a1c5-0bc9c6080646"
		},
		"c3daedfa-68d7-4e90-8576-e24cf31d9e2c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "6ddd7946-f67a-4843-9abc-448f4c9fa2a5",
			"targetRef": "f72a6b53-b8b0-41ca-8709-86daf0dc7902"
		},
		"9fc65a83-3aba-424e-9969-799511260560": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "5ddbb66b-ef96-4d8e-ba48-a1751bbe4cde",
			"targetRef": "eb637fc1-546c-4e02-8bf9-d54bdc3d80da"
		},
		"9bbc4f38-044c-4371-bca2-7dd04fddf416": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "77845f4b-51dd-44f3-a1c5-0bc9c6080646",
			"targetRef": "6ddd7946-f67a-4843-9abc-448f4c9fa2a5"
		},
		"8ff6fb3d-a346-4536-a216-d5f662cfedf9": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"446872dc-f36e-45fd-99f2-acabd68e8bc7": {},
				"f3fdf679-c4fb-4ae6-aa70-c51e4e9c2fac": {},
				"5f5665cc-e525-4da0-9029-59fb4dca869a": {},
				"59be3342-5ac9-4807-8c65-47b4ff101be0": {},
				"b82b56ac-fd53-4abc-a98b-775924ca4876": {},
				"e5ae46d3-acbc-432e-831a-f53c6011f1a1": {},
				"473d3c0a-a076-4c2b-8e54-7e4b495214ef": {},
				"8bfd1d0e-ac60-4d4e-8532-d01ff97357d8": {},
				"65b760fa-1875-48c1-b6ef-ce2c0f2908a6": {},
				"05d7e485-ed38-492e-be8e-73dc0ecf5af0": {},
				"e7498d41-ecb9-429c-bd98-60eadf9bb483": {},
				"bd853353-3bc4-48b3-84d4-8edf2b4155a2": {},
				"cb2e9110-8ccc-4acc-b579-c665732776d7": {}
			}
		},
		"17e140cd-1dec-4401-9f6b-06ca9ed9c1c5": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"446872dc-f36e-45fd-99f2-acabd68e8bc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 85,
			"y": 101,
			"width": 32,
			"height": 32,
			"object": "bf084844-c5d1-4826-96a2-f8cd76e4bfa6"
		},
		"f3fdf679-c4fb-4ae6-aa70-c51e4e9c2fac": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 754,
			"y": 101,
			"width": 35,
			"height": 35,
			"object": "f72a6b53-b8b0-41ca-8709-86daf0dc7902"
		},
		"5f5665cc-e525-4da0-9029-59fb4dca869a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101,116.875 236.24147286593848,116.875",
			"sourceSymbol": "446872dc-f36e-45fd-99f2-acabd68e8bc7",
			"targetSymbol": "59be3342-5ac9-4807-8c65-47b4ff101be0",
			"object": "9a3b0c7a-c871-4ea7-a6b7-25938effabbb"
		},
		"59be3342-5ac9-4807-8c65-47b4ff101be0": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "8a2259f9-6f72-4c4f-844e-58816ca804bd",
			"symbols": {
				"7107d404-238d-4aa6-9fe3-3bf045944f49": {}
			}
		},
		"b82b56ac-fd53-4abc-a98b-775924ca4876": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,116.84375 425.80610464945386,116.84375",
			"sourceSymbol": "59be3342-5ac9-4807-8c65-47b4ff101be0",
			"targetSymbol": "05d7e485-ed38-492e-be8e-73dc0ecf5af0",
			"object": "43c70dae-4d18-4f3c-a3a4-2ab2db25826b"
		},
		"e5ae46d3-acbc-432e-831a-f53c6011f1a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 565.3707364329692,
			"y": 87.125,
			"width": 119,
			"height": 60,
			"object": "6ddd7946-f67a-4843-9abc-448f4c9fa2a5"
		},
		"473d3c0a-a076-4c2b-8e54-7e4b495214ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "624.8707275390625,117.8125 771.5,117.8125",
			"sourceSymbol": "e5ae46d3-acbc-432e-831a-f53c6011f1a1",
			"targetSymbol": "f3fdf679-c4fb-4ae6-aa70-c51e4e9c2fac",
			"object": "c3daedfa-68d7-4e90-8576-e24cf31d9e2c"
		},
		"8bfd1d0e-ac60-4d4e-8532-d01ff97357d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 186.24147286593848,
			"y": 236.75,
			"width": 100,
			"height": 60,
			"object": "eb637fc1-546c-4e02-8bf9-d54bdc3d80da"
		},
		"65b760fa-1875-48c1-b6ef-ce2c0f2908a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,162.75 236.24147286593848,266.75",
			"sourceSymbol": "7107d404-238d-4aa6-9fe3-3bf045944f49",
			"targetSymbol": "8bfd1d0e-ac60-4d4e-8532-d01ff97357d8",
			"object": "9fc65a83-3aba-424e-9969-799511260560"
		},
		"05d7e485-ed38-492e-be8e-73dc0ecf5af0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 375.80610464945386,
			"y": 86.9375,
			"width": 100,
			"height": 60,
			"object": "77845f4b-51dd-44f3-a1c5-0bc9c6080646"
		},
		"e7498d41-ecb9-429c-bd98-60eadf9bb483": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "425.80610464945386,117.03125 624.8707364329692,117.03125",
			"sourceSymbol": "05d7e485-ed38-492e-be8e-73dc0ecf5af0",
			"targetSymbol": "e5ae46d3-acbc-432e-831a-f53c6011f1a1",
			"object": "9bbc4f38-044c-4371-bca2-7dd04fddf416"
		},
		"7107d404-238d-4aa6-9fe3-3bf045944f49": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 220.24147286593848,
			"y": 130.75,
			"object": "5ddbb66b-ef96-4d8e-ba48-a1751bbe4cde"
		},
		"e8fa736e-dd82-4534-9e91-78f13dc5dd8e": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 6,
			"startevent": 1,
			"boundarytimerevent": 1,
			"endevent": 2,
			"usertask": 2,
			"scripttask": 1,
			"mailtask": 1
		},
		"a664c56a-b6b4-419c-818d-ba97c9089580": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "jason.zan@sap.com",
			"cc": "${context.expense.user_id}",
			"subject": "Please approve the new travel expense.",
			"text": "Test Mail Body",
			"id": "maildefinition1"
		},
		"36995f4a-d458-4bca-a394-1fc69ded92b0": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"bd853353-3bc4-48b3-84d4-8edf2b4155a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 336.2414728659385,
			"y": 249.25,
			"width": 35,
			"height": 35,
			"object": "36995f4a-d458-4bca-a394-1fc69ded92b0"
		},
		"971636fb-faa0-4ed2-82f0-9a5ff08d9686": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "eb637fc1-546c-4e02-8bf9-d54bdc3d80da",
			"targetRef": "36995f4a-d458-4bca-a394-1fc69ded92b0"
		},
		"cb2e9110-8ccc-4acc-b579-c665732776d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,266.75 353.7414728659385,266.75",
			"sourceSymbol": "8bfd1d0e-ac60-4d4e-8532-d01ff97357d8",
			"targetSymbol": "bd853353-3bc4-48b3-84d4-8edf2b4155a2",
			"object": "971636fb-faa0-4ed2-82f0-9a5ff08d9686"
		}
	}
}