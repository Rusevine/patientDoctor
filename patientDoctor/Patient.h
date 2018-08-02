//
//  Patient.h
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Person.h"
#import "Doctor.h"

@interface Patient : Person

@property (nonatomic) NSInteger age;
@property (nonatomic) Doctor *doctor;
@property (nonatomic) BOOL hasHealthCard;

-(instancetype) initWithName:(NSString *)name andAge:(NSInteger)age andHealthCard:(BOOL)healthCard;

@end
