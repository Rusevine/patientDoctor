//
//  Patient.m
//  patientDoctor
//
//  Created by Wiljay Flores on 2018-08-02.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andHealthCard:(BOOL)healthCard{
    self = [super init];
    if(self){
        self.name = name;
        _age = age;
        _hasHealthCard = healthCard;
    }
    return self;
}
@end
