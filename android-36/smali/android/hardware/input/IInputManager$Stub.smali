.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final blacklist TRANSACTION_addCustomInputGesture:I = 0x4b

.field static final blacklist TRANSACTION_addPortAssociation:I = 0x28

.field static final blacklist TRANSACTION_addUniqueIdAssociationByDescriptor:I = 0x2a

.field static final blacklist TRANSACTION_addUniqueIdAssociationByPort:I = 0x2c

.field static final blacklist TRANSACTION_cancelCurrentTouch:I = 0x39

.field static final greylist-max-o TRANSACTION_cancelVibrate:I = 0x1f

.field static final blacklist TRANSACTION_clearAllModifierKeyRemappings:I = 0x17

.field static final blacklist TRANSACTION_closeLightSession:I = 0x38

.field static final greylist-max-o TRANSACTION_disableInputDevice:I = 0x5

.field static final blacklist TRANSACTION_disableSensor:I = 0x32

.field static final greylist-max-o TRANSACTION_enableInputDevice:I = 0x4

.field static final blacklist TRANSACTION_enableSensor:I = 0x31

.field static final blacklist TRANSACTION_flushSensor:I = 0x33

.field static final blacklist TRANSACTION_getAppLaunchBookmarks:I = 0x4f

.field static final blacklist TRANSACTION_getBatteryState:I = 0x24

.field static final blacklist TRANSACTION_getCustomInputGestures:I = 0x4e

.field static final blacklist TRANSACTION_getHostUsiVersionFromDisplayConfig:I = 0x42

.field static final greylist-max-o TRANSACTION_getInputDevice:I = 0x2

.field static final blacklist TRANSACTION_getInputDeviceBluetoothAddress:I = 0x3e

.field static final greylist-max-o TRANSACTION_getInputDeviceIds:I = 0x3

.field static final blacklist TRANSACTION_getInputGesture:I = 0x4a

.field static final blacklist TRANSACTION_getKeyCharacterMap:I = 0x8

.field static final blacklist TRANSACTION_getKeyCodeForKeyLocation:I = 0x7

.field static final blacklist TRANSACTION_getKeyGlyphMap:I = 0x45

.field static final greylist-max-o TRANSACTION_getKeyboardLayout:I = 0x11

.field static final blacklist TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x12

.field static final blacklist TRANSACTION_getKeyboardLayoutListForInputDevice:I = 0x15

.field static final greylist-max-o TRANSACTION_getKeyboardLayouts:I = 0x10

.field static final blacklist TRANSACTION_getLightState:I = 0x35

.field static final blacklist TRANSACTION_getLights:I = 0x34

.field static final blacklist TRANSACTION_getModifierKeyRemapping:I = 0x18

.field static final blacklist TRANSACTION_getMousePointerSpeed:I = 0x9

.field static final blacklist TRANSACTION_getSensorList:I = 0x2e

.field static final greylist-max-o TRANSACTION_getTouchCalibrationForInputDevice:I = 0xe

.field static final blacklist TRANSACTION_getVelocityTrackerStrategy:I = 0x1

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x20

.field static final greylist-max-o TRANSACTION_hasKeys:I = 0x6

.field static final greylist-max-r TRANSACTION_injectInputEvent:I = 0xb

.field static final blacklist TRANSACTION_injectInputEventToTarget:I = 0xc

.field static final greylist-max-o TRANSACTION_isInTabletMode:I = 0x1a

.field static final blacklist TRANSACTION_isMicMuted:I = 0x1c

.field static final blacklist TRANSACTION_isVibrating:I = 0x21

.field static final blacklist TRANSACTION_monitorGestureInput:I = 0x27

.field static final blacklist TRANSACTION_openLightSession:I = 0x37

.field static final blacklist TRANSACTION_pilferPointers:I = 0x3f

.field static final blacklist TRANSACTION_registerBatteryListener:I = 0x3a

.field static final greylist-max-o TRANSACTION_registerInputDevicesChangedListener:I = 0x19

.field static final blacklist TRANSACTION_registerKeyEventActivityListener:I = 0x3c

.field static final blacklist TRANSACTION_registerKeyGestureEventListener:I = 0x46

.field static final blacklist TRANSACTION_registerKeyGestureHandler:I = 0x48

.field static final blacklist TRANSACTION_registerKeyboardBacklightListener:I = 0x40

