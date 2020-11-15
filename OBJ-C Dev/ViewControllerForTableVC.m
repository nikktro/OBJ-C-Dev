//
//  ViewControllerForTableVC.m
//  OBJ-C Dev
//
//  Created by Nikolay Trofimov on 15.11.2020.
//

#import "ViewControllerForTableVC.h"


@interface ViewControllerForTableVC () <UITableViewDataSource>

    @property (nonatomic, weak) UITableView *tableView;
    @property (nonatomic, strong) NSArray *colors;

@end

@implementation ViewControllerForTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [self.view class]);

    self.colors = @[
        @"White", @"Yellow", @"Blue", @"Red", @"Green", @"Black", @"Brown", @"Azure", @"Ivory", @"Teal", @"Silver", @"Purple", @"Navy blue", @"Pea green", @"Gray", @"Orange", @"Maroon", @"Charcoal", @"Aquamarine", @"Coral", @"Fuchsia", @"Wheat", @"Lime", @"Crimson", @"Khaki", @"Hot pink", @"Magenta", @"Olden", @"Plum", @"Olive", @"Cyan"
    ];
    
    UITableView *table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    table.dataSource = self;
    [self.view addSubview:table];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifier"];
    }
    cell.textLabel.text = self.colors[indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Section %ld", (long)section];
}

@end
