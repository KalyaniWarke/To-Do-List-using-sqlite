//
//  SecondViewController.h
//  kwToDoList
//
//  Created by Kalyani on 03/10/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KWDatabaseManager.h"
@interface SecondViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textTask;
@property (strong, nonatomic) IBOutlet UIButton *buttonSave;
- (IBAction)saveTask:(id)sender;


@end

