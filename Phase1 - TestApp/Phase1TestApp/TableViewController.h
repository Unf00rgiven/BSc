//
//  TableViewController.h
//  Phase1TestApp
//
//  Created by Ognjen on 4/6/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TableDelegate <NSObject>

-(void)returnCellText:(NSString *)data;

@end

@protocol CellDelegate <NSObject>

-(void)returnCellColor:(UIColor *)color;

@end

@interface TableViewController : UIViewController

-(void)sendList:(NSMutableArray *)list;

@property(nonatomic, weak) id<TableDelegate>delegate;

@property(nonatomic, weak) id<CellDelegate>cellDelegate;

@end

NS_ASSUME_NONNULL_END
