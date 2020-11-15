//
//  TableViewController.m
//  OBJ-C Dev
//
//  Created by Nikolay Trofimov on 15.11.2020.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"

@interface TableViewController ()

@property (nonatomic, strong) NSMutableArray *colors;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [self.view class]);
    
    self.colors = [@[
        @"White", @"Yellow", @"Blue", @"Red", @"Green", @"Black", @"Brown", @"Azure", @"Ivory", @"Teal", @"Silver", @"Purple", @"Navy blue", @"Pea green", @"Gray", @"Orange", @"Maroon", @"Charcoal", @"Aquamarine", @"Coral", @"Fuchsia", @"Wheat", @"Lime", @"Crimson", @"Khaki", @"Hot pink", @"Magenta", @"Olden", @"Plum", @"Olive", @"Cyan"
    ] mutableCopy];
    
    [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"identifier"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];

    cell.leftLabel.text = [NSString stringWithFormat:@"#%ld", indexPath.row + 1];
    cell.rightLabel.text = [NSString stringWithFormat:@"%@", self.colors[indexPath.row]];
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.colors removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[ indexPath ] withRowAnimation:(UITableViewRowAnimationFade)];
}

@end
