#import <React/RCTBridgeModule.h>
#import <React/RCTBridge.h>
#import <React/RCTUIManager.h>
#import <React/RCTConvert.h>
#import <React/RCTConvert+CoreLocation.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTViewManager.h>
#import <React/UIView+React.h>

@interface RCT_EXTERN_MODULE(AmpupSmartCar, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
{
    
}

RCT_EXPORT_METHOD(coordinateForPoint:(nonnull NSNumber *)reactTag
                  point:(NSDictionary *)point
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary<NSNumber *, UIView *> *viewRegistry) {
    id view = viewRegistry[reactTag];
//    AIRMap *mapView = (AIRMap *)view;
//    if (![view isKindOfClass:[AIRMap class]]) {
//      reject(@"Invalid argument", [NSString stringWithFormat:@"Invalid view returned from registry, expecting AIRMap, got: %@", view], NULL);
//    } else {
//      CLLocationCoordinate2D coordinate = [mapView convertPoint:
//                                           CGPointMake(
//                                                       [point[@"x"] doubleValue],
//                                                       [point[@"y"] doubleValue]
//                                                       )
//                                           toCoordinateFromView:mapView];
//
//      resolve(@{
//        @"latitude": @(coordinate.latitude),
//        @"longitude": @(coordinate.longitude),
//      });
//    }
  }];
}

@end
