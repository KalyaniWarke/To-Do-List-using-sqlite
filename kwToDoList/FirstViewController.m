//
//  FirstViewController.m
//  kwToDoList
//
//  Created by Kalyani on 03/10/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    allTasks = [[NSMutableArray alloc]init];
}
-(void)viewDidAppear:(BOOL)animated{
    [self reloadTask];
}
-(void)reloadTask{
    allTasks = [[KWDatabaseManager sharedManager]getAllTask];
    
    [self.tableTask reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return allTasks.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
  NSString *taskString = [allTasks objectAtIndex:indexPath.row];
    
    cell.textLabel.text =taskString;
    return cell;
    
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Delete");
    
    NSString *task =[allTasks objectAtIndex:indexPath.row];
    
    NSString *deleteQuery =[NSString stringWithFormat:@"DELETE FROM TODOLIST WHERE TASK_ID = '%@'",task.uppercaseString];
    
    if ([[KWDatabaseManager sharedManager]executeQuery:deleteQuery]==1){
        NSLog(@"Successfully Deleted");
        [self reloadTask];
    }
    else {
        NSLog(@"failed to Delete Task.");
    }
}

@end
