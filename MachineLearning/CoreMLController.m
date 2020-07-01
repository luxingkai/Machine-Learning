//
//  CoreMLController.m
//  MachineLearning
//
//  Created by tigerfly on 2020/6/30.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "CoreMLController.h"
#import <CoreML/CoreML.h>
#import "MyImageClassifier.h"

@interface CoreMLController ()

@end

@implementation CoreMLController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- Machine Learning Model
    
    /* Downloading and Compiling a Model on the User's Device, Install Core ML models on the user's device dynamically at runtime.
     •  Reducing the app's download size of your app on the App Store
     •  Determining the right models for the user after installation, based on their location, specific interests, and so on
     •  Providing model updates over the network
     */
    
    // Download and Complie the Model in the Background
    //    NSURL *url = [[NSBundle mainBundle] URLForResource:@"MyImageClassifier" withExtension:@"mlmodel"];
    //    NSURL *compiledModelURL = [MLModel compileModelAtURL:url error:nil];
    //    MLModel *model = [MLModel modelWithContentsOfURL:compiledModelURL error:nil];
    
    // Sava Resuable Models to a Permanent Location
    //    NSURL *appSupportURL = [[NSFileManager defaultManager] URLsForDirectory:NSApplicationSupportDirectory inDomains:NSUserDomainMask].firstObject;
    //    NSString *compiledModelName = compiledModelURL.lastPathComponent;
    //    NSURL *permanentURL = [appSupportURL URLByAppendingPathComponent:compiledModelName];
    //    [[NSFileManager defaultManager] replaceItemAtURL:permanentURL withItemAtURL:compiledModelURL backupItemName:nil options:nil resultingItemURL:nil error:nil];
    
    /*
     Making Predictions with a Sequence of Inputs
     */
    
    // Understand the Neural Network Workflow
    //https://docs-assets.developer.apple.com/published/85521a11a3/0f6a291e-0df2-4664-b761-51e68a92260d.png
    
    //Expose the State of the Model
    //https://docs-assets.developer.apple.com/published/6df3f52344/d9e8a261-0964-4c46-ae58-022e4bffaa41.png
    
    // Make Predictions Based on Previous State
    
    // Verify the Output and Reset the Input State
    
    /*
     Generating a Model Encryption Key
     */
    //https://docs-assets.developer.apple.com/published/76153461e2/original-1591930393.png
    
    
    /*
     Encrypting a Model in Your App
     */
    //https://docs-assets.developer.apple.com/published/d04c505e53/rendered2x-1591930393.png
    
    
#pragma mark -- Model Features
    
    
#pragma mark -- Model Deployments
    
    
#pragma mark -- Model Updates
    

#pragma mark -- Customization
    
    
}



/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
