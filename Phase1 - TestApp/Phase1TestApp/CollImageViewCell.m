//
//  CollImageViewCell.m
//  Phase1TestApp
//
//  Created by Ognjen on 5/4/23.
//

#import "CollImageViewCell.h"

@implementation CollImageViewCell

+ (CGFloat)getHeight {
    return 100;
}
+ (CGFloat)getWidth {
    return 160;
}
+ (NSString *)getID {
    return @"CollImageViewCell";
}

- (void)setImage:(UIImage *)image {
    imageView.image = image;
}

-(UIImage *)getImage {
    return imageView.image;
}

@end
