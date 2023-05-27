//
//  CollCellView.m
//  Phase1TestApp
//
//  Created by Ognjen on 5/4/23.
//

#import "CollViewCell.h"

@implementation CollViewCell

+ (CGFloat)getHeight {
    return 100;
}
+ (CGFloat)getWidth {
    return 160;
}
+ (NSString *)getID {
    return @"CollViewCell";
}

- (void)setBackgroundColor:(UIColor *)color {
    view.backgroundColor = color;
}

-(UIColor *)getColor {
    return view.backgroundColor;
}

@end
