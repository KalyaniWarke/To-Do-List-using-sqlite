//
//  FirstViewController.h
//  kwToDoList
//
//  Created by Kalyani on 03/10/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KWDatabaseManager.h"
@interface FirstViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *allTasks;
}

@property (strong, nonatomic) IBOutlet UITableView *tableTask;

@end

