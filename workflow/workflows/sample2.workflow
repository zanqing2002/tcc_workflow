{
	"contents": {
		"0e2acd29-5db8-4e18-af7f-70260d91c980": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "sample2",
			"subject": "sample2",
			"customAttributes": [],
			"name": "sample2",
			"documentation": "",
			"lastIds": "224786d2-d1a6-43d4-8ecc-6de91e9af627",
			"events": {
				"216d1e68-fc1a-42ef-a0ee-10a836b63794": {
					"name": "StartEvent1"
				},
				"8773dd90-8798-41f7-b469-fb6936a9ea4e": {
					"name": "EndEvent1"
				},
				"680b9aa7-292e-44a6-bf27-b0e22ae7325c": {
					"name": "EndEvent3"
				}
			},
			"activities": {
				"2b8adc37-1550-42d2-81eb-ecace03422f4": {
					"name": "ManagerApproval"
				},
				"974896ca-257a-4bcd-a352-f45d221cc870": {
					"name": "CostCenterApproval"
				},
				"18967222-a813-418f-8d12-82ec135b8961": {
					"name": "ExclusiveGateway1"
				},
				"2de97655-ceed-4309-9473-2d8a8f706407": {
					"name": "Revision"
				},
				"d0299cd1-ff19-455c-b870-63fe49287714": {
					"name": "ExclusiveGateway2"
				},
				"7d995c6a-6673-441f-8d42-0a4352dec3b2": {
					"name": "ExclusiveGateway3"
				},
				"f2f0a000-dcdc-4b03-aa4f-18bef43869e8": {
					"name": "UpdateContext"
				}
			},
			"sequenceFlows": {
				"77826f87-a98b-48fe-a0ed-90d59c749ff1": {
					"name": "SequenceFlow1"
				},
				"868f1ae0-294d-44c9-b91f-e2b3bf36ac3c": {
					"name": "SequenceFlow2"
				},
				"a5e726b1-3907-43b0-8eb1-87e027d6eac1": {
					"name": "SequenceFlow3"
				},
				"fc374495-8053-40ec-805c-491a46dc270f": {
					"name": "Next"
				},
				"27b28a70-3bbd-4943-9fba-ed4e05c868a1": {
					"name": "SequenceFlow11"
				},
				"192929e3-ea7c-4b47-9f58-db8fe7a24aa5": {
					"name": "SequenceFlow12"
				},
				"20e03791-f7ea-4ec7-990a-4f97fee98369": {
					"name": "Reject"
				},
				"e4efc294-234e-48b9-856b-4f77cf03b9fd": {
					"name": "Cancel"
				},
				"55190c81-da8c-45d0-bb5f-41f37a59f484": {
					"name": "Submit"
				},
				"9b72541f-a115-4dcc-a96b-cc5a8146d1ab": {
					"name": "NextManagerApproval"
				},
				"510df5fd-ab9a-49da-a7aa-f9b46edc1dcd": {
					"name": "Reject"
				},
				"a5c5c2ae-7f81-47a7-8490-fcaf7b93364b": {
					"name": "SequenceFlow45"
				}
			},
			"diagrams": {
				"873160bd-8bfa-4d2a-9000-199e9c163e9e": {}
			}
		},
		"216d1e68-fc1a-42ef-a0ee-10a836b63794": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"8773dd90-8798-41f7-b469-fb6936a9ea4e": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"680b9aa7-292e-44a6-bf27-b0e22ae7325c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"2b8adc37-1550-42d2-81eb-ecace03422f4": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Travel Expense Manager Approval for ${context.approval.approverID}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approval.approverID}",
			"recipientGroups": "",
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
		"974896ca-257a-4bcd-a352-f45d221cc870": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Travel Expense Cost Owner Approval for ${context.approval.approverID}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approval.approverID}",
			"recipientGroups": "",
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
		"18967222-a813-418f-8d12-82ec135b8961": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "fc374495-8053-40ec-805c-491a46dc270f"
		},
		"2de97655-ceed-4309-9473-2d8a8f706407": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Your travel expense has been rejected.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.expense.user_id}",
			"formReference": "/forms/MyTravelExpenseRevision.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "mytravelexpenserevision"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"customAttributes": [{
				"id": "version",
				"label": "version",
				"type": "string",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Revision",
			"dueDateRef": "00ee1794-3242-40a6-a829-a4c6e354b2d1"
		},
		"d0299cd1-ff19-455c-b870-63fe49287714": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "192929e3-ea7c-4b47-9f58-db8fe7a24aa5"
		},
		"7d995c6a-6673-441f-8d42-0a4352dec3b2": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "ExclusiveGateway3",
			"default": "55190c81-da8c-45d0-bb5f-41f37a59f484"
		},
		"f2f0a000-dcdc-4b03-aa4f-18bef43869e8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/sample2/UpdateContext.js",
			"id": "scripttask1",
			"name": "UpdateContext"
		},
		"77826f87-a98b-48fe-a0ed-90d59c749ff1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "216d1e68-fc1a-42ef-a0ee-10a836b63794",
			"targetRef": "2b8adc37-1550-42d2-81eb-ecace03422f4"
		},
		"868f1ae0-294d-44c9-b91f-e2b3bf36ac3c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "2b8adc37-1550-42d2-81eb-ecace03422f4",
			"targetRef": "f2f0a000-dcdc-4b03-aa4f-18bef43869e8"
		},
		"a5e726b1-3907-43b0-8eb1-87e027d6eac1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "974896ca-257a-4bcd-a352-f45d221cc870",
			"targetRef": "d0299cd1-ff19-455c-b870-63fe49287714"
		},
		"fc374495-8053-40ec-805c-491a46dc270f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "Next",
			"sourceRef": "18967222-a813-418f-8d12-82ec135b8961",
			"targetRef": "974896ca-257a-4bcd-a352-f45d221cc870"
		},
		"27b28a70-3bbd-4943-9fba-ed4e05c868a1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "2de97655-ceed-4309-9473-2d8a8f706407",
			"targetRef": "7d995c6a-6673-441f-8d42-0a4352dec3b2"
		},
		"192929e3-ea7c-4b47-9f58-db8fe7a24aa5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "d0299cd1-ff19-455c-b870-63fe49287714",
			"targetRef": "8773dd90-8798-41f7-b469-fb6936a9ea4e"
		},
		"20e03791-f7ea-4ec7-990a-4f97fee98369": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision==\"reject\"}",
			"id": "sequenceflow13",
			"name": "Reject",
			"sourceRef": "d0299cd1-ff19-455c-b870-63fe49287714",
			"targetRef": "2de97655-ceed-4309-9473-2d8a8f706407"
		},
		"e4efc294-234e-48b9-856b-4f77cf03b9fd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision==\"cancel\"}",
			"id": "sequenceflow15",
			"name": "Cancel",
			"sourceRef": "7d995c6a-6673-441f-8d42-0a4352dec3b2",
			"targetRef": "680b9aa7-292e-44a6-bf27-b0e22ae7325c"
		},
		"55190c81-da8c-45d0-bb5f-41f37a59f484": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "Submit",
			"sourceRef": "7d995c6a-6673-441f-8d42-0a4352dec3b2",
			"targetRef": "2b8adc37-1550-42d2-81eb-ecace03422f4"
		},
		"9b72541f-a115-4dcc-a96b-cc5a8146d1ab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approval.goto==\"nextApprover\"}",
			"id": "sequenceflow42",
			"name": "NextManagerApproval",
			"sourceRef": "18967222-a813-418f-8d12-82ec135b8961",
			"targetRef": "2b8adc37-1550-42d2-81eb-ecace03422f4"
		},
		"510df5fd-ab9a-49da-a7aa-f9b46edc1dcd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approval.goto==\"revision\"}",
			"id": "sequenceflow43",
			"name": "Reject",
			"documentation": "${context.approval.processID}",
			"sourceRef": "18967222-a813-418f-8d12-82ec135b8961",
			"targetRef": "2de97655-ceed-4309-9473-2d8a8f706407"
		},
		"a5c5c2ae-7f81-47a7-8490-fcaf7b93364b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow45",
			"name": "SequenceFlow45",
			"sourceRef": "f2f0a000-dcdc-4b03-aa4f-18bef43869e8",
			"targetRef": "18967222-a813-418f-8d12-82ec135b8961"
		},
		"873160bd-8bfa-4d2a-9000-199e9c163e9e": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"5337bbe3-88ff-4328-8c5c-0d1622d42900": {},
				"7b31b122-0a09-4c14-92b5-8f8983698c93": {},
				"d70310a2-0634-4095-928f-1ecad6c25c5e": {},
				"2222b895-0ca3-487c-830e-7f5f028b5398": {},
				"58b6bdfa-c4a1-4195-aaf7-1789989f2334": {},
				"6428e24b-3b89-4b79-8d32-5ad53b9cc9a2": {},
				"f9fd5df3-be19-4bf1-acf9-7d109f31b8d0": {},
				"0991a22e-403a-4952-bbb5-d8407165e7b9": {},
				"7c6478c6-f281-4e30-9519-18d69378361e": {},
				"95c664ee-7595-4a0c-9cf6-7c36a7305741": {},
				"3f79ce90-9919-4b5e-b139-77590bb0526b": {},
				"714c4bff-d99a-4c16-9f59-61a222f89cf3": {},
				"4444c85f-eb1e-4ede-80b2-ba88ed3d6f51": {},
				"f918a152-3c43-43b2-ac7c-a90d5ac332e3": {},
				"36f28211-5781-41aa-90e8-6d46eea3812a": {},
				"aa51245f-c4fe-48f9-a4d3-cbef1d007d5d": {},
				"62681b83-5b54-4eb5-8bfb-6c75b4f7cb67": {},
				"ea85d5c5-0098-4fc8-9d39-31c2c75eabd6": {},
				"1eb87c58-defe-47bb-9c51-0f0d54196bce": {},
				"87d417f9-4168-4233-832d-e9cd98736563": {},
				"74f27559-29d4-4c29-a579-5d2e9693b344": {},
				"f4f9cffa-f9d6-4fc8-b02b-31b4f2eab908": {}
			}
		},
		"5337bbe3-88ff-4328-8c5c-0d1622d42900": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -85,
			"y": 94,
			"width": 32,
			"height": 32,
			"object": "216d1e68-fc1a-42ef-a0ee-10a836b63794"
		},
		"7b31b122-0a09-4c14-92b5-8f8983698c93": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 954.9999952316284,
			"y": 96.5,
			"width": 35,
			"height": 35,
			"object": "8773dd90-8798-41f7-b469-fb6936a9ea4e"
		},
		"d70310a2-0634-4095-928f-1ecad6c25c5e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-69,112.49999985098839 165.4999988079071,112.49999985098839",
			"sourceSymbol": "5337bbe3-88ff-4328-8c5c-0d1622d42900",
			"targetSymbol": "2222b895-0ca3-487c-830e-7f5f028b5398",
			"object": "77826f87-a98b-48fe-a0ed-90d59c749ff1"
		},
		"2222b895-0ca3-487c-830e-7f5f028b5398": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 106.9999988079071,
			"y": 84.99999970197678,
			"width": 117,
			"height": 60,
			"object": "2b8adc37-1550-42d2-81eb-ecace03422f4"
		},
		"58b6bdfa-c4a1-4195-aaf7-1789989f2334": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "165.4999988079071,112.49999985098839 352,112.49999985098839",
			"sourceSymbol": "2222b895-0ca3-487c-830e-7f5f028b5398",
			"targetSymbol": "74f27559-29d4-4c29-a579-5d2e9693b344",
			"object": "868f1ae0-294d-44c9-b91f-e2b3bf36ac3c"
		},
		"6428e24b-3b89-4b79-8d32-5ad53b9cc9a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 647.9999964237213,
			"y": 85,
			"width": 118,
			"height": 60,
			"object": "974896ca-257a-4bcd-a352-f45d221cc870"
		},
		"f9fd5df3-be19-4bf1-acf9-7d109f31b8d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "707,115 838.7499958276749,115",
			"sourceSymbol": "6428e24b-3b89-4b79-8d32-5ad53b9cc9a2",
			"targetSymbol": "714c4bff-d99a-4c16-9f59-61a222f89cf3",
			"object": "a5e726b1-3907-43b0-8eb1-87e027d6eac1"
		},
		"0991a22e-403a-4952-bbb5-d8407165e7b9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 487.9999976158142,
			"y": 93.99999970197678,
			"object": "18967222-a813-418f-8d12-82ec135b8961"
		},
		"7c6478c6-f281-4e30-9519-18d69378361e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 253.9999964237213,
			"y": -184,
			"width": 122,
			"height": 60,
			"object": "2de97655-ceed-4309-9473-2d8a8f706407"
		},
		"95c664ee-7595-4a0c-9cf6-7c36a7305741": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "508.9999976158142,119 706.9999964237213,119",
			"sourceSymbol": "0991a22e-403a-4952-bbb5-d8407165e7b9",
			"targetSymbol": "6428e24b-3b89-4b79-8d32-5ad53b9cc9a2",
			"object": "fc374495-8053-40ec-805c-491a46dc270f"
		},
		"3f79ce90-9919-4b5e-b139-77590bb0526b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "315,-147.5 157,-147.5",
			"sourceSymbol": "7c6478c6-f281-4e30-9519-18d69378361e",
			"targetSymbol": "36f28211-5781-41aa-90e8-6d46eea3812a",
			"object": "27b28a70-3bbd-4943-9fba-ed4e05c868a1"
		},
		"714c4bff-d99a-4c16-9f59-61a222f89cf3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 817.7499958276749,
			"y": 94,
			"object": "d0299cd1-ff19-455c-b870-63fe49287714"
		},
		"4444c85f-eb1e-4ede-80b2-ba88ed3d6f51": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "838.7499958276749,114.5 972.4999952316284,114.5",
			"sourceSymbol": "714c4bff-d99a-4c16-9f59-61a222f89cf3",
			"targetSymbol": "7b31b122-0a09-4c14-92b5-8f8983698c93",
			"object": "192929e3-ea7c-4b47-9f58-db8fe7a24aa5"
		},
		"f918a152-3c43-43b2-ac7c-a90d5ac332e3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "841,94 841,-170 376.4999964237213,-170",
			"sourceSymbol": "714c4bff-d99a-4c16-9f59-61a222f89cf3",
			"targetSymbol": "7c6478c6-f281-4e30-9519-18d69378361e",
			"object": "20e03791-f7ea-4ec7-990a-4f97fee98369"
		},
		"36f28211-5781-41aa-90e8-6d46eea3812a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 136,
			"y": -168,
			"object": "7d995c6a-6673-441f-8d42-0a4352dec3b2"
		},
		"aa51245f-c4fe-48f9-a4d3-cbef1d007d5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 15,
			"y": -168.5,
			"width": 35,
			"height": 35,
			"object": "680b9aa7-292e-44a6-bf27-b0e22ae7325c"
		},
		"62681b83-5b54-4eb5-8bfb-6c75b4f7cb67": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "155.25,-149 34.25,-149",
			"sourceSymbol": "36f28211-5781-41aa-90e8-6d46eea3812a",
			"targetSymbol": "aa51245f-c4fe-48f9-a4d3-cbef1d007d5d",
			"object": "e4efc294-234e-48b9-856b-4f77cf03b9fd"
		},
		"ea85d5c5-0098-4fc8-9d39-31c2c75eabd6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "157.5,-147 157.5,117",
			"sourceSymbol": "36f28211-5781-41aa-90e8-6d46eea3812a",
			"targetSymbol": "2222b895-0ca3-487c-830e-7f5f028b5398",
			"object": "55190c81-da8c-45d0-bb5f-41f37a59f484"
		},
		"1eb87c58-defe-47bb-9c51-0f0d54196bce": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "508.9999976158142,116.49999970197678 508.9999976158142,272 157,272 157,116.49999970197678",
			"sourceSymbol": "0991a22e-403a-4952-bbb5-d8407165e7b9",
			"targetSymbol": "2222b895-0ca3-487c-830e-7f5f028b5398",
			"object": "9b72541f-a115-4dcc-a96b-cc5a8146d1ab"
		},
		"87d417f9-4168-4233-832d-e9cd98736563": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "512.9999985676754,114.99999977449954 513,-158 353,-158",
			"sourceSymbol": "0991a22e-403a-4952-bbb5-d8407165e7b9",
			"targetSymbol": "7c6478c6-f281-4e30-9519-18d69378361e",
			"object": "510df5fd-ab9a-49da-a7aa-f9b46edc1dcd"
		},
		"74f27559-29d4-4c29-a579-5d2e9693b344": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 302,
			"y": 80,
			"width": 100,
			"height": 60,
			"object": "f2f0a000-dcdc-4b03-aa4f-18bef43869e8"
		},
		"f4f9cffa-f9d6-4fc8-b02b-31b4f2eab908": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "352,111.9999999254942 509,111.9999999254942",
			"sourceSymbol": "74f27559-29d4-4c29-a579-5d2e9693b344",
			"targetSymbol": "0991a22e-403a-4952-bbb5-d8407165e7b9",
			"object": "a5c5c2ae-7f81-47a7-8490-fcaf7b93364b"
		},
		"224786d2-d1a6-43d4-8ecc-6de91e9af627": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"timereventdefinition": 3,
			"sequenceflow": 45,
			"startevent": 1,
			"endevent": 3,
			"usertask": 9,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 7,
			"parallelgateway": 4
		},
		"00ee1794-3242-40a6-a829-a4c6e354b2d1": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P1D",
			"id": "timereventdefinition3"
		}
	}
}