//
//  Doctor.h
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Person.h"
#import "Prescription.h"
@class Patient;


@interface Doctor : Person

@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableArray<Patient *> *patients;

-(instancetype) initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
-(void)checkHealthCardandPatient:(BOOL)hasHealthCard andPatient:(Patient *)patient;
-(Prescription *)requestMedication:(Patient*)patient;


@end
