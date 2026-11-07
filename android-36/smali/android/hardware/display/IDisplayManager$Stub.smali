.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final blacklist TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final greylist-max-o TRANSACTION_connectWifiDisplay:I = 0x8

.field static final greylist-max-o TRANSACTION_createVirtualDisplay:I = 0x15

.field static final blacklist TRANSACTION_disableConnectedDisplay:I = 0x39

.field static final greylist-max-o TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final blacklist TRANSACTION_enableConnectedDisplay:I = 0x38

.field static final greylist-max-o TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final greylist-max-o TRANSACTION_getAmbientBrightnessStats:I = 0x1c

.field static final blacklist TRANSACTION_getBrightness:I = 0x25

.field static final blacklist TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x1f

.field static final greylist-max-o TRANSACTION_getBrightnessConfigurationForUser:I = 0x20

.field static final greylist-max-o TRANSACTION_getBrightnessEvents:I = 0x1b

.field static final blacklist TRANSACTION_getBrightnessInfo:I = 0x28

.field static final greylist-max-o TRANSACTION_getDefaultBrightnessConfiguration:I = 0x21

.field static final blacklist TRANSACTION_getDefaultDozeBrightness:I = 0x3e

.field static final blacklist TRANSACTION_getDisplayDecorationSupport:I = 0x35

.field static final greylist-max-o TRANSACTION_getDisplayIds:I = 0x2

.field static final greylist-max-o TRANSACTION_getDisplayInfo:I = 0x1

.field static final blacklist TRANSACTION_getDisplayTopology:I = 0x3f

.field static final blacklist TRANSACTION_getDozeBrightnessSensorValueToBrightness:I = 0x3d

.field static final blacklist TRANSACTION_getHdrConversionMode:I = 0x2f

.field static final blacklist TRANSACTION_getHdrConversionModeSetting:I = 0x2e

.field static final blacklist TRANSACTION_getHighestHdrSdrRatio:I = 0x3c

.field static final greylist-max-o TRANSACTION_getMinimumBrightnessCurve:I = 0x27

.field static final blacklist TRANSACTION_getOverlaySupport:I = 0x37

.field static final blacklist TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x29

.field static final blacklist TRANSACTION_getRefreshRateSwitchingType:I = 0x34

.field static final greylist-max-o TRANSACTION_getStableDisplaySize:I = 0x1a

.field static final blacklist TRANSACTION_getSupportedHdrOutputTypes:I = 0x30

.field static final blacklist TRANSACTION_getSystemPreferredDisplayMode:I = 0x2c

.field static final blacklist TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final blacklist TRANSACTION_getUserPreferredDisplayMode:I = 0x2b

.field static final greylist-max-o TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final blacklist TRANSACTION_isMinimalPostProcessingRequested:I = 0x22

.field static final blacklist TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final blacklist TRANSACTION_overrideHdrTypes:I = 0x13

.field static final greylist-max-o TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x4

.field static final blacklist TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final greylist-max-o TRANSACTION_releaseVirtualDisplay:I = 0x18

.field static final greylist-max-o TRANSACTION_renameWifiDisplay:I = 0xa

.field static final greylist-max-o TRANSACTION_requestColorMode:I = 0x14

.field static final blacklist TRANSACTION_requestDisplayModes:I = 0x3b

.field static final blacklist TRANSACTION_requestDisplayPower:I = 0x3a

.field static final greylist-max-o TRANSACTION_resizeVirtualDisplay:I = 0x16

.field static final greylist-max-o TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final blacklist TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final blacklist TRANSACTION_setBrightness:I = 0x24

.field static final blacklist TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x1e

.field static final greylist-max-o TRANSACTION_setBrightnessConfigurationForUser:I = 0x1d

.field static final blacklist TRANSACTION_setDisplayIdToMirror:I = 0x36

.field static final blacklist TRANSACTION_setDisplayTopology:I = 0x40

.field static final blacklist TRANSACTION_setHdrConversionMode:I = 0x2d

.field static final blacklist TRANSACTION_setRefreshRateSwitchingType:I = 0x33

.field static final blacklist TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x31

.field static final greylist-max-o TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x26

.field static final greylist-max-o TRANSACTION_setTemporaryBrightness:I = 0x23

.field static final blacklist TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final blacklist TRANSACTION_setUserPreferredDisplayMode:I = 0x2a

