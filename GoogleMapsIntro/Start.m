//
//  ViewController.m
//  GoogleMapsIntro
//
//  Created by Christian Barragan on 02/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Start.h"
@import GoogleMaps;

@interface Start ()

@end

@implementation Start {
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    //[super viewDidLoad];
    
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.606967
                                                            longitude:-103.4180457
                                                                 zoom:15];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(20.606967,-103.4180457);
    marker.title = @"ITESO";
    marker.snippet = @"Universidad Jesuita de Guadalajara";
    marker.map = mapView_;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
