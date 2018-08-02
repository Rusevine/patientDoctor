//
//  Patient.h
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Person.h"
@class Doctor;
@class Prescription;

@interface Patient : Person

@property (nonatomic) NSInteger age;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic) Doctor *doctor;
@property (nonatomic) NSMutableArray<Prescription*> *prescriptionHistory;

-(instancetype) initWithName:(NSString *)name andAge:(NSInteger)age andHealthCard:(BOOL)healthCard;
-(void)visitDoctor:(Doctor *)doctor;

@end
