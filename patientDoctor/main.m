//
//  main.m
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Patient *p = [[Patient alloc] initWithName:@"Wiljay" andAge:24 andHealthCard:YES];
        Doctor *d = [[Doctor alloc] initWithName:@"Dr. Mario" andSpecialization:@"everything"];
        
        [p visitDoctor:d];
        [d checkHealthCardandPatient:p.hasHealthCard andPatient:p];
        
        if([d requestMedication:p] == YES){
            char inputChar[255];
            NSLog(@"Enter your symptom: ");
            fgets(inputChar, 255, stdin);
            
            NSString *symptom = [[NSString alloc] initWithCString:inputChar encoding:NSUTF8StringEncoding];
            symptom = [symptom stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            Prescription *prescription = [[Prescription alloc] initWithSymptom:symptom doctor:d];
            [p.prescriptionHistory addObject:prescription];
        } else {
            NSLog(@"I'm not your doctor");
        }
        
        NSLog(@"Patient: %@ age %ld, Doctor: %@ specialization: %@, Prescription: %@ symptom: %@", p.name,(long)p.age,d.name,d.specialization,[p.prescriptionHistory[0] medicine],[p.prescriptionHistory[0] symptom]);
        
    }
    return 0;
}