.field static final blacklist TRANSACTION_setVirtualDisplayRotation:I = 0x19

.field static final greylist-max-o TRANSACTION_setVirtualDisplaySurface:I = 0x17

.field static final blacklist TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x32

.field static final greylist-max-o TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final greylist-max-o TRANSACTION_stopWifiDisplayScan:I = 0x7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    nop

    .line 331
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 320
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 321
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 322
    if-eqz p1, :cond_d

    .line 325
    iput-object p1, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 326
    return-void

    .line 323
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 339
    if-nez p0, :cond_4

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 343
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_14

    .line 344
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    .line 346
    :cond_14
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 355
    packed-switch p0, :pswitch_data_c6

    .line 615
    const/4 v0, 0x0

    return-object v0

    .line 611
    :pswitch_5
    const-string v0, "setDisplayTopology"

    return-object v0

    .line 607
    :pswitch_8
    const-string v0, "getDisplayTopology"

    return-object v0

    .line 603
    :pswitch_b
    const-string v0, "getDefaultDozeBrightness"

    return-object v0

    .line 599
    :pswitch_e
    const-string v0, "getDozeBrightnessSensorValueToBrightness"

    return-object v0

    .line 595
    :pswitch_11
    const-string v0, "getHighestHdrSdrRatio"

    return-object v0

    .line 591
    :pswitch_14
    const-string v0, "requestDisplayModes"

    return-object v0

    .line 587
    :pswitch_17
    const-string v0, "requestDisplayPower"

    return-object v0

    .line 583
    :pswitch_1a
    const-string v0, "disableConnectedDisplay"

    return-object v0

    .line 579
    :pswitch_1d
    const-string v0, "enableConnectedDisplay"

    return-object v0

    .line 575
    :pswitch_20
    const-string v0, "getOverlaySupport"

    return-object v0

    .line 571
    :pswitch_23
    const-string v0, "setDisplayIdToMirror"

    return-object v0

    .line 567
    :pswitch_26
    const-string v0, "getDisplayDecorationSupport"

    return-object v0

    .line 563
    :pswitch_29
    const-string v0, "getRefreshRateSwitchingType"

    return-object v0

    .line 559
    :pswitch_2c
    const-string v0, "setRefreshRateSwitchingType"

    return-object v0

    .line 555
    :pswitch_2f
    const-string v0, "shouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 551
    :pswitch_32
    const-string v0, "setShouldAlwaysRespectAppRequestedMode"

    return-object v0

    .line 547
    :pswitch_35
    const-string v0, "getSupportedHdrOutputTypes"

    return-object v0

    .line 543
    :pswitch_38
    const-string v0, "getHdrConversionMode"

    return-object v0

    .line 539
    :pswitch_3b
    const-string v0, "getHdrConversionModeSetting"

    return-object v0

    .line 535
    :pswitch_3e
    const-string v0, "setHdrConversionMode"

    return-object v0

    .line 531
    :pswitch_41
    const-string v0, "getSystemPreferredDisplayMode"

    return-object v0

    .line 527
    :pswitch_44
    const-string v0, "getUserPreferredDisplayMode"

    return-object v0

    .line 523
    :pswitch_47
    const-string v0, "setUserPreferredDisplayMode"

    return-object v0

    .line 519
    :pswitch_4a
    const-string v0, "getPreferredWideGamutColorSpaceId"

    return-object v0

    .line 515
    :pswitch_4d
    const-string v0, "getBrightnessInfo"

    return-object v0

    .line 511
    :pswitch_50
    const-string v0, "getMinimumBrightnessCurve"

    return-object v0

    .line 507
    :pswitch_53
    const-string v0, "setTemporaryAutoBrightnessAdjustment"

    return-object v0

    .line 503
    :pswitch_56
    const-string v0, "getBrightness"

    return-object v0

    .line 499
    :pswitch_59
    const-string v0, "setBrightness"

    return-object v0

    .line 495
    :pswitch_5c
    const-string v0, "setTemporaryBrightness"

    return-object v0

    .line 491
    :pswitch_5f
    const-string v0, "isMinimalPostProcessingRequested"

    return-object v0

    .line 487
    :pswitch_62
    const-string v0, "getDefaultBrightnessConfiguration"

    return-object v0

    .line 483
    :pswitch_65
    const-string v0, "getBrightnessConfigurationForUser"

    return-object v0

    .line 479
    :pswitch_68
    const-string v0, "getBrightnessConfigurationForDisplay"

    return-object v0

    .line 475
    :pswitch_6b
    const-string v0, "setBrightnessConfigurationForDisplay"

    return-object v0

    .line 471
    :pswitch_6e
    const-string v0, "setBrightnessConfigurationForUser"

    return-object v0

    .line 467
    :pswitch_71
    const-string v0, "getAmbientBrightnessStats"

    return-object v0

    .line 463
    :pswitch_74
    const-string v0, "getBrightnessEvents"

    return-object v0

    .line 459
    :pswitch_77
    const-string v0, "getStableDisplaySize"

    return-object v0

    .line 455
    :pswitch_7a
    const-string v0, "setVirtualDisplayRotation"

    return-object v0

    .line 451
    :pswitch_7d
    const-string v0, "releaseVirtualDisplay"

    return-object v0

    .line 447
    :pswitch_80
    const-string v0, "setVirtualDisplaySurface"

    return-object v0

    .line 443
    :pswitch_83
    const-string v0, "resizeVirtualDisplay"

    return-object v0

    .line 439
    :pswitch_86
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 435
    :pswitch_89
    const-string v0, "requestColorMode"

    return-object v0

    .line 431
    :pswitch_8c
    const-string v0, "overrideHdrTypes"

    return-object v0

    .line 427
    :pswitch_8f
    const-string v0, "getUserDisabledHdrTypes"

    return-object v0

    .line 423
    :pswitch_92
    const-string v0, "areUserDisabledHdrTypesAllowed"

    return-object v0

    .line 419
    :pswitch_95
    const-string v0, "setAreUserDisabledHdrTypesAllowed"

    return-object v0

    .line 415
    :pswitch_98
    const-string v0, "setUserDisabledHdrTypes"

    return-object v0

    .line 411
    :pswitch_9b
    const-string v0, "getWifiDisplayStatus"

    return-object v0

    .line 407
    :pswitch_9e
    const-string v0, "resumeWifiDisplay"

    return-object v0

    .line 403
    :pswitch_a1
    const-string v0, "pauseWifiDisplay"

    return-object v0

    .line 399
    :pswitch_a4
    const-string v0, "forgetWifiDisplay"

    return-object v0

    .line 395
    :pswitch_a7
    const-string v0, "renameWifiDisplay"

    return-object v0

    .line 391
    :pswitch_aa
    const-string v0, "disconnectWifiDisplay"

    return-object v0

    .line 387
    :pswitch_ad
    const-string v0, "connectWifiDisplay"

    return-object v0

    .line 383
    :pswitch_b0
    const-string v0, "stopWifiDisplayScan"

    return-object v0

    .line 379
    :pswitch_b3
    const-string v0, "startWifiDisplayScan"

    return-object v0

    .line 375
    :pswitch_b6
    const-string v0, "registerCallbackWithEventMask"

    return-object v0

    .line 371
    :pswitch_b9
    const-string v0, "registerCallback"

    return-object v0

    .line 367
    :pswitch_bc
    const-string v0, "isUidPresentOnDisplay"

    return-object v0

    .line 363
    :pswitch_bf
    const-string v0, "getDisplayIds"

    return-object v0

    .line 359
    :pswitch_c2
    const-string v0, "getDisplayInfo"

    return-object v0

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_bf
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 350
    return-object p0
