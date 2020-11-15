//
//  CustomTableViewCell.h
//  OBJ-C Dev
//
//  Created by Nikolay Trofimov on 15.11.2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) UILabel *leftLabel;
@property (nonatomic, weak) UILabel *rightLabel;

@end

NS_ASSUME_NONNULL_END
