global without sharing class GetVolunteerShifts implements Callable {
            public Object call(String action, Map<String, Object> args) {
                Map<String, Object> input = (Map<String, Object>)args.get('input');
                Map<String, Object> output = (Map<String, Object>)args.get('output');
                Map<String, Object> options = (Map<String, Object>)args.get('options');
                return invokeMethod(action, input, output, options);
            }

            public Boolean invokeMethod (String methodName, Map<String, Object> input, Map<String, Object> output, Map<String, Object> options){
                if(methodName.equals('getShiftOptions')){
                    getShiftOptions(input, output, options);
                }
                return true;
            }

            public void getShiftOptions (Map<String, Object> input, Map<String, Object> output, Map<String, Object> options){
                String programId = (String)input.get('ProgramId');
                List<Volunteer_Shift__c> shifts = [
                    SELECT Id, Name, Volunteer_Job__r.Volunteer_Program__c, location__c, starttime__c, Volunteer_Job__r.Name, 
                    Volunteer_Job__r.minage__c, remaining_slots__c, endtime__c FROM Volunteer_Shift__c
                    WHERE Remaining_Slots__c > 0 AND Volunteer_Job__r.Volunteer_Program__c =: 'a0Pf6000001B3QDEA0' LIMIT 50000
                ];
				List<Map<String, String>> UIoptions = new List<Map<String, String>>();
                for(Volunteer_Shift__c shift: shifts){
                    Map<String,String> tempMap = new Map<String,String>();
                    tempMap.put('value', shift.Volunteer_Job__r.name+' '+shift.starttime__c+' '+shift.endtime__c+' ('+shift.Remaining_Slots__c+' slots)');
					tempMap.put('name',shift.Id);
                    UIoptions.add(tempMap);
                }
                output.put('options', UIoptions);
            }
        }