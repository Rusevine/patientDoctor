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
        Patient *patient = [[Patient alloc] initWithName:@"Wiljay" andAge:24 andHealthCard:YES];
        Doctor *doctor = [[Doctor alloc] initWithName:@"Dr. Mario" andSpecialization:@"everything"];
        
        [patient visitDoctor:doctor];
        [doctor checkHealthCardandPatient:patient.hasHealthCard andPatient:patient];
        
        Prescription *prescription = [doctor requestMedication:patient];
        
        [patient.prescriptionHistory addObject:prescription];
        
        
        NSLog(@"Patient: %@ age %ld, Doctor: %@ specialization: %@, Prescription: %@ symptom: %@", patient.name,(long)patient.age,doctor.name,doctor.specialization,[patient.prescriptionHistory[0] medicine],[patient.prescriptionHistory[0] symptom]);
        
    }
    return 0;
}