.field static final blacklist TRANSACTION_registerSensorListener:I = 0x2f

.field static final blacklist TRANSACTION_registerStickyModifierStateListener:I = 0x43

.field static final greylist-max-o TRANSACTION_registerTabletModeChangedListener:I = 0x1b

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x22

.field static final blacklist TRANSACTION_remapModifierKey:I = 0x16

.field static final blacklist TRANSACTION_removeAllCustomInputGestures:I = 0x4d

.field static final blacklist TRANSACTION_removeCustomInputGesture:I = 0x4c

.field static final blacklist TRANSACTION_removePortAssociation:I = 0x29

.field static final blacklist TRANSACTION_removeUniqueIdAssociationByDescriptor:I = 0x2b

.field static final blacklist TRANSACTION_removeUniqueIdAssociationByPort:I = 0x2d

.field static final greylist-max-o TRANSACTION_requestPointerCapture:I = 0x26

.field static final blacklist TRANSACTION_resetLockedModifierState:I = 0x50

.field static final blacklist TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x14

.field static final blacklist TRANSACTION_setKeyboardLayoutOverrideForInputDevice:I = 0x13

.field static final blacklist TRANSACTION_setLightStates:I = 0x36

.field static final blacklist TRANSACTION_setPointerIcon:I = 0x25

.field static final greylist-max-o TRANSACTION_setTouchCalibrationForInputDevice:I = 0xf

.field static final greylist-max-o TRANSACTION_tryPointerSpeed:I = 0xa

.field static final blacklist TRANSACTION_unregisterBatteryListener:I = 0x3b

.field static final blacklist TRANSACTION_unregisterKeyEventActivityListener:I = 0x3d

.field static final blacklist TRANSACTION_unregisterKeyGestureEventListener:I = 0x47

.field static final blacklist TRANSACTION_unregisterKeyGestureHandler:I = 0x49

.field static final blacklist TRANSACTION_unregisterKeyboardBacklightListener:I = 0x41

.field static final blacklist TRANSACTION_unregisterSensorListener:I = 0x30

.field static final blacklist TRANSACTION_unregisterStickyModifierStateListener:I = 0x44

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x23

.field static final blacklist TRANSACTION_verifyInputEvent:I = 0xd

.field static final greylist-max-o TRANSACTION_vibrate:I = 0x1d

