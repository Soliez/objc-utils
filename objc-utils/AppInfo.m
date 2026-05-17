//
//  AppInfo.m
//  objc-utils
//
//  Created by Erik Solis  on 2026-05-16.
//

#import <Foundation/Foundation.h>
#import <CoreServices/CoreServices.h>

#import "AppInfo.h"


extern CFArrayRef _LSCopyAllApplicationURLs(void);

@implementation AppInfo
- (NSArray *)installedApplications;
{
    NSMutableArray<NSString *> *installed_applications = [NSMutableArray array];
    CFArrayRef raw_urls_array = _LSCopyAllApplicationURLs();
    NSArray<NSURL *> *app_file_urls = CFBridgingRelease(raw_urls_array);
    for (NSURL *app_url in app_file_urls) {
        [installed_applications addObject:[app_url lastPathComponent]];
    }
    return [installed_applications copy];
}
@end
