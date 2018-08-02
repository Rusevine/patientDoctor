//
//  Prescription.m
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype)initWithSymptom:(NSString *)symptom doctor:(Doctor *)doctor{
    self = [super init];
    if(self){
        NSDictionary *treatment = @{@"headache":@"advil",@"stomach ache":@"pepto-bismol",@"sneezing":@"claritin"};
        _symptom = symptom;
        _prescribingDoctor = doctor;
        _medicine = treatment[symptom];
    }
    return self;
}




    
    
    

@end
