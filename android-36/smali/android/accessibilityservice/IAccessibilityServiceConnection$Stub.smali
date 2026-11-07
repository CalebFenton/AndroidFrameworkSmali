.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToDisplay:I = 0x35

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToWindow:I = 0x36

.field static final blacklist TRANSACTION_connectBluetoothBrailleDisplay:I = 0x37

.field static final blacklist TRANSACTION_connectUsbBrailleDisplay:I = 0x38

.field static final greylist-max-o TRANSACTION_disableSelf:I = 0xe

.field static final blacklist TRANSACTION_dispatchGesture:I = 0x21

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x4

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x5

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x6

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x7

.field static final blacklist TRANSACTION_getCurrentMagnificationRegion:I = 0x15

.field static final blacklist TRANSACTION_getInstalledAndEnabledServices:I = 0x34

.field static final greylist-max-o TRANSACTION_getMagnificationCenterX:I = 0x12

.field static final greylist-max-o TRANSACTION_getMagnificationCenterY:I = 0x13

.field static final blacklist TRANSACTION_getMagnificationConfig:I = 0x10

.field static final greylist-max-o TRANSACTION_getMagnificationRegion:I = 0x14

.field static final greylist-max-o TRANSACTION_getMagnificationScale:I = 0x11

.field static final blacklist TRANSACTION_getOverlayWindowToken:I = 0x23

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xb

.field static final blacklist TRANSACTION_getSoftKeyboardShowMode:I = 0x1b

.field static final blacklist TRANSACTION_getSystemActions:I = 0xd

.field static final greylist-max-o TRANSACTION_getWindow:I = 0x9

.field static final blacklist TRANSACTION_getWindowIdForLeashToken:I = 0x24

.field static final greylist-max-o TRANSACTION_getWindows:I = 0xa

.field static final greylist-max-o TRANSACTION_isAccessibilityButtonAvailable:I = 0x1f

.field static final greylist-max-o TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x22

.field static final blacklist TRANSACTION_logTrace:I = 0x2b

.field static final blacklist TRANSACTION_onDoubleTap:I = 0x30

.field static final blacklist TRANSACTION_onDoubleTapAndHold:I = 0x31

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x8

.field static final greylist-max-o TRANSACTION_performGlobalAction:I = 0xc

.field static final blacklist TRANSACTION_requestDelegating:I = 0x2f

.field static final blacklist TRANSACTION_requestDragging:I = 0x2e

.field static final blacklist TRANSACTION_requestTouchExploration:I = 0x2d

.field static final blacklist TRANSACTION_resetCurrentMagnification:I = 0x17

.field static final greylist-max-o TRANSACTION_resetMagnification:I = 0x16

.field static final greylist-max-o TRANSACTION_sendGesture:I = 0x20

.field static final blacklist TRANSACTION_setAnimationScale:I = 0x32

.field static final blacklist TRANSACTION_setAttributionTag:I = 0x2

.field static final blacklist TRANSACTION_setCacheEnabled:I = 0x2a

.field static final blacklist TRANSACTION_setFocusAppearance:I = 0x29

.field static final blacklist TRANSACTION_setGestureDetectionPassthroughRegion:I = 0x27

.field static final blacklist TRANSACTION_setInputMethodEnabled:I = 0x1e

.field static final blacklist TRANSACTION_setInstalledAndEnabledServices:I = 0x33

.field static final greylist-max-o TRANSACTION_setMagnificationCallbackEnabled:I = 0x19

.field static final blacklist TRANSACTION_setMagnificationConfig:I = 0x18

.field static final greylist-max-o TRANSACTION_setOnKeyEventResult:I = 0xf

.field static final blacklist TRANSACTION_setServiceDetectsGesturesEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setServiceInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x1c

.field static final greylist-max-o TRANSACTION_setSoftKeyboardShowMode:I = 0x1a

.field static final blacklist TRANSACTION_setTestBrailleDisplayData:I = 0x39

.field static final blacklist TRANSACTION_setTouchExplorationPassthroughRegion:I = 0x28

.field static final blacklist TRANSACTION_switchToInputMethod:I = 0x1d

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x25