.field static final blacklist TRANSACTION_vibrateCombined:I = 0x1e


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    nop

    .line 352
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/input/IInputManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 353
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 341
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 342
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 343
    if-eqz p1, :cond_d

    .line 346
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 347
    return-void

    .line 344
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 360
    if-nez p0, :cond_4

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 364
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_14

    .line 365
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputManager;

    return-object v1

    .line 367
    :cond_14
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 376
    packed-switch p0, :pswitch_data_f6

    .line 700
    const/4 v0, 0x0

    return-object v0

    .line 696
    :pswitch_5
    const-string v0, "resetLockedModifierState"

    return-object v0

    .line 692
    :pswitch_8
    const-string v0, "getAppLaunchBookmarks"

    return-object v0

    .line 688
    :pswitch_b
    const-string v0, "getCustomInputGestures"

    return-object v0

    .line 684
    :pswitch_e
    const-string v0, "removeAllCustomInputGestures"

    return-object v0

    .line 680
    :pswitch_11
    const-string v0, "removeCustomInputGesture"

    return-object v0

    .line 676
    :pswitch_14
    const-string v0, "addCustomInputGesture"

    return-object v0

    .line 672
    :pswitch_17
    const-string v0, "getInputGesture"

    return-object v0

    .line 668
    :pswitch_1a
    const-string v0, "unregisterKeyGestureHandler"

    return-object v0

    .line 664
    :pswitch_1d
    const-string v0, "registerKeyGestureHandler"

    return-object v0

    .line 660
    :pswitch_20
    const-string v0, "unregisterKeyGestureEventListener"

    return-object v0

    .line 656
    :pswitch_23
    const-string v0, "registerKeyGestureEventListener"

    return-object v0

    .line 652
    :pswitch_26
    const-string v0, "getKeyGlyphMap"

    return-object v0

    .line 648
    :pswitch_29
    const-string v0, "unregisterStickyModifierStateListener"

    return-object v0

    .line 644
    :pswitch_2c
    const-string v0, "registerStickyModifierStateListener"

    return-object v0

    .line 640
    :pswitch_2f
    const-string v0, "getHostUsiVersionFromDisplayConfig"

    return-object v0

    .line 636
    :pswitch_32
    const-string v0, "unregisterKeyboardBacklightListener"

    return-object v0

    .line 632
    :pswitch_35
    const-string v0, "registerKeyboardBacklightListener"

    return-object v0

    .line 628
    :pswitch_38
    const-string v0, "pilferPointers"

    return-object v0

    .line 624
    :pswitch_3b
    const-string v0, "getInputDeviceBluetoothAddress"

    return-object v0

    .line 620
    :pswitch_3e
    const-string v0, "unregisterKeyEventActivityListener"

    return-object v0

    .line 616
    :pswitch_41
    const-string v0, "registerKeyEventActivityListener"

    return-object v0

    .line 612
    :pswitch_44
    const-string v0, "unregisterBatteryListener"

    return-object v0

    .line 608
    :pswitch_47
    const-string v0, "registerBatteryListener"

    return-object v0

    .line 604
    :pswitch_4a
    const-string v0, "cancelCurrentTouch"

    return-object v0

    .line 600
    :pswitch_4d
    const-string v0, "closeLightSession"

    return-object v0

    .line 596
    :pswitch_50
    const-string v0, "openLightSession"

    return-object v0

    .line 592
    :pswitch_53
    const-string v0, "setLightStates"

    return-object v0

    .line 588
    :pswitch_56
    const-string v0, "getLightState"

    return-object v0

    .line 584
    :pswitch_59
    const-string v0, "getLights"

    return-object v0

    .line 580
    :pswitch_5c
    const-string v0, "flushSensor"

    return-object v0

    .line 576
    :pswitch_5f
    const-string v0, "disableSensor"

    return-object v0

    .line 572
    :pswitch_62
    const-string v0, "enableSensor"

    return-object v0

    .line 568
    :pswitch_65
    const-string v0, "unregisterSensorListener"

    return-object v0

    .line 564
    :pswitch_68
    const-string v0, "registerSensorListener"

    return-object v0

    .line 560
    :pswitch_6b
    const-string v0, "getSensorList"

    return-object v0

    .line 556
    :pswitch_6e
    const-string v0, "removeUniqueIdAssociationByPort"

    return-object v0

    .line 552
    :pswitch_71
    const-string v0, "addUniqueIdAssociationByPort"

    return-object v0

    .line 548
    :pswitch_74
    const-string v0, "removeUniqueIdAssociationByDescriptor"

    return-object v0

    .line 544
    :pswitch_77
    const-string v0, "addUniqueIdAssociationByDescriptor"

    return-object v0

    .line 540
    :pswitch_7a
    const-string v0, "removePortAssociation"

    return-object v0

    .line 536
    :pswitch_7d
    const-string v0, "addPortAssociation"

    return-object v0

    .line 532
    :pswitch_80
    const-string v0, "monitorGestureInput"

    return-object v0

    .line 528
    :pswitch_83
    const-string v0, "requestPointerCapture"

    return-object v0

    .line 524
    :pswitch_86
    const-string v0, "setPointerIcon"

    return-object v0

    .line 520
    :pswitch_89
    const-string v0, "getBatteryState"

    return-object v0

    .line 516
    :pswitch_8c
    const-string v0, "unregisterVibratorStateListener"

    return-object v0

    .line 512
    :pswitch_8f
    const-string v0, "registerVibratorStateListener"

    return-object v0

    .line 508
    :pswitch_92
    const-string v0, "isVibrating"

    return-object v0

    .line 504
    :pswitch_95
    const-string v0, "getVibratorIds"

    return-object v0

    .line 500
    :pswitch_98
    const-string v0, "cancelVibrate"

    return-object v0

    .line 496
    :pswitch_9b
    const-string v0, "vibrateCombined"

    return-object v0

    .line 492
    :pswitch_9e
    const-string v0, "vibrate"

    return-object v0

    .line 488
    :pswitch_a1
    const-string v0, "isMicMuted"

    return-object v0

    .line 484
    :pswitch_a4
    const-string v0, "registerTabletModeChangedListener"

    return-object v0

    .line 480
    :pswitch_a7
    const-string v0, "isInTabletMode"

    return-object v0

    .line 476
    :pswitch_aa
    const-string v0, "registerInputDevicesChangedListener"

    return-object v0

    .line 472
    :pswitch_ad
    const-string v0, "getModifierKeyRemapping"

    return-object v0

    .line 468
    :pswitch_b0
    const-string v0, "clearAllModifierKeyRemappings"

    return-object v0

    .line 464
    :pswitch_b3
    const-string v0, "remapModifierKey"

    return-object v0

    .line 460
    :pswitch_b6
    const-string v0, "getKeyboardLayoutListForInputDevice"

    return-object v0

    .line 456
    :pswitch_b9
    const-string v0, "setKeyboardLayoutForInputDevice"

    return-object v0

    .line 452
    :pswitch_bc
    const-string v0, "setKeyboardLayoutOverrideForInputDevice"

    return-object v0

    .line 448
    :pswitch_bf
    const-string v0, "getKeyboardLayoutForInputDevice"

    return-object v0

    .line 444
    :pswitch_c2
    const-string v0, "getKeyboardLayout"

    return-object v0

    .line 440
    :pswitch_c5
    const-string v0, "getKeyboardLayouts"

    return-object v0

    .line 436
    :pswitch_c8
    const-string v0, "setTouchCalibrationForInputDevice"

    return-object v0

    .line 432
    :pswitch_cb
    const-string v0, "getTouchCalibrationForInputDevice"

    return-object v0

    .line 428
    :pswitch_ce
    const-string v0, "verifyInputEvent"

    return-object v0

    .line 424
    :pswitch_d1
    const-string v0, "injectInputEventToTarget"

    return-object v0

    .line 420
    :pswitch_d4
    const-string v0, "injectInputEvent"

    return-object v0

    .line 416
    :pswitch_d7
    const-string v0, "tryPointerSpeed"

    return-object v0

    .line 412
    :pswitch_da
    const-string v0, "getMousePointerSpeed"

    return-object v0

    .line 408
    :pswitch_dd
    const-string v0, "getKeyCharacterMap"

    return-object v0

    .line 404
    :pswitch_e0
    const-string v0, "getKeyCodeForKeyLocation"

    return-object v0

    .line 400
    :pswitch_e3
    const-string v0, "hasKeys"

    return-object v0

    .line 396
    :pswitch_e6
    const-string v0, "disableInputDevice"

    return-object v0

    .line 392
    :pswitch_e9
    const-string v0, "enableInputDevice"

    return-object v0

    .line 388
    :pswitch_ec
    const-string v0, "getInputDeviceIds"

    return-object v0

    .line 384
    :pswitch_ef
    const-string v0, "getInputDevice"

    return-object v0

    .line 380
    :pswitch_f2
    const-string v0, "getVelocityTrackerStrategy"

    return-object v0

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
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

    .line 371
    return-object p0
