//
//  CollCellModel.h
//  Phase1TestApp
//
//  Created by Ognjen on 5/4/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CollCellModel : NSObject

@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) UIColor *color;

-(instancetype)initImage:(UIImage *)image andColor:(UIColor *)color;

@end

