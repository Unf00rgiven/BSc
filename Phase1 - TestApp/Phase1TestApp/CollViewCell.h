//
//  CollCellView.h
//  Phase1TestApp
//
//  Created by Ognjen on 5/4/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollViewCell : UICollectionViewCell {
    IBOutlet UIView *view;
}

+(CGFloat)getHeight;
+(CGFloat)getWidth;
+(NSString *)getID;
-(void)setBackgroundColor:( UIColor * _Nullable )color;
-(UIColor *)getColor;

@end

NS_ASSUME_NONNULL_END
