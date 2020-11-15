//
//  ViewController.m
//  OBJ-C Dev
//
//  Created by Nikolay Trofimov on 11.11.2020.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ViewControllerForTableVC.h"
#import "TableViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Main";
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self configureControls];
    
    // keyboard dismiss
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];
    gestureRecognizer.cancelsTouchesInView = NO;
}

- (void)openAnotherViewController {
    SecondViewController *vc = [SecondViewController new];
    [self.navigationController showViewController:vc sender:self];
    //[self.navigationController pushViewController:vc animated:YES]; // push
    //[self presentViewController:vc animated:YES completion:nil]; // modal
}


- (void)openViewControllerForTableVC {
    ViewControllerForTableVC *vcTable = [ViewControllerForTableVC new];
    [self.navigationController showViewController:vcTable sender:self];
}

- (void)openTableViewController {
    TableViewController *tableViewController = [TableViewController new];
    [self.navigationController showViewController:tableViewController sender:self];
}


- (void)configureControls {
    
    float viewX = self.view.center.x;
    float viewY = self.view.center.y;
    
    
    // UI Button
    //UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoLight]; // basic button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom]; // for custom button
    button.frame = CGRectMake(0.0, 0.0, 100.0, 32.0); // for custom button
    button.center = self.view.center;
    
    [button setTitle:@"Tap me" forState:UIControlStateNormal]; // for custom button
    [button setTitleColor:[UIColor systemBlueColor] forState:(UIControlStateNormal)]; // for custom button (text color)
    [button setImage:[UIImage systemImageNamed:@"square.and.pencil"] forState:(UIControlStateNormal)]; // for custom button image
    [button setTintColor:[UIColor systemRedColor]]; // for custom button (tint color not for action)
    [button setBackgroundColor:[[UIColor systemOrangeColor] colorWithAlphaComponent:0.5]]; // for custom button (background color)
    
    [button addTarget:self action:@selector(openAnotherViewController) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
    
    // add purple View
    UIView *purpleView = [[UIView alloc] initWithFrame: CGRectMake(
                                     0.0,
                                     self.navigationController.navigationBar.frame.size.height + 20.0,
                                     self.view.frame.size.width,
                                     100.0)];
    [purpleView setBackgroundColor:[UIColor systemPurpleColor]];
    [self.view addSubview: purpleView];
    
    
    // add UILabel
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 300.0, 28.0)];
    label.center = CGPointMake(self.view.center.x, self.view.center.y - 50.0);
    label.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightBold];
    label.text = @"Hello! Wanna play a game?";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor systemGreenColor];
    [self.view addSubview:label];
    
    
    // add UITextField
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 32.0)];
    textField.center = CGPointMake(viewX, viewY + 50.0);
    textField.textColor = [UIColor whiteColor];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.keyboardType = UIKeyboardTypeNumberPad;
    textField.keyboardAppearance = UIKeyboardAppearanceDark;
    [self.view addSubview:textField];
    
    
    // add UIButton for TableVC
    UIButton *buttonVCTable = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonVCTable.frame = CGRectMake(0.0, 0.0, 100.0, 32.0);
    buttonVCTable.center = CGPointMake(viewX, viewY + 100.0);
    [buttonVCTable setBackgroundColor:[UIColor systemOrangeColor]];
    [buttonVCTable setTitleColor:[UIColor systemBlueColor] forState:(UIControlStateNormal)];
    [buttonVCTable setTitle:@"VC+Table" forState:UIControlStateNormal];
    [self.view addSubview:buttonVCTable];
    
    [buttonVCTable addTarget:self action:@selector(openViewControllerForTableVC) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:buttonVCTable];
    
    
    // add UIButton for TableVC
    UIButton *buttonTableVC = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTableVC.frame = CGRectMake(0.0, 0.0, 100.0, 32.0);
    buttonTableVC.center = CGPointMake(viewX, viewY + 150.0);
    [buttonTableVC setBackgroundColor:[UIColor systemOrangeColor]];
    [buttonTableVC setTitleColor:[UIColor systemBlueColor] forState:(UIControlStateNormal)];
    [buttonTableVC setTitle:@"TableVC" forState:UIControlStateNormal];
    [self.view addSubview:buttonTableVC];
    
    [buttonTableVC addTarget:self action:@selector(openTableViewController) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:buttonTableVC];
    
    
    // add Image View
    float imagePositionX = self.view.center.x;
    float imagePositionY = self.navigationController.navigationBar.frame.size.height + 150.0;
    UIImageView *imagePhone = [[UIImageView alloc] initWithImage:[UIImage systemImageNamed:@"phone"]];
    UIImageView *imageCalendar = [[UIImageView alloc] initWithImage:[UIImage systemImageNamed:@"calendar"]];
    UIImageView *imageMessage= [[UIImageView alloc] initWithImage:[UIImage systemImageNamed:@"message"]];
    
    imagePhone.center = CGPointMake(imagePositionX - 100, imagePositionY);
    imageCalendar.frame = CGRectMake(50.0, 50.0, 50.0, 50.0);
    imageCalendar.tintColor = [UIColor systemOrangeColor];
    imageCalendar.backgroundColor = [UIColor systemFillColor];
    imageCalendar.layer.cornerRadius = 5;
    //imageCalendar.contentMode = UIViewContentModeCenter;
    imageCalendar.center = CGPointMake(imagePositionX, imagePositionY);
    imageMessage.center = CGPointMake(imagePositionX + 100, imagePositionY);
    [self.view addSubview:imageCalendar];
    [self.view addSubview:imageMessage];
    [self.view addSubview:imagePhone];
    
}

- (void)dismissKeyboard {
     [self.view endEditing:YES];
}

@end
