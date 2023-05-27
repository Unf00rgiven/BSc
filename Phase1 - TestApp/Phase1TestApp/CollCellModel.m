//
//  CollCellModel.m
//  Phase1TestApp
//
//  Created by Ognjen on 5/4/23.
//

#import "CollCellModel.h"

@implementation CollCellModel

-(instancetype)initImage:(UIImage *)image andColor:(UIColor *)color {
    if (self = [super init]) {
        self.image = image;
        self.color = color;
    }
    return self;
}

@end
