//
//  ViewController.m
//  Phase1TestApp
//
//  Created by Ognjen on 4/5/23.
//

#import "ViewController.h"
#import "CellModel.h"
#import "CollCellModel.h"
#import "CollImageViewCell.h"
#import "CollViewCell.h"

@interface ViewController ()<TableDelegate, CellDelegate, UICollectionViewDelegate, UICollectionViewDataSource> {
    TableViewController *viewControllerTable;
    NSMutableArray *listOfItems;
    NSMutableArray *collModels;
    CellModel *model;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    listOfItems = [[NSMutableArray alloc]init];
    returnText.text  = @"";
    
    self->collView.delegate = self;
    self->collView.dataSource = self;
    
    [self.view setBackgroundColor:UIColor.systemGray3Color];
    [collView setBackgroundColor:UIColor.systemGray3Color];
    
    image1.userInteractionEnabled = YES;
    image2.userInteractionEnabled = YES;
    image3.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture1:)];
    [singleTap1 setNumberOfTapsRequired:1];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture2:)];
    [singleTap2 setNumberOfTapsRequired:1];
    UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture3:)];
    [singleTap3 setNumberOfTapsRequired:1];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture4:)];
    [singleTap4 setNumberOfTapsRequired:1];
    UITapGestureRecognizer *singleTap5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture5:)];
    [singleTap5 setNumberOfTapsRequired:1];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGesture6:)];
    [singleTap6 setNumberOfTapsRequired:1];
    
    [image1 addGestureRecognizer:singleTap1];
    [image2 addGestureRecognizer:singleTap2];
    [image3 addGestureRecognizer:singleTap3];
    [color1 addGestureRecognizer:singleTap4];
    [color2 addGestureRecognizer:singleTap5];
    [color3 addGestureRecognizer:singleTap6];
    
    // COLLECTION VIEW
    [self buildModels];
    
    [collView reloadData];
}

- (void)viewDidAppear:(BOOL)animated {
    model = [[CellModel alloc]init];
    NSLog(@"------ NEW MODEL -----");
    
}

- (void)buildModels {
    collModels = [[NSMutableArray alloc] init];
    
    CollCellModel *collModel4 = [[CollCellModel alloc] initImage:[UIImage imageNamed:@"srb"] andColor:nil];
    [collModels addObject:collModel4];
    
    CollCellModel *collModel5 = [[CollCellModel alloc] initImage:[UIImage imageNamed:@"rs"] andColor:nil];
    [collModels addObject:collModel5];
    
    CollCellModel *collModel6 = [[CollCellModel alloc] initImage:[UIImage imageNamed:@"rsk"] andColor:nil];
    [collModels addObject:collModel6];
    
    CollCellModel *collModel1 = [[CollCellModel alloc] init];
    collModel1.color = UIColor.blueColor;
    [collModels addObject:collModel1];
    
    CollCellModel *collModel2 = [[CollCellModel alloc] init];
    collModel2.color = UIColor.redColor;
    [collModels addObject:collModel2];
    
    CollCellModel *collModel3 = [[CollCellModel alloc] init];
    collModel3.color = UIColor.whiteColor;
    [collModels addObject:collModel3];
}
    
- (IBAction)sendText:(UIButton *)sender {
    viewControllerTable = [self.storyboard instantiateViewControllerWithIdentifier:@"TableViewController"];
    [viewControllerTable setDelegate:self];
    [viewControllerTable setCellDelegate:self];
    model.name = inputText.text;
    [listOfItems addObject:model];
    [viewControllerTable sendList:listOfItems];
    [self.navigationController pushViewController: viewControllerTable animated:YES];
}

- (IBAction)singleTapGesture1:(UITapGestureRecognizer *)sender {
    NSLog(@"IMAGE 1");
    model.image = image1.image;
}

- (IBAction)singleTapGesture2:(UITapGestureRecognizer *)sender {
    NSLog(@"IMAGE 2");
    model.image = image2.image;
}

- (IBAction)singleTapGesture3:(UITapGestureRecognizer *)sender {
    NSLog(@"IMAGE 3");
    model.image = image3.image;
}

- (IBAction)singleTapGesture4:(UITapGestureRecognizer *)sender {
    NSLog(@"COLOR 1");
    model.color = color1.backgroundColor;
}

- (IBAction)singleTapGesture5:(UITapGestureRecognizer *)sender {
    NSLog(@"COLOR 2");
    model.color = color2.backgroundColor;
}

- (IBAction)singleTapGesture6:(UITapGestureRecognizer *)sender {
    NSLog(@"COLOR 3");
    model.color = color3.backgroundColor;
}


- (void)returnCellText:(nonnull NSString *)data {
    [returnText setText:data];
}

- (void)returnCellColor:(nonnull UIColor *)color {
    [self.view setBackgroundColor:color];
    [collView setBackgroundColor:color];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return collModels.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollCellModel *collCell = collModels[indexPath.row];
    
    if (collCell.image == nil) {
        // COLOR
        CollViewCell *cell = (CollViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:[CollViewCell getID] forIndexPath:indexPath];
        [cell setBackgroundColor:collCell.color];
        return cell;
    } else {
        // IMAGE
        CollImageViewCell *cell = (CollImageViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:[CollImageViewCell getID] forIndexPath:indexPath];
        [cell setImage:collCell.image];
        return cell;
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGSize size = CGSizeMake(20, 20);

    if (((CollCellModel*)[collModels objectAtIndex:indexPath.row]).image == nil) {
    size = CGSizeMake([CollImageViewCell getWidth], [CollImageViewCell getHeight]);
    }

    if (((CollCellModel*)[collModels objectAtIndex:indexPath.row]).color == nil) {
        size = CGSizeMake([CollViewCell getWidth], [CollViewCell getHeight]);
    }
    
    return size;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    
    if ([cell.restorationIdentifier  isEqual: @"CollImageViewCell"]) {
        CollImageViewCell *cell1 = (CollImageViewCell *)cell;
        model.image = [cell1 getImage];
    }
    
    if ([cell.restorationIdentifier  isEqual: @"CollViewCell"]) {
        CollViewCell *cell1 = (CollViewCell *)cell;
        model.color = [cell1 getColor];
    }
    
}
    
@end
