//
//  CustomTableViewCell.m
//  OBJ-C Dev
//
//  Created by Nikolay Trofimov on 15.11.2020.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell ()

@end

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    UILabel *left = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    left.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:left];
    self.leftLabel = left;
    
    UILabel *right = [[UILabel alloc] initWithFrame:CGRectMake(left.frame.size.width, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    right.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:right];
    self.rightLabel = right;
        
    return self;
}

- (void)prepareForReuse { // for custom reuse
    [super prepareForReuse];
    
    self.leftLabel.text = nil;
    self.rightLabel.text = nil;
    
}


@end
