#import <Foundation/Foundation.h>
#import <CoreServices/CoreServices.h>

#import "AppInfo.h"
//#pragma once


int main(int argc, char * argv[])
{
    AppInfo *ApplicationInfo = [[AppInfo alloc] init];
    NSArray<NSString *> *installed_apps = [ApplicationInfo installedApplications];
    NSLog(@"Installed Apps:\n\n%@", installed_apps);
    return EXIT_SUCCESS;
}
