.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final blacklist PERMISSIONS_injectLocation:[Ljava/lang/String;

.field static final blacklist TRANSACTION_addGnssAntennaInfoListener:I = 0x1c

.field static final greylist-max-o TRANSACTION_addGnssMeasurementsListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addGnssNavigationMessageListener:I = 0x1a

.field static final blacklist TRANSACTION_addProviderRequestListener:I = 0x1e

.field static final greylist-max-o TRANSACTION_addTestProvider:I = 0x36

.field static final greylist-max-o TRANSACTION_flushGnssBatch:I = 0x22

.field static final blacklist TRANSACTION_forwardGeocode:I = 0xe

.field static final blacklist TRANSACTION_getAdasAllowlist:I = 0x3e

.field static final greylist-max-r TRANSACTION_getAllProviders:I = 0x25

.field static final greylist-max-o TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x3c

.field static final greylist-max-o TRANSACTION_getBestProvider:I = 0x27

.field static final blacklist TRANSACTION_getCurrentLocation:I = 0x2

.field static final blacklist TRANSACTION_getExtraLocationControllerPackage:I = 0x2c

.field static final blacklist TRANSACTION_getGnssAntennaInfos:I = 0x12

.field static final greylist-max-o TRANSACTION_getGnssBatchSize:I = 0x20

.field static final blacklist TRANSACTION_getGnssCapabilities:I = 0xf

.field static final greylist-max-o TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final blacklist TRANSACTION_getGnssTimeMillis:I = 0x3a

.field static final greylist-max-o TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final blacklist TRANSACTION_getIgnoreSettingsAllowlist:I = 0x3d

.field static final greylist-max-o TRANSACTION_getLastLocation:I = 0x1

.field static final blacklist TRANSACTION_getProviderPackages:I = 0x2a

.field static final greylist-max-o TRANSACTION_getProviderProperties:I = 0x28

.field static final greylist-max-o TRANSACTION_getProviders:I = 0x26

.field static final blacklist TRANSACTION_hasProvider:I = 0x24

.field static final blacklist TRANSACTION_injectGnssMeasurementCorrections:I = 0x19

.field static final greylist-max-o TRANSACTION_injectLocation:I = 0x7

.field static final blacklist TRANSACTION_isAdasGnssLocationEnabledForUser:I = 0x32

.field static final blacklist TRANSACTION_isAutomotiveGnssSuspended:I = 0x34

.field static final blacklist TRANSACTION_isExtraLocationControllerPackageEnabled:I = 0x2e

.field static final blacklist TRANSACTION_isGeocodeAvailable:I = 0xc

.field static final greylist-max-o TRANSACTION_isLocationEnabledForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_isProviderEnabledForUser:I = 0x2f

.field static final blacklist TRANSACTION_isProviderPackage:I = 0x29

.field static final blacklist TRANSACTION_registerGnssNmeaCallback:I = 0x15

.field static final greylist-max-o TRANSACTION_registerGnssStatusCallback:I = 0x13

.field static final blacklist TRANSACTION_registerLocationListener:I = 0x3

.field static final blacklist TRANSACTION_registerLocationPendingIntent:I = 0x5

.field static final greylist-max-o TRANSACTION_removeGeofence:I = 0xb

.field static final blacklist TRANSACTION_removeGnssAntennaInfoListener:I = 0x1d

.field static final greylist-max-o TRANSACTION_removeGnssMeasurementsListener:I = 0x18

.field static final greylist-max-o TRANSACTION_removeGnssNavigationMessageListener:I = 0x1b

.field static final blacklist TRANSACTION_removeProviderRequestListener:I = 0x1f

.field static final greylist-max-o TRANSACTION_removeTestProvider:I = 0x37

.field static final greylist-max-o TRANSACTION_requestGeofence:I = 0xa

.field static final blacklist TRANSACTION_requestListenerFlush:I = 0x8

.field static final blacklist TRANSACTION_requestPendingIntentFlush:I = 0x9

.field static final blacklist TRANSACTION_reverseGeocode:I = 0xd

.field static final greylist-max-o TRANSACTION_sendExtraCommand:I = 0x3b

.field static final blacklist TRANSACTION_setAdasGnssLocationEnabledForUser:I = 0x33

.field static final blacklist TRANSACTION_setAutomotiveGnssSuspended:I = 0x35

.field static final blacklist TRANSACTION_setExtraLocationControllerPackage:I = 0x2b

.field static final blacklist TRANSACTION_setExtraLocationControllerPackageEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_setLocationEnabledForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_setTestProviderEnabled:I = 0x39

.field static final greylist-max-o TRANSACTION_setTestProviderLocation:I = 0x38

.field static final greylist-max-o TRANSACTION_startGnssBatch:I = 0x21

.field static final greylist-max-o TRANSACTION_stopGnssBatch:I = 0x23

.field static final blacklist TRANSACTION_unregisterGnssNmeaCallback:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterGnssStatusCallback:I = 0x14

.field static final blacklist TRANSACTION_unregisterLocationListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterLocationPendingIntent:I = 0x6


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2313
    const-string v0, "android.permission.LOCATION_HARDWARE"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/location/ILocationManager$Stub;->PERMISSIONS_injectLocation:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    nop

    .line 254
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/location/ILocationManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 255
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 243
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 244
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 245
    if-eqz p1, :cond_d

    .line 248
    iput-object p1, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 249
    return-void

    .line 246
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 262
    if-nez p0, :cond_4

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_4
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 266
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_14

    .line 267
    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    .line 269
    :cond_14
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 278
    packed-switch p0, :pswitch_data_c0

    .line 530
    const/4 v0, 0x0

    return-object v0

    .line 526
    :pswitch_5
    const-string v0, "getAdasAllowlist"

    return-object v0

    .line 522
    :pswitch_8
    const-string v0, "getIgnoreSettingsAllowlist"

    return-object v0

    .line 518
    :pswitch_b
    const-string v0, "getBackgroundThrottlingWhitelist"

    return-object v0

    .line 514
    :pswitch_e
    const-string v0, "sendExtraCommand"

    return-object v0

    .line 510
    :pswitch_11
    const-string v0, "getGnssTimeMillis"

    return-object v0

    .line 506
    :pswitch_14
    const-string v0, "setTestProviderEnabled"

    return-object v0

    .line 502
    :pswitch_17
    const-string v0, "setTestProviderLocation"

    return-object v0

    .line 498
    :pswitch_1a
    const-string v0, "removeTestProvider"

    return-object v0

    .line 494
    :pswitch_1d
    const-string v0, "addTestProvider"

    return-object v0

    .line 490
    :pswitch_20
    const-string v0, "setAutomotiveGnssSuspended"

    return-object v0

    .line 486
    :pswitch_23
    const-string v0, "isAutomotiveGnssSuspended"

    return-object v0

    .line 482
    :pswitch_26
    const-string v0, "setAdasGnssLocationEnabledForUser"

    return-object v0

    .line 478
    :pswitch_29
    const-string v0, "isAdasGnssLocationEnabledForUser"

    return-object v0

    .line 474
    :pswitch_2c
    const-string v0, "setLocationEnabledForUser"

    return-object v0

    .line 470
    :pswitch_2f
    const-string v0, "isLocationEnabledForUser"

    return-object v0

    .line 466
    :pswitch_32
    const-string v0, "isProviderEnabledForUser"

    return-object v0

    .line 462
    :pswitch_35
    const-string v0, "isExtraLocationControllerPackageEnabled"

    return-object v0

    .line 458
    :pswitch_38
    const-string v0, "setExtraLocationControllerPackageEnabled"

    return-object v0

    .line 454
    :pswitch_3b
    const-string v0, "getExtraLocationControllerPackage"

    return-object v0

    .line 450
    :pswitch_3e
    const-string v0, "setExtraLocationControllerPackage"

    return-object v0

    .line 446
    :pswitch_41
    const-string v0, "getProviderPackages"

    return-object v0

    .line 442
    :pswitch_44
    const-string v0, "isProviderPackage"

    return-object v0

    .line 438
    :pswitch_47
    const-string v0, "getProviderProperties"

    return-object v0

    .line 434
    :pswitch_4a
    const-string v0, "getBestProvider"

    return-object v0

    .line 430
    :pswitch_4d
    const-string v0, "getProviders"

    return-object v0

    .line 426
    :pswitch_50
    const-string v0, "getAllProviders"

    return-object v0

    .line 422
    :pswitch_53
    const-string v0, "hasProvider"

    return-object v0

    .line 418
    :pswitch_56
    const-string v0, "stopGnssBatch"

    return-object v0

    .line 414
    :pswitch_59
    const-string v0, "flushGnssBatch"

    return-object v0

    .line 410
    :pswitch_5c
    const-string v0, "startGnssBatch"

    return-object v0

    .line 406
    :pswitch_5f
    const-string v0, "getGnssBatchSize"

    return-object v0

    .line 402
    :pswitch_62
    const-string v0, "removeProviderRequestListener"

    return-object v0

    .line 398
    :pswitch_65
    const-string v0, "addProviderRequestListener"

    return-object v0

    .line 394
    :pswitch_68
    const-string v0, "removeGnssAntennaInfoListener"

    return-object v0

    .line 390
    :pswitch_6b
    const-string v0, "addGnssAntennaInfoListener"

    return-object v0

    .line 386
    :pswitch_6e
    const-string v0, "removeGnssNavigationMessageListener"

    return-object v0

    .line 382
    :pswitch_71
    const-string v0, "addGnssNavigationMessageListener"

    return-object v0

    .line 378
    :pswitch_74
    const-string v0, "injectGnssMeasurementCorrections"

    return-object v0

    .line 374
    :pswitch_77
    const-string v0, "removeGnssMeasurementsListener"

    return-object v0

    .line 370
    :pswitch_7a
    const-string v0, "addGnssMeasurementsListener"

    return-object v0

    .line 366
    :pswitch_7d
    const-string v0, "unregisterGnssNmeaCallback"

    return-object v0

    .line 362
    :pswitch_80
    const-string v0, "registerGnssNmeaCallback"

    return-object v0

    .line 358
    :pswitch_83
    const-string v0, "unregisterGnssStatusCallback"

    return-object v0

    .line 354
    :pswitch_86
    const-string v0, "registerGnssStatusCallback"

    return-object v0

    .line 350
    :pswitch_89
    const-string v0, "getGnssAntennaInfos"

    return-object v0

    .line 346
    :pswitch_8c
    const-string v0, "getGnssHardwareModelName"

    return-object v0

    .line 342
    :pswitch_8f
    const-string v0, "getGnssYearOfHardware"

    return-object v0

    .line 338
    :pswitch_92
    const-string v0, "getGnssCapabilities"

    return-object v0

    .line 334
    :pswitch_95
    const-string v0, "forwardGeocode"

    return-object v0

    .line 330
    :pswitch_98
    const-string v0, "reverseGeocode"

    return-object v0

    .line 326
    :pswitch_9b
    const-string v0, "isGeocodeAvailable"

    return-object v0

    .line 322
    :pswitch_9e
    const-string v0, "removeGeofence"

    return-object v0

    .line 318
    :pswitch_a1
    const-string v0, "requestGeofence"

    return-object v0

    .line 314
    :pswitch_a4
    const-string v0, "requestPendingIntentFlush"

    return-object v0

    .line 310
    :pswitch_a7
    const-string v0, "requestListenerFlush"

    return-object v0

    .line 306
    :pswitch_aa
    const-string v0, "injectLocation"

    return-object v0

    .line 302
    :pswitch_ad
    const-string v0, "unregisterLocationPendingIntent"

    return-object v0

    .line 298
    :pswitch_b0
    const-string v0, "registerLocationPendingIntent"

    return-object v0

    .line 294
    :pswitch_b3
    const-string v0, "unregisterLocationListener"

    return-object v0

    .line 290
    :pswitch_b6
    const-string v0, "registerLocationListener"

    return-object v0

    .line 286
    :pswitch_b9
    const-string v0, "getCurrentLocation"

    return-object v0

    .line 282
    :pswitch_bc
    const-string v0, "getLastLocation"

    return-object v0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addProviderRequestListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2343
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2344
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 273
    return-object p0
.end method

.method protected blacklist flushGnssBatch_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2356
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2416
    const/16 v0, 0x3d

    return v0
.end method

.method protected blacklist getProviderPackages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2375
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2376
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 537
    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist injectLocation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2316
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/location/ILocationManager$Stub;->PERMISSIONS_injectLocation:[Ljava/lang/String;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 2317
    return-void
.end method

.method protected blacklist isAutomotiveGnssSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2397
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_AUTOMOTIVE_GNSS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2398
    return-void
.end method

.method protected blacklist isProviderPackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2370
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2371
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    move-object v7, p3

    const-string v8, "android.location.ILocationManager"

    .line 542
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 543
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 546
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    return v9

    .line 549
    :cond_17
    packed-switch p1, :pswitch_data_566

    .line 1223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1216
    :pswitch_1f
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v1

    .line 1217
    .local v1, "_result":Landroid/os/PackageTagsList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1219
    goto/16 :goto_564

    .line 1209
    .end local v1    # "_result":Landroid/os/PackageTagsList;
    :pswitch_2b
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v1

    .line 1210
    .restart local v1    # "_result":Landroid/os/PackageTagsList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1212
    goto/16 :goto_564

    .line 1202
    .end local v1    # "_result":Landroid/os/PackageTagsList;
    :pswitch_37
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1205
    goto/16 :goto_564

    .line 1189
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1194
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1198
    goto/16 :goto_564

    .line 1181
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_61
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v1

    .line 1182
    .local v1, "_result":Landroid/location/LocationTime;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1184
    goto/16 :goto_564

    .line 1167
    .end local v1    # "_result":Landroid/location/LocationTime;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1171
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1174
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    goto/16 :goto_564

    .line 1152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 1156
    .local v2, "_arg1":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1159
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    goto/16 :goto_564

    .line 1139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/Location;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    goto/16 :goto_564

    .line 1122
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderProperties;

    .line 1126
    .local v2, "_arg1":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1128
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1131
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    goto/16 :goto_564

    .line 1113
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/provider/ProviderProperties;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1114
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended(Z)V

    .line 1116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    goto/16 :goto_564

    .line 1105
    .end local v1    # "_arg0":Z
    :pswitch_f1
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended()Z

    move-result v1

    .line 1106
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1108
    goto/16 :goto_564

    .line 1095
    .end local v1    # "_result":Z
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1097
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1098
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    goto/16 :goto_564

    .line 1085
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1086
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v2

    .line 1088
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1090
    goto/16 :goto_564

    .line 1074
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1076
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1077
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    goto/16 :goto_564

    .line 1064
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1065
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v2

    .line 1067
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1069
    goto/16 :goto_564

    .line 1052
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v3

    .line 1057
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    goto/16 :goto_564

    .line 1044
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_160
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isExtraLocationControllerPackageEnabled()Z

    move-result v1

    .line 1045
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1047
    goto/16 :goto_564

    .line 1036
    .end local v1    # "_result":Z
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1037
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled(Z)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    goto/16 :goto_564

    .line 1028
    .end local v1    # "_arg0":Z
    :pswitch_17b
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    goto/16 :goto_564

    .line 1020
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_564

    .line 1010
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1011
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1013
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1015
    goto/16 :goto_564

    .line 996
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 998
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1003
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1005
    goto/16 :goto_564

    .line 986
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 987
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v2

    .line 989
    .local v2, "_result":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 991
    goto/16 :goto_564

    .line 974
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/location/provider/ProviderProperties;
    :pswitch_1d7
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .line 976
    .local v1, "_arg0":Landroid/location/Criteria;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 977
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 979
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 981
    goto/16 :goto_564

    .line 962
    .end local v1    # "_arg0":Landroid/location/Criteria;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1f2
    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    .line 964
    .restart local v1    # "_arg0":Landroid/location/Criteria;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 965
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v3

    .line 967
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 969
    goto/16 :goto_564

    .line 954
    .end local v1    # "_arg0":Landroid/location/Criteria;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_20d
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 955
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 957
    goto/16 :goto_564

    .line 945
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->hasProvider(Ljava/lang/String;)Z

    move-result v2

    .line 948
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 950
    goto/16 :goto_564

    .line 938
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_22c
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()V

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    goto/16 :goto_564

    .line 932
    :pswitch_234
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch()V

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    goto/16 :goto_564

    .line 916
    :pswitch_23c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 918
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 920
    .local v3, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 924
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_564

    .line 908
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/location/ILocationListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Ljava/lang/String;
    :pswitch_260
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize()I

    move-result v1

    .line 909
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    goto/16 :goto_564

    .line 900
    .end local v1    # "_result":I
    :pswitch_26c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v1

    .line 901
    .local v1, "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_564

    .line 891
    .end local v1    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_27f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v1

    .line 892
    .restart local v1    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_564

    .line 882
    .end local v1    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v1

    .line 883
    .local v1, "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_564

    .line 867
    .end local v1    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    :pswitch_2a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v1

    .line 869
    .restart local v1    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 874
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    goto/16 :goto_564

    .line 858
    .end local v1    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v1

    .line 859
    .local v1, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    goto/16 :goto_564

    .line 843
    .end local v1    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :pswitch_2d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v1

    .line 845
    .restart local v1    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 847
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 849
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 850
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_564

    .line 834
    .end local v1    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_2f6
    sget-object v1, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurementCorrections;

    .line 835
    .local v1, "_arg0":Landroid/location/GnssMeasurementCorrections;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_564

    .line 825
    .end local v1    # "_arg0":Landroid/location/GnssMeasurementCorrections;
    :pswitch_309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v1

    .line 826
    .local v1, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_564

    .line 808
    .end local v1    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :pswitch_31c
    sget-object v1, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GnssMeasurementRequest;

    .line 810
    .local v1, "_arg0":Landroid/location/GnssMeasurementRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v2

    .line 812
    .local v2, "_arg1":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 814
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 816
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    goto/16 :goto_564

    .line 799
    .end local v1    # "_arg0":Landroid/location/GnssMeasurementRequest;
    .end local v2    # "_arg1":Landroid/location/IGnssMeasurementsListener;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v1

    .line 800
    .local v1, "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_564

    .line 784
    .end local v1    # "_arg0":Landroid/location/IGnssNmeaListener;
    :pswitch_357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v1

    .line 786
    .restart local v1    # "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 790
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 791
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_564

    .line 775
    .end local v1    # "_arg0":Landroid/location/IGnssNmeaListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_376
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v1

    .line 776
    .local v1, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_564

    .line 760
    .end local v1    # "_arg0":Landroid/location/IGnssStatusListener;
    :pswitch_389
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v1

    .line 762
    .restart local v1    # "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 764
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 767
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_564

    .line 752
    .end local v1    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_3a8
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v1

    .line 753
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 755
    goto/16 :goto_564

    .line 745
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    :pswitch_3b4
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    goto/16 :goto_564

    .line 738
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3c0
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v1

    .line 739
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    goto/16 :goto_564

    .line 731
    .end local v1    # "_result":I
    :pswitch_3cc
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v1

    .line 732
    .local v1, "_result":Landroid/location/GnssCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 734
    goto/16 :goto_564

    .line 721
    .end local v1    # "_result":Landroid/location/GnssCapabilities;
    :pswitch_3d8
    sget-object v1, Landroid/location/provider/ForwardGeocodeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/ForwardGeocodeRequest;

    .line 723
    .local v1, "_arg0":Landroid/location/provider/ForwardGeocodeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/IGeocodeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeCallback;

    move-result-object v2

    .line 724
    .local v2, "_arg1":Landroid/location/provider/IGeocodeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_564

    .line 710
    .end local v1    # "_arg0":Landroid/location/provider/ForwardGeocodeRequest;
    .end local v2    # "_arg1":Landroid/location/provider/IGeocodeCallback;
    :pswitch_3f3
    sget-object v1, Landroid/location/provider/ReverseGeocodeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/ReverseGeocodeRequest;

    .line 712
    .local v1, "_arg0":Landroid/location/provider/ReverseGeocodeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/IGeocodeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeCallback;

    move-result-object v2

    .line 713
    .restart local v2    # "_arg1":Landroid/location/provider/IGeocodeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v1, v2}, Landroid/location/ILocationManager$Stub;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_564

    .line 702
    .end local v1    # "_arg0":Landroid/location/provider/ReverseGeocodeRequest;
    .end local v2    # "_arg1":Landroid/location/provider/IGeocodeCallback;
    :pswitch_40e
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isGeocodeAvailable()Z

    move-result v1

    .line 703
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 705
    goto/16 :goto_564

    .line 694
    .end local v1    # "_result":Z
    :pswitch_41a
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 695
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/app/PendingIntent;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_564

    .line 679
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_42d
    sget-object v1, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Geofence;

    .line 681
    .local v1, "_arg0":Landroid/location/Geofence;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 683
    .local v2, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 685
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_564

    .line 666
    .end local v1    # "_arg0":Landroid/location/Geofence;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 670
    .restart local v2    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 671
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    goto/16 :goto_564

    .line 653
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    .end local v3    # "_arg2":I
    :pswitch_46b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v2

    .line 657
    .local v2, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 658
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_564

    .line 644
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/ILocationListener;
    .end local v3    # "_arg2":I
    :pswitch_486
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 645
    .local v1, "_arg0":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    goto/16 :goto_564

    .line 635
    .end local v1    # "_arg0":Landroid/location/Location;
    :pswitch_499
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 636
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    goto/16 :goto_564

    .line 618
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_4ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    .line 622
    .local v2, "_arg1":Landroid/location/LocationRequest;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 624
    .local v3, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 626
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto/16 :goto_564

    .line 609
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LocationRequest;
    .end local v3    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_4d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v1

    .line 610
    .local v1, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v1}, Landroid/location/ILocationManager$Stub;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_564

    .line 590
    .end local v1    # "_arg0":Landroid/location/ILocationListener;
    :pswitch_4e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    .line 594
    .restart local v2    # "_arg1":Landroid/location/LocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 596
    .local v3, "_arg2":Landroid/location/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 598
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 600
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    goto :goto_564

    .line 570
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LocationRequest;
    .end local v3    # "_arg2":Landroid/location/ILocationListener;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/location/LocationRequest;

    .line 574
    .restart local v2    # "_arg1":Landroid/location/LocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationCallback;

    move-result-object v3

    .line 576
    .local v3, "_arg2":Landroid/location/ILocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 578
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 580
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 581
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v10

    .line 583
    .local v10, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 585
    goto :goto_564

    .line 554
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LocationRequest;
    .end local v3    # "_arg2":Landroid/location/ILocationCallback;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v10    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/location/LastLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LastLocationRequest;

    .line 558
    .local v2, "_arg1":Landroid/location/LastLocationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 561
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 563
    .local v5, "_result":Landroid/location/Location;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v5, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 565
    nop

    .line 1226
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/location/LastLocationRequest;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/location/Location;
    :goto_564
    return v9

    nop

    :pswitch_data_566
    .packed-switch 0x1
        :pswitch_542
        :pswitch_512
        :pswitch_4e7
        :pswitch_4d4
        :pswitch_4ac
        :pswitch_499
        :pswitch_486
        :pswitch_46b
        :pswitch_450
        :pswitch_42d
        :pswitch_41a
        :pswitch_40e
        :pswitch_3f3
        :pswitch_3d8
        :pswitch_3cc
        :pswitch_3c0
        :pswitch_3b4
        :pswitch_3a8
        :pswitch_389
        :pswitch_376
        :pswitch_357
        :pswitch_344
        :pswitch_31c
        :pswitch_309
        :pswitch_2f6
        :pswitch_2d7
        :pswitch_2c4
        :pswitch_2a5
        :pswitch_292
        :pswitch_27f
        :pswitch_26c
        :pswitch_260
        :pswitch_23c
        :pswitch_234
        :pswitch_22c
        :pswitch_219
        :pswitch_20d
        :pswitch_1f2
        :pswitch_1d7
        :pswitch_1c4
        :pswitch_1a9
        :pswitch_196
        :pswitch_187
        :pswitch_17b
        :pswitch_16c
        :pswitch_160
        :pswitch_149
        :pswitch_136
        :pswitch_123
        :pswitch_110
        :pswitch_fd
        :pswitch_f1
        :pswitch_e2
        :pswitch_be
        :pswitch_a7
        :pswitch_88
        :pswitch_6d
        :pswitch_61
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist setAutomotiveGnssSuspended_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2402
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_AUTOMOTIVE_GNSS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2403
    return-void
.end method

.method protected blacklist setExtraLocationControllerPackageEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2386
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2387
    return-void
.end method

.method protected blacklist setExtraLocationControllerPackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2380
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2381
    return-void
.end method

.method protected blacklist startGnssBatch_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2350
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2351
    return-void
.end method

.method protected blacklist stopGnssBatch_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2360
    iget-object v0, p0, Landroid/location/ILocationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/location/ILocationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2361
    return-void
.end method
