/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
var listOfExpenses = $.context.expense.listOfExpenses;
var listOfApprovers = $.context.approval.listOfApprovers;
var listOfApproval = $.context.approval.listOfApproval;
var totalCost = 0;
var lastDecision = $.usertasks.usertask1.last.decision;
var strActionType = "";
var objNewApproval;
var strGoto = "";
var objTempApprover;
var objNextApprover;
var strApproverID = $.context.approval.approverID;
var strApprovalProcess = $.context.approval.approvalProcess;
var strProcessID = $.context.approval.processID;


/** Calculate the total cost **/
if (listOfExpenses.length >= 0) {
    for (var i = 0; i < listOfExpenses.length; i++) {
        if (listOfExpenses[i].amount !== "") {
            totalCost += listOfExpenses[i].amount;
        }
    }
}
$.context.expense.totalCost = totalCost;

/**  
 * 1) Create a new list of approval
 * 2) Update the approver status in listOfApprovers
 * 3) Update the approvalID, approvalProcess, approverID, status, goto
 * 
 * **/
//Create a new list of approval
if (lastDecision == "reject") {
    strActionType = "Rejected";

} else {
    strActionType = "Approved";
}
var intID = listOfApproval[listOfApproval.length -1].ID + 1;
objNewApproval = {
    "ID": intID,
    "createBy": strApproverID,
    "createAt": new Date(),
    "approvalProcess": strApprovalProcess,
    "actionType": strActionType, "Comment": "~"
};
listOfApproval.push(objNewApproval);
//Update the current approver status in listOfApprovers
if (listOfApprovers.length >= 0) {
    for (var i = 0; i < listOfApprovers.length; i++) {
        if (listOfApprovers[i].ID == strProcessID) {
            objTempApprover = listOfApprovers[i];
            objTempApprover.status = "Completed";
            listOfApprovers[i] = objTempApprover;
        }
    }
    for (var i = 0; i < listOfApprovers.length; i++) {
        if (listOfApprovers[i].approvalProcess == strApprovalProcess && listOfApprovers[i].status == "NotStart") {
            objNextApprover = listOfApprovers[i];
            objTempApprover.status = "InProgress";
            listOfApprovers[i] = objNextApprover;
            strGoto = "NextApprover";
            break;
        }
    }
    if (!objNextApprover) {
        for (var i = 0; i < listOfApprovers.length; i++) {
            if (listOfApprovers[i].status == "NotStart") {
                objNextApprover = listOfApprovers[i];
                objTempApprover.status = "InProgress";
                listOfApprovers[i] = objNextApprover;
                strGoto = "NextApproval";
                break;
            }
        }
    }
}
// Update the approvalID, approvalProcess, approverID, status, goto
if (objNextApprover) {
    $.context.approval.processID = objNextApprover.ID;
    $.context.approval.approvalProcess = objNextApprover.approvalProcess;
    $.context.approval.approverID = objNextApprover.userId;
    $.context.approval.status = status;
    $.context.approval.goto = strGoto;

} else {
    $.context.approval.status = "Completed";
}
// write nodes to workflow context
$.context.approval.listOfApprovers
$.context.approval.listOfApproval