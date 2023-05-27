//
//  CollImageViewCell.h
//  Phase1TestApp
//
//  Created by Ognjen on 5/4/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollImageViewCell : UICollectionViewCell {
    IBOutlet UIImageView *imageView;
}

+(CGFloat)getHeight;
+(CGFloat)getWidth;
+(NSString *)getID;
-(void)setImage:(UIImage *)image;
-(UIImage *)getImage;

@end

NS_ASSUME_NONNULL_END
