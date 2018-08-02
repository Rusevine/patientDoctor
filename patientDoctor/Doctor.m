//
//  Doctor.m
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Doctor.h"


@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization{
    self = [super init];
    if(self){
        self.name = name;
        _specialization = specialization;
        _patients = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)checkHealthCardandPatient:(BOOL)hasHealthCard andPatient:(Patient*)patient{
    if(hasHealthCard == YES){
        [self.patients addObject:patient];
    }
}

-(BOOL)requestMedication:(Patient*)patient{
    if([self.patients containsObject:patient]){
        return YES;
    } else {
        return NO;
    }
}


@end