.field static final blacklist TRANSACTION_takeScreenshotOfWindow:I = 0x26


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    nop

    .line 242
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 243
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 231
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 232
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 233
    if-eqz p1, :cond_d

    .line 236
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 237
    return-void

    .line 234
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 250
    if-nez p0, :cond_4

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 254
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_14

    .line 255
    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-object v1

    .line 257
    :cond_14
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 266
    packed-switch p0, :pswitch_data_d6

    .line 498
    const/4 v0, 0x0

    return-object v0

    .line 494
    :pswitch_5
    const-string/jumbo v0, "setTestBrailleDisplayData"

    return-object v0

    .line 490
    :pswitch_9
    const-string v0, "connectUsbBrailleDisplay"

    return-object v0

    .line 486
    :pswitch_c
    const-string v0, "connectBluetoothBrailleDisplay"

    return-object v0

    .line 482
    :pswitch_f
    const-string v0, "attachAccessibilityOverlayToWindow"

    return-object v0

    .line 478
    :pswitch_12
    const-string v0, "attachAccessibilityOverlayToDisplay"

    return-object v0

    .line 474
    :pswitch_15
    const-string v0, "getInstalledAndEnabledServices"

    return-object v0

    .line 470
    :pswitch_18
    const-string/jumbo v0, "setInstalledAndEnabledServices"

    return-object v0

    .line 466
    :pswitch_1c
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 462
    :pswitch_20
    const-string/jumbo v0, "onDoubleTapAndHold"

    return-object v0

    .line 458
    :pswitch_24
    const-string/jumbo v0, "onDoubleTap"

    return-object v0

    .line 454
    :pswitch_28
    const-string/jumbo v0, "requestDelegating"

    return-object v0

    .line 450
    :pswitch_2c
    const-string/jumbo v0, "requestDragging"

    return-object v0

    .line 446
    :pswitch_30
    const-string/jumbo v0, "requestTouchExploration"

    return-object v0

    .line 442
    :pswitch_34
    const-string/jumbo v0, "setServiceDetectsGesturesEnabled"

    return-object v0

    .line 438
    :pswitch_38
    const-string/jumbo v0, "logTrace"

    return-object v0

    .line 434
    :pswitch_3c
    const-string/jumbo v0, "setCacheEnabled"

    return-object v0

    .line 430
    :pswitch_40
    const-string/jumbo v0, "setFocusAppearance"

    return-object v0

    .line 426
    :pswitch_44
    const-string/jumbo v0, "setTouchExplorationPassthroughRegion"

    return-object v0

    .line 422
    :pswitch_48
    const-string/jumbo v0, "setGestureDetectionPassthroughRegion"

    return-object v0

    .line 418
    :pswitch_4c
    const-string/jumbo v0, "takeScreenshotOfWindow"

    return-object v0

    .line 414
    :pswitch_50
    const-string/jumbo v0, "takeScreenshot"

    return-object v0

    .line 410
    :pswitch_54
    const-string/jumbo v0, "getWindowIdForLeashToken"

    return-object v0

    .line 406
    :pswitch_58
    const-string v0, "getOverlayWindowToken"

    return-object v0

    .line 402
    :pswitch_5b
    const-string/jumbo v0, "isFingerprintGestureDetectionAvailable"

    return-object v0

    .line 398
    :pswitch_5f
    const-string v0, "dispatchGesture"

    return-object v0

    .line 394
    :pswitch_62
    const-string/jumbo v0, "sendGesture"

    return-object v0

    .line 390
    :pswitch_66
    const-string/jumbo v0, "isAccessibilityButtonAvailable"

    return-object v0

    .line 386
    :pswitch_6a
    const-string/jumbo v0, "setInputMethodEnabled"

    return-object v0

    .line 382
    :pswitch_6e
    const-string/jumbo v0, "switchToInputMethod"

    return-object v0

    .line 378
    :pswitch_72
    const-string/jumbo v0, "setSoftKeyboardCallbackEnabled"

    return-object v0

    .line 374
    :pswitch_76
    const-string/jumbo v0, "getSoftKeyboardShowMode"

    return-object v0

    .line 370
    :pswitch_7a
    const-string/jumbo v0, "setSoftKeyboardShowMode"

    return-object v0

    .line 366
    :pswitch_7e
    const-string/jumbo v0, "setMagnificationCallbackEnabled"

    return-object v0

    .line 362
    :pswitch_82
    const-string/jumbo v0, "setMagnificationConfig"

    return-object v0

    .line 358
    :pswitch_86
    const-string/jumbo v0, "resetCurrentMagnification"

    return-object v0

    .line 354
    :pswitch_8a
    const-string/jumbo v0, "resetMagnification"

    return-object v0

    .line 350
    :pswitch_8e
    const-string v0, "getCurrentMagnificationRegion"

    return-object v0

    .line 346
    :pswitch_91
    const-string v0, "getMagnificationRegion"

    return-object v0

    .line 342
    :pswitch_94
    const-string v0, "getMagnificationCenterY"

    return-object v0

    .line 338
    :pswitch_97
    const-string v0, "getMagnificationCenterX"

    return-object v0

    .line 334
    :pswitch_9a
    const-string v0, "getMagnificationScale"

    return-object v0

    .line 330
    :pswitch_9d
    const-string v0, "getMagnificationConfig"

    return-object v0

    .line 326
    :pswitch_a0
    const-string/jumbo v0, "setOnKeyEventResult"

    return-object v0

    .line 322
    :pswitch_a4
    const-string v0, "disableSelf"

    return-object v0

    .line 318
    :pswitch_a7
    const-string/jumbo v0, "getSystemActions"

    return-object v0

    .line 314
    :pswitch_ab
    const-string/jumbo v0, "performGlobalAction"

    return-object v0

    .line 310
    :pswitch_af
    const-string v0, "getServiceInfo"

    return-object v0

    .line 306
    :pswitch_b2
    const-string/jumbo v0, "getWindows"

    return-object v0

    .line 302
    :pswitch_b6
    const-string/jumbo v0, "getWindow"

    return-object v0

    .line 298
    :pswitch_ba
    const-string/jumbo v0, "performAccessibilityAction"

    return-object v0

    .line 294
    :pswitch_be
    const-string v0, "focusSearch"

    return-object v0

    .line 290
    :pswitch_c1
    const-string v0, "findFocus"

    return-object v0

    .line 286
    :pswitch_c4
    const-string v0, "findAccessibilityNodeInfosByViewId"

    return-object v0

    .line 282
    :pswitch_c7
    const-string v0, "findAccessibilityNodeInfosByText"

    return-object v0

    .line 278
    :pswitch_ca
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object v0

    .line 274
    :pswitch_cd
    const-string/jumbo v0, "setAttributionTag"

    return-object v0

    .line 270
    :pswitch_d1
    const-string/jumbo v0, "setServiceInfo"

    return-object v0

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 261
    return-object p0
