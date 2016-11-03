//
//  KWDatabaseManager.h
//  kwToDoList
//
//  Created by Kalyani on 04/10/16.
//  Copyright © 2016 Kalyani Warke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
@interface KWDatabaseManager : NSObject
{
    sqlite3 *myDB;
    
}
+(instancetype)sharedManager;
-(NSString *)getDatabasePath;

-(int)executeQuery:(NSString *)query;
-(NSMutableArray *)getAllTask;

@end
