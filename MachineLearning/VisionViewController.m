//
//  VisionViewController.m
//  MachineLearning
//
//  Created by tigerfly on 2020/6/29.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "VisionViewController.h"
#import <CoreML/CoreML.h>
#import <Vision/Vision.h>
#import <VisionKit/VisionKit.h>
#import "MyImageClassifier.h"
#import <Accelerate/Accelerate.h>

@interface VisionViewController ()

@end

@implementation VisionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- Classifying Images with Vision and Core ML
    
    /* Set up Vision with a Core ML Model */
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"MyImageClassifier 1" withExtension:@"mlmodel"];
    MyImageClassifier *classifier = [[MyImageClassifier alloc] initWithContentsOfURL:url error:nil];
    VNCoreMLModel *model = [VNCoreMLModel modelForMLModel:classifier.model error:nil];
    VNCoreMLRequest *request = [[VNCoreMLRequest alloc] initWithModel:model completionHandler:^(VNRequest * _Nonnull request, NSError * _Nullable error) {
        [self processClassifications:request error:error];
    }];
    request.imageCropAndScaleOption = VNImageCropAndScaleOptionCenterCrop;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        CIImage *ciImage = [[CIImage alloc] initWithCGImage:[UIImage imageNamed:@"images.jpg"].CGImage];
        VNImageRequestHandler *handler = [[VNImageRequestHandler alloc] initWithCIImage:ciImage options:nil];
        @try {
            [handler performRequests:@[request] error:nil];
        } @catch (NSException *exception) {
            NSLog(@"Failed to perform classification.");
        } @finally {
        }
    });
    
    
#pragma mark -- Essential
    
    
#pragma mark -- Still Image Analysis
    
#pragma mark -- Image Sequence Analysis
    
#pragma mark -- Saliency Analysis
    
#pragma mark -- Object Tracking
    
#pragma mark -- Rectangle Detection
    
#pragma mark -- Face and Body Detection
    
#pragma mark -- Body and Hand Pose Detection
     
#pragma mark -- Trajectory Detection
    
#pragma mark -- Contour Detection
    
#pragma mark -- Optical Flow
    
#pragma mark -- Animal Detection
    
#pragma mark -- Barcode Detection
    
#pragma mark -- Text Detection
    
#pragma mark -- Text Recognition
    
#pragma mark -- Request Progress Tracking
    
#pragma mark -- Horizon Detection
    
#pragma mark -- Image Alignment
    
#pragma mark -- Object Recognition
    
#pragma mark -- Machine-Learning Image Analysis
    
#pragma mark -- Coordinate Conversion
    
    
    
}

- (void)processClassifications:(VNRequest *)request error:(NSError *)error {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        if (!request.results) {
            NSLog(@"unable to classify image %@",error.description);
            return;
        }
        for (id obj in request.results) {
            NSLog(@"%@",obj);
        }
    });
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
