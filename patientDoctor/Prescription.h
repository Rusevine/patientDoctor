//
//  Prescription.h
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Prescription : NSObject

@property (nonatomic, readonly) NSString *medicine;
@property (nonatomic, readonly) NSString *symptom;
@property (nonatomic, readonly) Doctor *prescribingDoctor;

-(instancetype)initWithSymptom:(NSString*)symptom doctor:(Doctor*)doctor;


@end
