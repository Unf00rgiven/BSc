//
//  CellModel.h
//  Phase1TestApp
//
//  Created by Ognjen on 4/12/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CellModel : NSObject

@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) UIColor *color;
@property(nonatomic, strong) NSString *name;

@end

NS_ASSUME_NONNULL_END