.end method

.method protected blacklist connectWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2410
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2411
    return-void
.end method

.method protected blacklist disableConnectedDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2559
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2560
    return-void
.end method

.method protected blacklist enableConnectedDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2554
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2555
    return-void
.end method

.method protected blacklist forgetWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2422
    return-void
.end method

.method protected blacklist getAmbientBrightnessStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2466
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_AMBIENT_LIGHT_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2467
    return-void
.end method

.method protected blacklist getBrightnessConfigurationForDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2481
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2482
    return-void
.end method

.method protected blacklist getBrightnessEvents_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2461
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BRIGHTNESS_SLIDER_USAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2462
    return-void
.end method

.method protected blacklist getBrightnessInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2514
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2515
    return-void
.end method

.method protected blacklist getBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2503
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2504
    return-void
.end method

.method protected blacklist getDefaultBrightnessConfiguration_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2487
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2488
    return-void
.end method

.method protected blacklist getDefaultDozeBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2580
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2581
    return-void
.end method

.method protected blacklist getDisplayTopology_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2585
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2586
    return-void
.end method

.method protected blacklist getDozeBrightnessSensorValueToBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2576
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2595
    const/16 v0, 0x3f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 622
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    const-string v0, "android.hardware.display.IDisplayManager"

    .line 627
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 628
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 631
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    return v1

    .line 634
    :cond_16
    packed-switch p1, :pswitch_data_470

    .line 1238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1230
    :pswitch_1e
    sget-object v2, Landroid/hardware/display/DisplayTopology;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology;

    .line 1231
    .local v2, "_arg0":Landroid/hardware/display/DisplayTopology;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V

    .line 1233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    goto/16 :goto_46e

    .line 1222
    .end local v2    # "_arg0":Landroid/hardware/display/DisplayTopology;
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v2

    .line 1223
    .local v2, "_result":Landroid/hardware/display/DisplayTopology;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1225
    goto/16 :goto_46e

    .line 1213
    .end local v2    # "_result":Landroid/hardware/display/DisplayTopology;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1214
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultDozeBrightness(I)F

    move-result v3

    .line 1216
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1218
    goto/16 :goto_46e

    .line 1203
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1204
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDozeBrightnessSensorValueToBrightness(I)[F

    move-result-object v3

    .line 1206
    .local v3, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1208
    goto/16 :goto_46e

    .line 1193
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[F
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getHighestHdrSdrRatio(I)F

    move-result v3

    .line 1196
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1198
    goto/16 :goto_46e

    .line 1180
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1182
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1184
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1185
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1186
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayModes(Landroid/os/IBinder;I[I)V

    .line 1187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    goto/16 :goto_46e

    .line 1168
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1170
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1171
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayPower(II)Z

    move-result v4

    .line 1173
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1175
    goto/16 :goto_46e

    .line 1159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1160
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1161
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->disableConnectedDisplay(I)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    goto/16 :goto_46e

    .line 1150
    .end local v2    # "_arg0":I
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->enableConnectedDisplay(I)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_46e

    .line 1142
    .end local v2    # "_arg0":I
    :pswitch_c2
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v2

    .line 1143
    .local v2, "_result":Landroid/hardware/OverlayProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1145
    goto/16 :goto_46e

    .line 1132
    .end local v2    # "_result":Landroid/hardware/OverlayProperties;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1134
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1135
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayIdToMirror(Landroid/os/IBinder;I)V

    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    goto/16 :goto_46e

    .line 1122
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1123
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v3

    .line 1125
    .local v3, "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1127
    goto/16 :goto_46e

    .line 1114
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/graphics/common/DisplayDecorationSupport;
    :pswitch_f4
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result v2

    .line 1115
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    goto/16 :goto_46e

    .line 1106
    .end local v2    # "_result":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1107
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_46e

    .line 1098
    .end local v2    # "_arg0":I
    :pswitch_10f
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v2

    .line 1099
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1101
    goto/16 :goto_46e

    .line 1090
    .end local v2    # "_result":Z
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1091
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    goto/16 :goto_46e

    .line 1082
    .end local v2    # "_arg0":Z
    :pswitch_12a
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getSupportedHdrOutputTypes()[I

    move-result-object v2

    .line 1083
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1085
    goto/16 :goto_46e

    .line 1075
    .end local v2    # "_result":[I
    :pswitch_136
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v2

    .line 1076
    .local v2, "_result":Landroid/hardware/display/HdrConversionMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1078
    goto/16 :goto_46e

    .line 1068
    .end local v2    # "_result":Landroid/hardware/display/HdrConversionMode;
    :pswitch_142
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object v2

    .line 1069
    .restart local v2    # "_result":Landroid/hardware/display/HdrConversionMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1071
    goto/16 :goto_46e

    .line 1060
    .end local v2    # "_result":Landroid/hardware/display/HdrConversionMode;
    :pswitch_14e
    sget-object v2, Landroid/hardware/display/HdrConversionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/HdrConversionMode;

    .line 1061
    .local v2, "_arg0":Landroid/hardware/display/HdrConversionMode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_46e

    .line 1050
    .end local v2    # "_arg0":Landroid/hardware/display/HdrConversionMode;
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1051
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    .line 1053
    .local v3, "_result":Landroid/view/Display$Mode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1055
    goto/16 :goto_46e

    .line 1040
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/Display$Mode;
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1041
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v3

    .line 1043
    .restart local v3    # "_result":Landroid/view/Display$Mode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1045
    goto/16 :goto_46e

    .line 1029
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/Display$Mode;
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1031
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 1032
    .local v3, "_arg1":Landroid/view/Display$Mode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_46e

    .line 1021
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/Display$Mode;
    :pswitch_19e
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result v2

    .line 1022
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    goto/16 :goto_46e

    .line 1012
    .end local v2    # "_result":I
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1013
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v3

    .line 1015
    .local v3, "_result":Landroid/hardware/display/BrightnessInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1017
    goto/16 :goto_46e

    .line 1004
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/display/BrightnessInfo;
    :pswitch_1bd
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v2

    .line 1005
    .local v2, "_result":Landroid/hardware/display/Curve;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1007
    goto/16 :goto_46e

    .line 996
    .end local v2    # "_result":Landroid/hardware/display/Curve;
    :pswitch_1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 997
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 999
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    goto/16 :goto_46e

    .line 986
    .end local v2    # "_arg0":F
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 987
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result v3

    .line 989
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 991
    goto/16 :goto_46e

    .line 975
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 977
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 978
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    .line 980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    goto/16 :goto_46e

    .line 964
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 966
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 967
    .restart local v3    # "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_46e

    .line 954
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 955
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result v3

    .line 957
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 959
    goto/16 :goto_46e

    .line 946
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_224
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 947
    .local v2, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 949
    goto/16 :goto_46e

    .line 937
    .end local v2    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 938
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    .line 940
    .local v3, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 942
    goto/16 :goto_46e

    .line 925
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 928
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v4

    .line 930
    .local v4, "_result":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 932
    goto/16 :goto_46e

    .line 910
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/display/BrightnessConfiguration;
    :pswitch_25a
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 912
    .local v2, "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 916
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 917
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    goto/16 :goto_46e

    .line 897
    .end local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_279
    sget-object v2, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 899
    .restart local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 901
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto/16 :goto_46e

    .line 889
    .end local v2    # "_arg0":Landroid/hardware/display/BrightnessConfiguration;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_294
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 890
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 892
    goto/16 :goto_46e

    .line 880
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 883
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 885
    goto/16 :goto_46e

    .line 872
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2b3
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 873
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 875
    goto/16 :goto_46e

    .line 862
    .end local v2    # "_result":Landroid/graphics/Point;
    :pswitch_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 864
    .local v2, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 865
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayRotation(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    goto/16 :goto_46e

    .line 853
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":I
    :pswitch_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 854
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    goto/16 :goto_46e

    .line 842
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :pswitch_2e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 844
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 845
    .local v3, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_46e

    .line 827
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":Landroid/view/Surface;
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v2

    .line 829
    .restart local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 831
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 833
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 834
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    goto/16 :goto_46e

    .line 811
    .end local v2    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_323
    sget-object v2, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig;

    .line 813
    .local v2, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v3

    .line 815
    .local v3, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v4

    .line 817
    .local v4, "_arg2":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v6

    .line 820
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    goto/16 :goto_46e

    .line 800
    .end local v2    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v3    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v4    # "_arg2":Landroid/media/projection/IMediaProjection;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_34e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 802
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 803
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    goto/16 :goto_46e

    .line 789
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 791
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 792
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->overrideHdrTypes(I[I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_46e

    .line 781
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_374
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object v2

    .line 782
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 784
    goto/16 :goto_46e

    .line 774
    .end local v2    # "_result":[I
    :pswitch_380
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result v2

    .line 775
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 777
    goto/16 :goto_46e

    .line 766
    .end local v2    # "_result":Z
    :pswitch_38c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 767
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_46e

    .line 757
    .end local v2    # "_arg0":Z
    :pswitch_39b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 758
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto/16 :goto_46e

    .line 749
    .end local v2    # "_arg0":[I
    :pswitch_3aa
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    .line 750
    .local v2, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 752
    goto/16 :goto_46e

    .line 743
    .end local v2    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :pswitch_3b6
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_46e

    .line 737
    :pswitch_3be
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_46e

    .line 729
    :pswitch_3c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_46e

    .line 718
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 720
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    goto/16 :goto_46e

    .line 711
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3e8
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_46e

    .line 703
    :pswitch_3f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 704
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    goto :goto_46e

    .line 696
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3fe
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto :goto_46e

    .line 690
    :pswitch_405
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto :goto_46e

    .line 680
    :pswitch_40c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    .line 682
    .local v2, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 683
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    goto :goto_46e

    .line 671
    .end local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    .end local v3    # "_arg1":J
    :pswitch_422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v2

    .line 672
    .restart local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    goto :goto_46e

    .line 659
    .end local v2    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :pswitch_434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 662
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result v4

    .line 664
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 666
    goto :goto_46e

    .line 649
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_44a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 650
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object v3

    .line 652
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 654
    goto :goto_46e

    .line 639
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":[I
    :pswitch_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 642
    .local v3, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 644
    nop

    .line 1241
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/DisplayInfo;
    :goto_46e
    return v1

    nop

    :pswitch_data_470
    .packed-switch 0x1
        :pswitch_45c
        :pswitch_44a
        :pswitch_434
        :pswitch_422
        :pswitch_40c
        :pswitch_405
        :pswitch_3fe
        :pswitch_3f0
        :pswitch_3e8
        :pswitch_3d5
        :pswitch_3c6
        :pswitch_3be
        :pswitch_3b6
        :pswitch_3aa
        :pswitch_39b
        :pswitch_38c
        :pswitch_380
        :pswitch_374
        :pswitch_361
        :pswitch_34e
        :pswitch_323
        :pswitch_304
        :pswitch_2e9
        :pswitch_2d6
        :pswitch_2bf
        :pswitch_2b3
        :pswitch_2a0
        :pswitch_294
        :pswitch_279
        :pswitch_25a
        :pswitch_243
        :pswitch_230
        :pswitch_224
        :pswitch_211
        :pswitch_1fe
        :pswitch_1eb
        :pswitch_1d8
        :pswitch_1c9
        :pswitch_1bd
        :pswitch_1aa
        :pswitch_19e
        :pswitch_187
        :pswitch_174
        :pswitch_161
        :pswitch_14e
        :pswitch_142
        :pswitch_136
        :pswitch_12a
        :pswitch_11b
        :pswitch_10f
        :pswitch_100
        :pswitch_f4
        :pswitch_e1
        :pswitch_ce
        :pswitch_c2
        :pswitch_b3
        :pswitch_a4
        :pswitch_8d
        :pswitch_76
        :pswitch_63
        :pswitch_50
        :pswitch_3d
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist pauseWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2426
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2427
    return-void
.end method

.method protected blacklist renameWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2416
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2417
    return-void
.end method

.method protected blacklist requestColorMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2450
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_COLOR_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2451
    return-void
.end method

.method protected blacklist requestDisplayModes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2569
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESTRICT_DISPLAY_MODES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2570
    return-void
.end method

.method protected blacklist requestDisplayPower_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2564
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2565
    return-void
.end method

.method protected blacklist resumeWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2431
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2432
    return-void
.end method

.method protected blacklist setAreUserDisabledHdrTypesAllowed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2442
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2443
    return-void
.end method

.method protected blacklist setBrightnessConfigurationForDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2476
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2477
    return-void
.end method

.method protected blacklist setBrightnessConfigurationForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2471
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2472
    return-void
.end method

.method protected blacklist setBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2498
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2499
    return-void
.end method

.method protected blacklist setDisplayTopology_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2590
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2591
    return-void
.end method

.method protected blacklist setHdrConversionMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2527
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_HDR_CONVERSION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2528
    return-void
.end method

.method protected blacklist setRefreshRateSwitchingType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2545
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_REFRESH_RATE_SWITCHING_TYPE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2546
    return-void
.end method

.method protected blacklist setShouldAlwaysRespectAppRequestedMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2535
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2536
    return-void
.end method

.method protected blacklist setTemporaryAutoBrightnessAdjustment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2508
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2509
    return-void
.end method

.method protected blacklist setTemporaryBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2493
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2494
    return-void
.end method

.method protected blacklist setUserDisabledHdrTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2437
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2438
    return-void
.end method

.method protected blacklist setUserPreferredDisplayMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2520
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_USER_PREFERRED_DISPLAY_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2521
    return-void
.end method

.method protected blacklist shouldAlwaysRespectAppRequestedMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2540
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2541
    return-void
.end method

.method protected blacklist startWifiDisplayScan_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2400
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2401
    return-void
.end method

.method protected blacklist stopWifiDisplayScan_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2405
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2406
    return-void
.end method
