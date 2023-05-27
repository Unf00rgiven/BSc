//
//  TableViewController.m
//  Phase1TestApp
//
//  Created by Ognjen on 4/6/23.
//

#import "TableViewController.h"
#import "CellModel.h"

@interface TableViewController () <UITableViewDelegate, UITableViewDataSource>{
    NSMutableArray *tableList;
}

@property (strong, nonatomic) IBOutlet UITableView *table;

@end


@implementation TableViewController

- (void)sendList:(NSMutableSet *)list {
    if (!tableList) {
        tableList = [[NSMutableArray alloc]init];
    }
    tableList = [list mutableCopy];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.table = [[UITableView alloc] initWithFrame:(CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))style:UITableViewStylePlain];
    self.table.dataSource = self;
    self.table.delegate = self;
    [self.view addSubview:self.table];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    if(cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = ((CellModel*)[tableList objectAtIndex:indexPath.row]).name;
    cell.imageView.image = ((CellModel*)[tableList objectAtIndex:indexPath.row]).image;
    cell.backgroundColor = ((CellModel*)[tableList objectAtIndex:indexPath.row]).color;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if([self.delegate respondsToSelector:@selector(returnCellText:)])
    {
        [self.delegate returnCellText:cell.textLabel.text];
    }
    
    if([self.cellDelegate respondsToSelector:@selector(returnCellColor:)])
    {
        [self.cellDelegate returnCellColor:cell.backgroundColor];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
