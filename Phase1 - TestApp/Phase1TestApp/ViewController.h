//
//  ViewController.h
//  Phase1TestApp
//
//  Created by Ognjen on 4/5/23.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"

@interface ViewController : UIViewController {
    IBOutlet UITextField *inputText;
    IBOutlet UILabel *returnText;
    IBOutlet UIImageView *image1;
    IBOutlet UIImageView *image2;
    IBOutlet UIImageView *image3;
    IBOutlet UIView *color1;
    IBOutlet UIView *color2;
    IBOutlet UIView *color3;
    IBOutlet UICollectionView *collView;
}

-(void)buildModels;

-(IBAction)singleTapGesture1:(id)sender;
-(IBAction)singleTapGesture2:(id)sender;
-(IBAction)singleTapGesture3:(id)sender;
-(IBAction)singleTapGesture4:(id)sender;
-(IBAction)singleTapGesture5:(id)sender;
-(IBAction)singleTapGesture6:(id)sender;

@end