.end method

.method protected blacklist connectBluetoothBrailleDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2243
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2244
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2254
    const/16 v0, 0x38

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 505
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.accessibilityservice.IAccessibilityServiceConnection"

    .line 510
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt v12, v1, :cond_15

    const v2, 0xffffff

    if-gt v12, v2, :cond_15

    .line 511
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    :cond_15
    const v2, 0x5f4e5446

    if-ne v12, v2, :cond_1e

    .line 514
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    return v1

    .line 517
    :cond_1e
    packed-switch v12, :pswitch_data_56e

    .line 1169
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1161
    :pswitch_26
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1162
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTestBrailleDisplayData(Ljava/util/List;)V

    .line 1164
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    move v12, v1

    goto/16 :goto_56c

    .line 1150
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_38
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 1152
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayController;

    move-result-object v3

    .line 1153
    .local v3, "_arg1":Landroid/accessibilityservice/IBrailleDisplayController;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V

    .line 1155
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    move v12, v1

    goto/16 :goto_56c

    .line 1139
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Landroid/accessibilityservice/IBrailleDisplayController;
    :pswitch_54
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IBrailleDisplayController;

    move-result-object v3

    .line 1142
    .restart local v3    # "_arg1":Landroid/accessibilityservice/IBrailleDisplayController;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V

    .line 1144
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    move v12, v1

    goto/16 :goto_56c

    .line 1124
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/accessibilityservice/IBrailleDisplayController;
    :pswitch_6c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .local v2, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1128
    .local v3, "_arg1":I
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 1130
    .local v4, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 1131
    .local v5, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 1133
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    move v12, v1

    goto/16 :goto_56c

    .line 1109
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/SurfaceControl;
    .end local v5    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :pswitch_90
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1111
    .restart local v2    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 1115
    .restart local v4    # "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 1116
    .restart local v5    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 1118
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    move v12, v1

    goto/16 :goto_56c

    .line 1101
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/SurfaceControl;
    .end local v5    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :pswitch_b4
    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    .line 1102
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1104
    move v12, v1

    goto/16 :goto_56c

    .line 1093
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_c1
    sget-object v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1094
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInstalledAndEnabledServices(Ljava/util/List;)V

    .line 1096
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    move v12, v1

    goto/16 :goto_56c

    .line 1084
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_d3
    invoke-virtual {v13}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1085
    .local v2, "_arg0":F
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1086
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAnimationScale(F)V

    .line 1087
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    move v12, v1

    goto/16 :goto_56c

    .line 1075
    .end local v2    # "_arg0":F
    :pswitch_e3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1076
    .local v2, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTapAndHold(I)V

    .line 1078
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    move v12, v1

    goto/16 :goto_56c

    .line 1066
    .end local v2    # "_arg0":I
    :pswitch_f3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1067
    .restart local v2    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTap(I)V

    .line 1069
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    move v12, v1

    goto/16 :goto_56c

    .line 1057
    .end local v2    # "_arg0":I
    :pswitch_103
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1058
    .restart local v2    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDelegating(I)V

    .line 1060
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    move v12, v1

    goto/16 :goto_56c

    .line 1046
    .end local v2    # "_arg0":I
    :pswitch_113
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1048
    .restart local v2    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1049
    .restart local v3    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {v0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDragging(II)V

    .line 1051
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    move v12, v1

    goto/16 :goto_56c

    .line 1037
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_127
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1038
    .restart local v2    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestTouchExploration(I)V

    .line 1040
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    move v12, v1

    goto/16 :goto_56c

    .line 1026
    .end local v2    # "_arg0":I
    :pswitch_137
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1028
    .restart local v2    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1029
    .local v3, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {v0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceDetectsGesturesEnabled(IZ)V

    .line 1031
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    move v12, v1

    goto/16 :goto_56c

    .line 1004
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_14b
    move v3, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1006
    .local v1, "_arg0":J
    move v4, v3

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1008
    .local v3, "_arg1":Ljava/lang/String;
    move v6, v4

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1010
    .local v4, "_arg2":J
    move v7, v6

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1012
    .local v6, "_arg3":Ljava/lang/String;
    move v8, v7

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1014
    .local v7, "_arg4":I
    move v10, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1016
    .local v8, "_arg5":J
    move v11, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1018
    .local v10, "_arg6":I
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1019
    .local v11, "_arg7":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    const/4 v12, 0x1

    invoke-virtual/range {v0 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V

    .line 1021
    goto/16 :goto_56c

    .line 995
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":J
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":Landroid/os/Bundle;
    :pswitch_17f
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 996
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setCacheEnabled(Z)V

    .line 998
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    goto/16 :goto_56c

    .line 984
    .end local v1    # "_arg0":Z
    :pswitch_18f
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 986
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 987
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setFocusAppearance(II)V

    .line 989
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_56c

    .line 973
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1a3
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 976
    .local v2, "_arg1":Landroid/graphics/Region;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 978
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_56c

    .line 962
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Region;
    :pswitch_1bb
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 964
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 965
    .restart local v2    # "_arg1":Landroid/graphics/Region;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 967
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_56c

    .line 947
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Region;
    :pswitch_1d3
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 949
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 951
    .local v2, "_arg1":I
    sget-object v3, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 953
    .local v3, "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v4

    .line 954
    .local v4, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshotOfWindow(IILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 956
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_56c

    .line 936
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    .end local v4    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :pswitch_1f7
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 938
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 939
    .local v2, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshot(ILandroid/os/RemoteCallback;)V

    .line 941
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_56c

    .line 926
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_20f
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 927
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v2

    .line 929
    .local v2, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_56c

    .line 916
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_223
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 917
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v2

    .line 919
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 921
    goto/16 :goto_56c

    .line 908
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_237
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isFingerprintGestureDetectionAvailable()Z

    move-result v1

    .line 909
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 911
    goto/16 :goto_56c

    .line 896
    .end local v1    # "_result":Z
    :pswitch_244
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 900
    .local v2, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 901
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {v0, v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 903
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_56c

    .line 885
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v3    # "_arg2":I
    :pswitch_260
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 888
    .restart local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    .line 890
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    goto/16 :goto_56c

    .line 877
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_278
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isAccessibilityButtonAvailable()Z

    move-result v1

    .line 878
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 880
    goto/16 :goto_56c

    .line 866
    .end local v1    # "_result":Z
    :pswitch_285
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 869
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v3

    .line 871
    .local v3, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    goto/16 :goto_56c

    .line 856
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    :pswitch_29d
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v2

    .line 859
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 861
    goto/16 :goto_56c

    .line 847
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2b1
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 848
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    .line 850
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    goto/16 :goto_56c

    .line 839
    .end local v1    # "_arg0":Z
    :pswitch_2c1
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSoftKeyboardShowMode()I

    move-result v1

    .line 840
    .local v1, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    goto/16 :goto_56c

    .line 830
    .end local v1    # "_result":I
    :pswitch_2ce
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    move-result v2

    .line 833
    .restart local v2    # "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    goto/16 :goto_56c

    .line 819
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2e2
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 822
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(IZ)V

    .line 824
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_56c

    .line 805
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_2f6
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 807
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/MagnificationConfig;

    .line 809
    .local v2, "_arg1":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 810
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {v0, v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v4

    .line 812
    .local v4, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 814
    goto/16 :goto_56c

    .line 793
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/accessibilityservice/MagnificationConfig;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :pswitch_316
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 796
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetCurrentMagnification(IZ)Z

    move-result v3

    .line 798
    .local v3, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 800
    goto/16 :goto_56c

    .line 781
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_32e
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 784
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(IZ)Z

    move-result v3

    .line 786
    .restart local v3    # "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 788
    goto/16 :goto_56c

    .line 771
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_346
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v2

    .line 774
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 776
    goto/16 :goto_56c

    .line 761
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Region;
    :pswitch_35a
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v2

    .line 764
    .restart local v2    # "_result":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 766
    goto/16 :goto_56c

    .line 751
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Region;
    :pswitch_36e
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY(I)F

    move-result v2

    .line 754
    .local v2, "_result":F
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 756
    goto/16 :goto_56c

    .line 741
    .end local v1    # "_arg0":I
    .end local v2    # "_result":F
    :pswitch_382
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX(I)F

    move-result v2

    .line 744
    .restart local v2    # "_result":F
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 746
    goto/16 :goto_56c

    .line 731
    .end local v1    # "_arg0":I
    .end local v2    # "_result":F
    :pswitch_396
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale(I)F

    move-result v2

    .line 734
    .restart local v2    # "_result":F
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 736
    goto/16 :goto_56c

    .line 721
    .end local v1    # "_arg0":I
    .end local v2    # "_result":F
    :pswitch_3aa
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 722
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    .line 724
    .local v2, "_result":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 726
    goto/16 :goto_56c

    .line 711
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/accessibilityservice/MagnificationConfig;
    :pswitch_3be
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 713
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 714
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    .line 716
    goto/16 :goto_56c

    .line 704
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_3cf
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    .line 705
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    goto/16 :goto_56c

    .line 697
    :pswitch_3d8
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSystemActions()Ljava/util/List;

    move-result-object v1

    .line 698
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v14, v1, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 700
    goto/16 :goto_56c

    .line 688
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    :pswitch_3e5
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v2

    .line 691
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 693
    goto/16 :goto_56c

    .line 680
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_3f9
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 681
    .local v1, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v14, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 683
    goto/16 :goto_56c

    .line 673
    .end local v1    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_406
    move v12, v1

    invoke-virtual {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v1

    .line 674
    .local v1, "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {v14, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    goto/16 :goto_56c

    .line 664
    .end local v1    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    :pswitch_413
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 667
    .local v2, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 669
    goto/16 :goto_56c

    .line 642
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :pswitch_427
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 644
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 646
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 648
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 650
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 652
    .local v6, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 654
    .local v7, "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 655
    .local v8, "_arg6":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v10

    .line 657
    .local v10, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 659
    move-object/from16 v0, p0

    goto/16 :goto_56c

    .line 622
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg6":J
    .end local v10    # "_result":Z
    :pswitch_45d
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 624
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 626
    .restart local v2    # "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 628
    .restart local v4    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 630
    .local v5, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 632
    .local v6, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 633
    .local v7, "_arg5":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v9

    .line 635
    .local v9, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 637
    goto/16 :goto_56c

    .line 602
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":J
    .end local v9    # "_result":[Ljava/lang/String;
    :pswitch_48b
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 606
    .restart local v2    # "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 608
    .restart local v4    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 610
    .restart local v5    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 612
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 613
    .restart local v7    # "_arg5":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v9

    .line 615
    .restart local v9    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 617
    goto/16 :goto_56c

    .line 582
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":J
    .end local v9    # "_result":[Ljava/lang/String;
    :pswitch_4b9
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 586
    .restart local v2    # "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 590
    .restart local v5    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 592
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 593
    .restart local v7    # "_arg5":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v9

    .line 595
    .restart local v9    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 597
    goto/16 :goto_56c

    .line 562
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":J
    .end local v9    # "_result":[Ljava/lang/String;
    :pswitch_4e7
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 566
    .restart local v2    # "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 568
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 570
    .restart local v5    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 572
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 573
    .restart local v7    # "_arg5":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v9

    .line 575
    .restart local v9    # "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 577
    goto :goto_56c

    .line 540
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":J
    .end local v9    # "_result":[Ljava/lang/String;
    :pswitch_514
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 544
    .restart local v2    # "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 546
    .local v4, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 548
    .local v5, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    .local v6, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 552
    .restart local v7    # "_arg5":J
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 553
    .local v9, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v10

    .line 555
    .local v10, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 557
    goto :goto_56c

    .line 531
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":J
    .end local v9    # "_arg6":Landroid/os/Bundle;
    .end local v10    # "_result":[Ljava/lang/String;
    :pswitch_54a
    move v12, v1

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAttributionTag(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto :goto_56c

    .line 522
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_559
    move v12, v1

    sget-object v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 523
    .local v1, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 525
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    nop

    .line 1172
    .end local v1    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_56c
    return v12

    nop

    :pswitch_data_56e
    .packed-switch 0x1
        :pswitch_559
        :pswitch_54a
        :pswitch_514
        :pswitch_4e7
        :pswitch_4b9
        :pswitch_48b
        :pswitch_45d
        :pswitch_427
        :pswitch_413
        :pswitch_406
        :pswitch_3f9
        :pswitch_3e5
        :pswitch_3d8
        :pswitch_3cf
        :pswitch_3be
        :pswitch_3aa
        :pswitch_396
        :pswitch_382
        :pswitch_36e
        :pswitch_35a
        :pswitch_346
        :pswitch_32e
        :pswitch_316
        :pswitch_2f6
        :pswitch_2e2
        :pswitch_2ce
        :pswitch_2c1
        :pswitch_2b1
        :pswitch_29d
        :pswitch_285
        :pswitch_278
        :pswitch_260
        :pswitch_244
        :pswitch_237
        :pswitch_223
        :pswitch_20f
        :pswitch_1f7
        :pswitch_1d3
        :pswitch_1bb
        :pswitch_1a3
        :pswitch_18f
        :pswitch_17f
        :pswitch_14b
        :pswitch_137
        :pswitch_127
        :pswitch_113
        :pswitch_103
        :pswitch_f3
        :pswitch_e3
        :pswitch_d3
        :pswitch_c1
        :pswitch_b4
        :pswitch_90
        :pswitch_6c
        :pswitch_54
        :pswitch_38
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist setTestBrailleDisplayData_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2250
    return-void
.end method