.end method

.method protected blacklist clearAllModifierKeyRemappings_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3039
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3040
    return-void
.end method

.method protected blacklist getInputDeviceBluetoothAddress_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3094
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3095
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3137
    const/16 v0, 0x4f

    return v0
.end method

.method protected blacklist getModifierKeyRemapping_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3044
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3045
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 707
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    const-string v6, "android.hardware.input.IInputManager"

    .line 712
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 713
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 716
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    return v7

    .line 719
    :cond_16
    packed-switch p1, :pswitch_data_6ce

    .line 1576
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1570
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->resetLockedModifierState()V

    .line 1571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    goto/16 :goto_6cd

    .line 1563
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;

    move-result-object v1

    .line 1564
    .local v1, "_result":[Landroid/hardware/input/AidlInputGestureData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    invoke-virtual {p3, v1, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1566
    goto/16 :goto_6cd

    .line 1552
    .end local v1    # "_result":[Landroid/hardware/input/AidlInputGestureData;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1554
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1555
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1556
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;

    move-result-object v3

    .line 1557
    .local v3, "_result":[Landroid/hardware/input/AidlInputGestureData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1559
    goto/16 :goto_6cd

    .line 1541
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Landroid/hardware/input/AidlInputGestureData;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1543
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1544
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeAllCustomInputGestures(II)V

    .line 1546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    goto/16 :goto_6cd

    .line 1529
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1531
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/AidlInputGestureData;

    .line 1532
    .local v2, "_arg1":Landroid/hardware/input/AidlInputGestureData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result v3

    .line 1534
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    goto/16 :goto_6cd

    .line 1517
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/input/AidlInputGestureData;
    .end local v3    # "_result":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1519
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/AidlInputGestureData;

    .line 1520
    .restart local v2    # "_arg1":Landroid/hardware/input/AidlInputGestureData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result v3

    .line 1522
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    goto/16 :goto_6cd

    .line 1505
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/input/AidlInputGestureData;
    .end local v3    # "_result":I
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1507
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/input/AidlInputGestureData$Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 1508
    .local v2, "_arg1":Landroid/hardware/input/AidlInputGestureData$Trigger;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object v3

    .line 1510
    .local v3, "_result":Landroid/hardware/input/AidlInputGestureData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1512
    goto/16 :goto_6cd

    .line 1496
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/input/AidlInputGestureData$Trigger;
    .end local v3    # "_result":Landroid/hardware/input/AidlInputGestureData;
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyGestureHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureHandler;

    move-result-object v1

    .line 1497
    .local v1, "_arg0":Landroid/hardware/input/IKeyGestureHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V

    .line 1499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    goto/16 :goto_6cd

    .line 1485
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyGestureHandler;
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1487
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IKeyGestureHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureHandler;

    move-result-object v2

    .line 1488
    .local v2, "_arg1":Landroid/hardware/input/IKeyGestureHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    goto/16 :goto_6cd

    .line 1476
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/hardware/input/IKeyGestureHandler;
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyGestureEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureEventListener;

    move-result-object v1

    .line 1477
    .local v1, "_arg0":Landroid/hardware/input/IKeyGestureEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V

    .line 1479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    goto/16 :goto_6cd

    .line 1467
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyGestureEventListener;
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyGestureEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureEventListener;

    move-result-object v1

    .line 1468
    .restart local v1    # "_arg0":Landroid/hardware/input/IKeyGestureEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V

    .line 1470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    goto/16 :goto_6cd

    .line 1457
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyGestureEventListener;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1458
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v2

    .line 1460
    .local v2, "_result":Landroid/hardware/input/KeyGlyphMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1462
    goto/16 :goto_6cd

    .line 1448
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/hardware/input/KeyGlyphMap;
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IStickyModifierStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IStickyModifierStateListener;

    move-result-object v1

    .line 1449
    .local v1, "_arg0":Landroid/hardware/input/IStickyModifierStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1450
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V

    .line 1451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    goto/16 :goto_6cd

    .line 1439
    .end local v1    # "_arg0":Landroid/hardware/input/IStickyModifierStateListener;
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IStickyModifierStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IStickyModifierStateListener;

    move-result-object v1

    .line 1440
    .restart local v1    # "_arg0":Landroid/hardware/input/IStickyModifierStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1441
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V

    .line 1442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    goto/16 :goto_6cd

    .line 1429
    .end local v1    # "_arg0":Landroid/hardware/input/IStickyModifierStateListener;
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1430
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1431
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object v2

    .line 1432
    .local v2, "_result":Landroid/hardware/input/HostUsiVersion;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1434
    goto/16 :goto_6cd

    .line 1420
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/hardware/input/HostUsiVersion;
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;

    move-result-object v1

    .line 1421
    .local v1, "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V

    .line 1423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    goto/16 :goto_6cd

    .line 1411
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;

    move-result-object v1

    .line 1412
    .restart local v1    # "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V

    .line 1414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    goto/16 :goto_6cd

    .line 1402
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyboardBacklightListener;
    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1403
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->pilferPointers(Landroid/os/IBinder;)V

    .line 1405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    goto/16 :goto_6cd

    .line 1392
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1393
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 1395
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1397
    goto/16 :goto_6cd

    .line 1382
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyEventActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyEventActivityListener;

    move-result-object v1

    .line 1383
    .local v1, "_arg0":Landroid/hardware/input/IKeyEventActivityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1384
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v2

    .line 1385
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1387
    goto/16 :goto_6cd

    .line 1372
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyEventActivityListener;
    .end local v2    # "_result":Z
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IKeyEventActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyEventActivityListener;

    move-result-object v1

    .line 1373
    .restart local v1    # "_arg0":Landroid/hardware/input/IKeyEventActivityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result v2

    .line 1375
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1377
    goto/16 :goto_6cd

    .line 1361
    .end local v1    # "_arg0":Landroid/hardware/input/IKeyEventActivityListener;
    .end local v2    # "_result":Z
    :pswitch_1bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1363
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDeviceBatteryListener;

    move-result-object v2

    .line 1364
    .local v2, "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1365
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V

    .line 1366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    goto/16 :goto_6cd

    .line 1350
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    :pswitch_1d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1352
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDeviceBatteryListener;

    move-result-object v2

    .line 1353
    .restart local v2    # "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V

    .line 1355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    goto/16 :goto_6cd

    .line 1343
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/input/IInputDeviceBatteryListener;
    :pswitch_1ed
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->cancelCurrentTouch()V

    .line 1344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    goto/16 :goto_6cd

    .line 1333
    :pswitch_1f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1335
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1336
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->closeLightSession(ILandroid/os/IBinder;)V

    .line 1338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    goto/16 :goto_6cd

    .line 1320
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1322
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1324
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1325
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1326
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    goto/16 :goto_6cd

    .line 1305
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_21f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1307
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1309
    .local v2, "_arg1":[I
    sget-object v3, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/lights/LightState;

    .line 1311
    .local v3, "_arg2":[Landroid/hardware/lights/LightState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1312
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    goto/16 :goto_6cd

    .line 1293
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":[Landroid/hardware/lights/LightState;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :pswitch_23e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1295
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1296
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v3

    .line 1298
    .local v3, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1300
    goto/16 :goto_6cd

    .line 1283
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/hardware/lights/LightState;
    :pswitch_255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1284
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1285
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getLights(I)Ljava/util/List;

    move-result-object v2

    .line 1286
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1288
    goto/16 :goto_6cd

    .line 1271
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :pswitch_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1273
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1274
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->flushSensor(II)Z

    move-result v3

    .line 1276
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1278
    goto/16 :goto_6cd

    .line 1260
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_27f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1262
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1263
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->disableSensor(II)V

    .line 1265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    goto/16 :goto_6cd

    .line 1244
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1246
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1248
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1250
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1251
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->enableSensor(IIII)Z

    move-result v5

    .line 1253
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    goto/16 :goto_6cd

    .line 1235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v1

    .line 1236
    .local v1, "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 1238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    goto/16 :goto_6cd

    .line 1225
    .end local v1    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    :pswitch_2c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v1

    .line 1226
    .restart local v1    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v2

    .line 1228
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1230
    goto/16 :goto_6cd

    .line 1215
    .end local v1    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    .end local v2    # "_result":Z
    :pswitch_2db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v2

    .line 1218
    .local v2, "_result":[Landroid/hardware/input/InputSensorInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1220
    goto/16 :goto_6cd

    .line 1206
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/hardware/input/InputSensorInfo;
    :pswitch_2ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1207
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    goto/16 :goto_6cd

    .line 1195
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_6cd

    .line 1186
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    goto/16 :goto_6cd

    .line 1175
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_31f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1179
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    goto/16 :goto_6cd

    .line 1166
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removePortAssociation(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    goto/16 :goto_6cd

    .line 1155
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1158
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addPortAssociation(Ljava/lang/String;I)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_6cd

    .line 1141
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_354
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1143
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1146
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v4

    .line 1148
    .local v4, "_result":Landroid/view/InputMonitor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1150
    goto/16 :goto_6cd

    .line 1131
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/view/InputMonitor;
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1133
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1134
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 1136
    goto/16 :goto_6cd

    .line 1113
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_37f
    sget-object v1, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/PointerIcon;

    .line 1115
    .local v1, "_arg0":Landroid/view/PointerIcon;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1117
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1119
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1121
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1122
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result v8

    .line 1124
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1126
    goto/16 :goto_6cd

    .line 1103
    .end local v1    # "_arg0":Landroid/view/PointerIcon;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :pswitch_3a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1104
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object v2

    .line 1106
    .local v2, "_result":Landroid/hardware/input/IInputDeviceBatteryState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1108
    goto/16 :goto_6cd

    .line 1091
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/hardware/input/IInputDeviceBatteryState;
    :pswitch_3ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1093
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v2

    .line 1094
    .local v2, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v3

    .line 1096
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1098
    goto/16 :goto_6cd

    .line 1079
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v3    # "_result":Z
    :pswitch_3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1081
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v2

    .line 1082
    .restart local v2    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v3

    .line 1084
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1086
    goto/16 :goto_6cd

    .line 1069
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v3    # "_result":Z
    :pswitch_3f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->isVibrating(I)Z

    move-result v2

    .line 1072
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    goto/16 :goto_6cd

    .line 1059
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1060
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getVibratorIds(I)[I

    move-result-object v2

    .line 1062
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1064
    goto/16 :goto_6cd

    .line 1048
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[I
    :pswitch_416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1050
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1051
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    goto/16 :goto_6cd

    .line 1035
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    .line 1039
    .local v2, "_arg1":Landroid/os/CombinedVibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1040
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_6cd

    .line 1022
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/CombinedVibration;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1024
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    .line 1026
    .local v2, "_arg1":Landroid/os/VibrationEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1027
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_6cd

    .line 1014
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/VibrationEffect;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_45f
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isMicMuted()I

    move-result v1

    .line 1015
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    goto/16 :goto_6cd

    .line 1006
    .end local v1    # "_result":I
    :pswitch_46b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v1

    .line 1007
    .local v1, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    goto/16 :goto_6cd

    .line 998
    .end local v1    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :pswitch_47e
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v1

    .line 999
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    goto/16 :goto_6cd

    .line 990
    .end local v1    # "_result":I
    :pswitch_48a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v1

    .line 991
    .local v1, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_6cd

    .line 982
    .end local v1    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :pswitch_49d
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object v1

    .line 983
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 985
    goto/16 :goto_6cd

    .line 976
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_4a9
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->clearAllModifierKeyRemappings()V

    .line 977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    goto/16 :goto_6cd

    .line 966
    :pswitch_4b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 969
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->remapModifierKey(II)V

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_6cd

    .line 950
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_4c4
    sget-object v1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 952
    .local v1, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 954
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 956
    .local v3, "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 957
    .local v4, "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 959
    .local v5, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 961
    goto/16 :goto_6cd

    .line 933
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_4ef
    sget-object v1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 935
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 937
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 939
    .restart local v3    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 941
    .restart local v4    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 942
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_6cd

    .line 922
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_51b
    sget-object v1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 924
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_6cd

    .line 906
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_532
    sget-object v1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 908
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 910
    .local v2, "_arg1":I
    sget-object v3, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 912
    .restart local v3    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 913
    .restart local v4    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v5

    .line 915
    .local v5, "_result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 917
    goto/16 :goto_6cd

    .line 896
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "_arg3":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "_result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    :pswitch_55d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 899
    .local v2, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 901
    goto/16 :goto_6cd

    .line 888
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/input/KeyboardLayout;
    :pswitch_570
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    .line 889
    .local v1, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v1, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 891
    goto/16 :goto_6cd

    .line 876
    .end local v1    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_57c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 880
    .local v2, "_arg1":I
    sget-object v3, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/TouchCalibration;

    .line 881
    .local v3, "_arg2":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_6cd

    .line 864
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :pswitch_597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 866
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 867
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v3

    .line 869
    .local v3, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 871
    goto/16 :goto_6cd

    .line 854
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/hardware/input/TouchCalibration;
    :pswitch_5ae
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 855
    .local v1, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v2

    .line 857
    .local v2, "_result":Landroid/view/VerifiedInputEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 859
    goto/16 :goto_6cd

    .line 840
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    .end local v2    # "_result":Landroid/view/VerifiedInputEvent;
    :pswitch_5c5
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 842
    .restart local v1    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 845
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v4

    .line 847
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 849
    goto/16 :goto_6cd

    .line 828
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_5e4
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 830
    .restart local v1    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v3

    .line 833
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    goto/16 :goto_6cd

    .line 819
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_5ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 820
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_6cd

    .line 811
    .end local v1    # "_arg0":I
    :pswitch_60e
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getMousePointerSpeed()I

    move-result v1

    .line 812
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    goto/16 :goto_6cd

    .line 802
    .end local v1    # "_result":I
    :pswitch_61a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 805
    .local v2, "_result":Landroid/view/KeyCharacterMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 807
    goto/16 :goto_6cd

    .line 790
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/view/KeyCharacterMap;
    :pswitch_62d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 792
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 793
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getKeyCodeForKeyLocation(II)I

    move-result v3

    .line 795
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    goto/16 :goto_6cd

    .line 766
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 768
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 772
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 773
    .local v4, "_arg3_length":I
    const v5, 0xf4240

    if-gt v4, v5, :cond_670

    .line 775
    if-gez v4, :cond_65d

    .line 776
    const/4 v5, 0x0

    .local v5, "_arg3":[Z
    goto :goto_65f

    .line 778
    .end local v5    # "_arg3":[Z
    :cond_65d
    new-array v5, v4, [Z

    .line 780
    .restart local v5    # "_arg3":[Z
    :goto_65f
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v1, v2, v3, v5}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v8

    .line 782
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 784
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 785
    goto :goto_6cd

    .line 774
    .end local v5    # "_arg3":[Z
    .end local v8    # "_result":Z
    :cond_670
    new-instance v5, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Array too large: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 757
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3_length":I
    :pswitch_689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 758
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    goto :goto_6cd

    .line 748
    .end local v1    # "_arg0":I
    :pswitch_697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto :goto_6cd

    .line 740
    .end local v1    # "_arg0":I
    :pswitch_6a5
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v1

    .line 741
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 743
    goto :goto_6cd

    .line 731
    .end local v1    # "_result":[I
    :pswitch_6b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 734
    .local v2, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 736
    goto :goto_6cd

    .line 723
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/InputDevice;
    :pswitch_6c2
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    nop

    .line 1579
    .end local v1    # "_result":Ljava/lang/String;
    :goto_6cd
    return v7

    :pswitch_data_6ce
    .packed-switch 0x1
        :pswitch_6c2
        :pswitch_6b0
        :pswitch_6a5
        :pswitch_697
        :pswitch_689
        :pswitch_644
        :pswitch_62d
        :pswitch_61a
        :pswitch_60e
        :pswitch_5ff
        :pswitch_5e4
        :pswitch_5c5
        :pswitch_5ae
        :pswitch_597
        :pswitch_57c
        :pswitch_570
        :pswitch_55d
        :pswitch_532
        :pswitch_51b
        :pswitch_4ef
        :pswitch_4c4
        :pswitch_4b1
        :pswitch_4a9
        :pswitch_49d
        :pswitch_48a
        :pswitch_47e
        :pswitch_46b
        :pswitch_45f
        :pswitch_444
        :pswitch_429
        :pswitch_416
        :pswitch_403
        :pswitch_3f0
        :pswitch_3d5
        :pswitch_3ba
        :pswitch_3a7
        :pswitch_37f
        :pswitch_36f
        :pswitch_354
        :pswitch_341
        :pswitch_332
        :pswitch_31f
        :pswitch_310
        :pswitch_2fd
        :pswitch_2ee
        :pswitch_2db
        :pswitch_2c4
        :pswitch_2b1
        :pswitch_292
        :pswitch_27f
        :pswitch_268
        :pswitch_255
        :pswitch_23e
        :pswitch_21f
        :pswitch_208
        :pswitch_1f5
        :pswitch_1ed
        :pswitch_1d6
        :pswitch_1bf
        :pswitch_1a8
        :pswitch_191
        :pswitch_17e
        :pswitch_16f
        :pswitch_15c
        :pswitch_149
        :pswitch_136
        :pswitch_123
        :pswitch_110
        :pswitch_fd
        :pswitch_ea
        :pswitch_d7
        :pswitch_c0
        :pswitch_ad
        :pswitch_92
        :pswitch_77
        :pswitch_5c
        :pswitch_49
        :pswitch_32
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist pilferPointers_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3099
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_INPUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3100
    return-void
.end method

.method protected blacklist registerKeyEventActivityListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3084
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LISTEN_FOR_KEY_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3085
    return-void
.end method

.method protected blacklist registerKeyboardBacklightListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3104
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_KEYBOARD_BACKLIGHT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3105
    return-void
.end method

.method protected blacklist registerStickyModifierStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3115
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_STICKY_MODIFIER_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3116
    return-void
.end method

.method protected blacklist remapModifierKey_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3034
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3035
    return-void
.end method

.method protected blacklist setKeyboardLayoutForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3028
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3029
    return-void
.end method

.method protected blacklist setKeyboardLayoutOverrideForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3023
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3024
    return-void
.end method

.method protected blacklist unregisterKeyEventActivityListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3089
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LISTEN_FOR_KEY_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3090
    return-void
.end method

.method protected blacklist unregisterKeyboardBacklightListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3109
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_KEYBOARD_BACKLIGHT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3110
    return-void
.end method

.method protected blacklist unregisterStickyModifierStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3120
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_STICKY_MODIFIER_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3121
    return-void
.end method
