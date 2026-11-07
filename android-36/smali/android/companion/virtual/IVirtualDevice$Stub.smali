.class public abstract Landroid/companion/virtual/IVirtualDevice$Stub;
.super Landroid/os/Binder;
.source "IVirtualDevice.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addActivityPolicyExemption:I = 0xc

.field static final blacklist TRANSACTION_canCreateMirrorDisplays:I = 0x7

.field static final blacklist TRANSACTION_close:I = 0xa

.field static final blacklist TRANSACTION_createVirtualDisplay:I = 0x11

.field static final blacklist TRANSACTION_createVirtualDpad:I = 0x12

.field static final blacklist TRANSACTION_createVirtualKeyboard:I = 0x13

.field static final blacklist TRANSACTION_createVirtualMouse:I = 0x14

.field static final blacklist TRANSACTION_createVirtualNavigationTouchpad:I = 0x16

.field static final blacklist TRANSACTION_createVirtualRotaryEncoder:I = 0x18

.field static final blacklist TRANSACTION_createVirtualStylus:I = 0x17

.field static final blacklist TRANSACTION_createVirtualTouchscreen:I = 0x15

.field static final blacklist TRANSACTION_getAssociationId:I = 0x1

.field static final blacklist TRANSACTION_getCursorPosition:I = 0x28

.field static final blacklist TRANSACTION_getDeviceId:I = 0x2

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0x5

.field static final blacklist TRANSACTION_getDisplayIds:I = 0x4

.field static final blacklist TRANSACTION_getInputDeviceId:I = 0x1a

.field static final blacklist TRANSACTION_getPersistentDeviceId:I = 0x3

.field static final blacklist TRANSACTION_getVirtualCameraId:I = 0x2f

.field static final blacklist TRANSACTION_getVirtualSensorList:I = 0x24

.field static final blacklist TRANSACTION_goToSleep:I = 0x8

.field static final blacklist TRANSACTION_hasCustomAudioInputSupport:I = 0x6

.field static final blacklist TRANSACTION_launchPendingIntent:I = 0x27

.field static final blacklist TRANSACTION_onAudioSessionEnded:I = 0x10

.field static final blacklist TRANSACTION_onAudioSessionStarting:I = 0xf

.field static final blacklist TRANSACTION_registerIntentInterceptor:I = 0x2b

.field static final blacklist TRANSACTION_registerVirtualCamera:I = 0x2d

.field static final blacklist TRANSACTION_removeActivityPolicyExemption:I = 0xd

.field static final blacklist TRANSACTION_sendButtonEvent:I = 0x1d

.field static final blacklist TRANSACTION_sendDpadKeyEvent:I = 0x1b

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x1c

.field static final blacklist TRANSACTION_sendRelativeEvent:I = 0x1e

.field static final blacklist TRANSACTION_sendRotaryEncoderScrollEvent:I = 0x23

.field static final blacklist TRANSACTION_sendScrollEvent:I = 0x1f

.field static final blacklist TRANSACTION_sendSensorAdditionalInfo:I = 0x26

.field static final blacklist TRANSACTION_sendSensorEvent:I = 0x25

.field static final blacklist TRANSACTION_sendStylusButtonEvent:I = 0x22

.field static final blacklist TRANSACTION_sendStylusMotionEvent:I = 0x21

.field static final blacklist TRANSACTION_sendTouchEvent:I = 0x20

.field static final blacklist TRANSACTION_setDevicePolicy:I = 0xb

.field static final blacklist TRANSACTION_setDevicePolicyForDisplay:I = 0xe

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x2a

.field static final blacklist TRANSACTION_setListeners:I = 0x30

.field static final blacklist TRANSACTION_setShowPointerIcon:I = 0x29

.field static final blacklist TRANSACTION_unregisterInputDevice:I = 0x19

.field static final blacklist TRANSACTION_unregisterIntentInterceptor:I = 0x2c

.field static final blacklist TRANSACTION_unregisterVirtualCamera:I = 0x2e

.field static final blacklist TRANSACTION_wakeUp:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 276
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 277
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 285
    if-nez p0, :cond_4

    .line 286
    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_4
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 289
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_14

    .line 290
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    return-object v1

    .line 292
    :cond_14
    new-instance v1, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 301
    packed-switch p0, :pswitch_data_b4

    .line 497
    const/4 v0, 0x0

    return-object v0

    .line 493
    :pswitch_5
    const-string/jumbo v0, "setListeners"

    return-object v0

    .line 489
    :pswitch_9
    const-string/jumbo v0, "getVirtualCameraId"

    return-object v0

    .line 485
    :pswitch_d
    const-string/jumbo v0, "unregisterVirtualCamera"

    return-object v0

    .line 481
    :pswitch_11
    const-string/jumbo v0, "registerVirtualCamera"

    return-object v0

    .line 477
    :pswitch_15
    const-string/jumbo v0, "unregisterIntentInterceptor"

    return-object v0

    .line 473
    :pswitch_19
    const-string/jumbo v0, "registerIntentInterceptor"

    return-object v0

    .line 469
    :pswitch_1d
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 465
    :pswitch_21
    const-string/jumbo v0, "setShowPointerIcon"

    return-object v0

    .line 461
    :pswitch_25
    const-string v0, "getCursorPosition"

    return-object v0

    .line 457
    :pswitch_28
    const-string/jumbo v0, "launchPendingIntent"

    return-object v0

    .line 453
    :pswitch_2c
    const-string/jumbo v0, "sendSensorAdditionalInfo"

    return-object v0

    .line 449
    :pswitch_30
    const-string/jumbo v0, "sendSensorEvent"

    return-object v0

    .line 445
    :pswitch_34
    const-string/jumbo v0, "getVirtualSensorList"

    return-object v0

    .line 441
    :pswitch_38
    const-string/jumbo v0, "sendRotaryEncoderScrollEvent"

    return-object v0

    .line 437
    :pswitch_3c
    const-string/jumbo v0, "sendStylusButtonEvent"

    return-object v0

    .line 433
    :pswitch_40
    const-string/jumbo v0, "sendStylusMotionEvent"

    return-object v0

    .line 429
    :pswitch_44
    const-string/jumbo v0, "sendTouchEvent"

    return-object v0

    .line 425
    :pswitch_48
    const-string/jumbo v0, "sendScrollEvent"

    return-object v0

    .line 421
    :pswitch_4c
    const-string/jumbo v0, "sendRelativeEvent"

    return-object v0

    .line 417
    :pswitch_50
    const-string/jumbo v0, "sendButtonEvent"

    return-object v0

    .line 413
    :pswitch_54
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 409
    :pswitch_58
    const-string/jumbo v0, "sendDpadKeyEvent"

    return-object v0

    .line 405
    :pswitch_5c
    const-string v0, "getInputDeviceId"

    return-object v0

    .line 401
    :pswitch_5f
    const-string/jumbo v0, "unregisterInputDevice"

    return-object v0

    .line 397
    :pswitch_63
    const-string v0, "createVirtualRotaryEncoder"

    return-object v0

    .line 393
    :pswitch_66
    const-string v0, "createVirtualStylus"

    return-object v0

    .line 389
    :pswitch_69
    const-string v0, "createVirtualNavigationTouchpad"

    return-object v0

    .line 385
    :pswitch_6c
    const-string v0, "createVirtualTouchscreen"

    return-object v0

    .line 381
    :pswitch_6f
    const-string v0, "createVirtualMouse"

    return-object v0

    .line 377
    :pswitch_72
    const-string v0, "createVirtualKeyboard"

    return-object v0

    .line 373
    :pswitch_75
    const-string v0, "createVirtualDpad"

    return-object v0

    .line 369
    :pswitch_78
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 365
    :pswitch_7b
    const-string/jumbo v0, "onAudioSessionEnded"

    return-object v0

    .line 361
    :pswitch_7f
    const-string/jumbo v0, "onAudioSessionStarting"

    return-object v0

    .line 357
    :pswitch_83
    const-string/jumbo v0, "setDevicePolicyForDisplay"

    return-object v0

    .line 353
    :pswitch_87
    const-string/jumbo v0, "removeActivityPolicyExemption"

    return-object v0

    .line 349
    :pswitch_8b
    const-string v0, "addActivityPolicyExemption"

    return-object v0

    .line 345
    :pswitch_8e
    const-string/jumbo v0, "setDevicePolicy"

    return-object v0

    .line 341
    :pswitch_92
    const-string v0, "close"

    return-object v0

    .line 337
    :pswitch_95
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 333
    :pswitch_99
    const-string/jumbo v0, "goToSleep"

    return-object v0

    .line 329
    :pswitch_9d
    const-string v0, "canCreateMirrorDisplays"

    return-object v0

    .line 325
    :pswitch_a0
    const-string/jumbo v0, "hasCustomAudioInputSupport"

    return-object v0

    .line 321
    :pswitch_a4
    const-string v0, "getDevicePolicy"

    return-object v0

    .line 317
    :pswitch_a7
    const-string v0, "getDisplayIds"

    return-object v0

    .line 313
    :pswitch_aa
    const-string v0, "getPersistentDeviceId"

    return-object v0

    .line 309
    :pswitch_ad
    const-string v0, "getDeviceId"

    return-object v0

    .line 305
    :pswitch_b0
    const-string v0, "getAssociationId"

    return-object v0

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
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
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 296
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1956
    const/16 v0, 0x2f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 504
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const-string v0, "android.companion.virtual.IVirtualDevice"

    .line 509
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 510
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 513
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    return v1

    .line 516
    :cond_16
    packed-switch p1, :pswitch_data_3f0

    .line 1000
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 990
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v2

    .line 992
    .local v2, "_arg0":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-result-object v3

    .line 993
    .local v3, "_arg1":Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    goto/16 :goto_3ee

    .line 980
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .end local v3    # "_arg1":Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    :pswitch_39
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 981
    .local v2, "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    goto/16 :goto_3ee

    .line 971
    .end local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_50
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 972
    .restart local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    goto/16 :goto_3ee

    .line 962
    .end local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :pswitch_63
    sget-object v2, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 963
    .restart local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    goto/16 :goto_3ee

    .line 953
    .end local v2    # "_arg0":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v2

    .line 954
    .local v2, "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_3ee

    .line 942
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object v2

    .line 944
    .restart local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 945
    .local v3, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    goto/16 :goto_3ee

    .line 931
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
    .end local v3    # "_arg1":Landroid/content/IntentFilter;
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 934
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDisplayImePolicy(II)V

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    goto/16 :goto_3ee

    .line 922
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 923
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon(Z)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_3ee

    .line 912
    .end local v2    # "_arg0":Z
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 913
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v3

    .line 915
    .local v3, "_result":Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 917
    goto/16 :goto_3ee

    .line 899
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/graphics/PointF;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    .local v2, "_arg0":I
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 903
    .local v3, "_arg1":Landroid/app/PendingIntent;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 904
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    goto/16 :goto_3ee

    .line 887
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 889
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;

    .line 890
    .local v3, "_arg1":Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    move-result v4

    .line 892
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 894
    goto/16 :goto_3ee

    .line 875
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
    .end local v4    # "_result":Z
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 877
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/companion/virtual/sensor/VirtualSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 878
    .local v3, "_arg1":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result v4

    .line 880
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 882
    goto/16 :goto_3ee

    .line 867
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    .end local v4    # "_result":Z
    :pswitch_12e
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualSensorList()Ljava/util/List;

    move-result-object v2

    .line 868
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensor;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 870
    goto/16 :goto_3ee

    .line 856
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensor;>;"
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 858
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;

    .line 859
    .local v3, "_arg1":Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result v4

    .line 861
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 863
    goto/16 :goto_3ee

    .line 844
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;
    .end local v4    # "_result":Z
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 846
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualStylusButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualStylusButtonEvent;

    .line 847
    .local v3, "_arg1":Landroid/hardware/input/VirtualStylusButtonEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result v4

    .line 849
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 851
    goto/16 :goto_3ee

    .line 832
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualStylusButtonEvent;
    .end local v4    # "_result":Z
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 834
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualStylusMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualStylusMotionEvent;

    .line 835
    .local v3, "_arg1":Landroid/hardware/input/VirtualStylusMotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result v4

    .line 837
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 839
    goto/16 :goto_3ee

    .line 820
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualStylusMotionEvent;
    .end local v4    # "_result":Z
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 822
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualTouchEvent;

    .line 823
    .local v3, "_arg1":Landroid/hardware/input/VirtualTouchEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v4

    .line 825
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 827
    goto/16 :goto_3ee

    .line 808
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualTouchEvent;
    .end local v4    # "_result":Z
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 810
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualMouseScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 811
    .local v3, "_arg1":Landroid/hardware/input/VirtualMouseScrollEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v4

    .line 813
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 815
    goto/16 :goto_3ee

    .line 796
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualMouseScrollEvent;
    .end local v4    # "_result":Z
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 798
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 799
    .local v3, "_arg1":Landroid/hardware/input/VirtualMouseRelativeEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v4

    .line 801
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 803
    goto/16 :goto_3ee

    .line 784
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualMouseRelativeEvent;
    .end local v4    # "_result":Z
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 786
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 787
    .local v3, "_arg1":Landroid/hardware/input/VirtualMouseButtonEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v4

    .line 789
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 791
    goto/16 :goto_3ee

    .line 772
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualMouseButtonEvent;
    .end local v4    # "_result":Z
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 774
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualKeyEvent;

    .line 775
    .local v3, "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v4

    .line 777
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 779
    goto/16 :goto_3ee

    .line 760
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    .end local v4    # "_result":Z
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 762
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/VirtualKeyEvent;

    .line 763
    .restart local v3    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v4

    .line 765
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 767
    goto/16 :goto_3ee

    .line 750
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    .end local v4    # "_result":Z
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 751
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v3

    .line 753
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    goto/16 :goto_3ee

    .line 741
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 742
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterInputDevice(Landroid/os/IBinder;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_3ee

    .line 730
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_24f
    sget-object v2, Landroid/hardware/input/VirtualRotaryEncoderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualRotaryEncoderConfig;

    .line 732
    .local v2, "_arg0":Landroid/hardware/input/VirtualRotaryEncoderConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 733
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    goto/16 :goto_3ee

    .line 719
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualRotaryEncoderConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_266
    sget-object v2, Landroid/hardware/input/VirtualStylusConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualStylusConfig;

    .line 721
    .local v2, "_arg0":Landroid/hardware/input/VirtualStylusConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 722
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    goto/16 :goto_3ee

    .line 708
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualStylusConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_27d
    sget-object v2, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    .line 710
    .local v2, "_arg0":Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 711
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    goto/16 :goto_3ee

    .line 697
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_294
    sget-object v2, Landroid/hardware/input/VirtualTouchscreenConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualTouchscreenConfig;

    .line 699
    .local v2, "_arg0":Landroid/hardware/input/VirtualTouchscreenConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 700
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_3ee

    .line 686
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualTouchscreenConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_2ab
    sget-object v2, Landroid/hardware/input/VirtualMouseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualMouseConfig;

    .line 688
    .local v2, "_arg0":Landroid/hardware/input/VirtualMouseConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 689
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_3ee

    .line 675
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualMouseConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_2c2
    sget-object v2, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualKeyboardConfig;

    .line 677
    .local v2, "_arg0":Landroid/hardware/input/VirtualKeyboardConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 678
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_3ee

    .line 664
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualKeyboardConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_2d9
    sget-object v2, Landroid/hardware/input/VirtualDpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/VirtualDpadConfig;

    .line 666
    .local v2, "_arg0":Landroid/hardware/input/VirtualDpadConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 667
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_3ee

    .line 652
    .end local v2    # "_arg0":Landroid/hardware/input/VirtualDpadConfig;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_2f0
    sget-object v2, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig;

    .line 654
    .local v2, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v3

    .line 655
    .local v3, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I

    move-result v4

    .line 657
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    goto/16 :goto_3ee

    .line 645
    .end local v2    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v3    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v4    # "_result":I
    :pswitch_30f
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded()V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_3ee

    .line 633
    :pswitch_317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioRoutingCallback;

    move-result-object v3

    .line 637
    .local v3, "_arg1":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    move-result-object v4

    .line 638
    .local v4, "_arg2":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_3ee

    .line 620
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .end local v4    # "_arg2":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :pswitch_336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 622
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 624
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 625
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicyForDisplay(III)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    goto/16 :goto_3ee

    .line 611
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_34d
    sget-object v2, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/ActivityPolicyExemption;

    .line 612
    .local v2, "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_3ee

    .line 602
    .end local v2    # "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    :pswitch_360
    sget-object v2, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/ActivityPolicyExemption;

    .line 603
    .restart local v2    # "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_3ee

    .line 591
    .end local v2    # "_arg0":Landroid/companion/virtual/ActivityPolicyExemption;
    :pswitch_373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 594
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicy(II)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto :goto_3ee

    .line 584
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_385
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close()V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto :goto_3ee

    .line 578
    :pswitch_38c
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->wakeUp()V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    goto :goto_3ee

    .line 572
    :pswitch_393
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->goToSleep()V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    goto :goto_3ee

    .line 565
    :pswitch_39a
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->canCreateMirrorDisplays()Z

    move-result v2

    .line 566
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    goto :goto_3ee

    .line 558
    .end local v2    # "_result":Z
    :pswitch_3a5
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->hasCustomAudioInputSupport()Z

    move-result v2

    .line 559
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 561
    goto :goto_3ee

    .line 549
    .end local v2    # "_result":Z
    :pswitch_3b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDevicePolicy(I)I

    move-result v3

    .line 552
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    goto :goto_3ee

    .line 541
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3c2
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDisplayIds()[I

    move-result-object v2

    .line 542
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 544
    goto :goto_3ee

    .line 534
    .end local v2    # "_result":[I
    :pswitch_3cd
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    goto :goto_3ee

    .line 527
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3d8
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDeviceId()I

    move-result v2

    .line 528
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    goto :goto_3ee

    .line 520
    .end local v2    # "_result":I
    :pswitch_3e3
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getAssociationId()I

    move-result v2

    .line 521
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    nop

    .line 1003
    .end local v2    # "_result":I
    :goto_3ee
    return v1

    nop

    :pswitch_data_3f0
    .packed-switch 0x1
        :pswitch_3e3
        :pswitch_3d8
        :pswitch_3cd
        :pswitch_3c2
        :pswitch_3b0
        :pswitch_3a5
        :pswitch_39a
        :pswitch_393
        :pswitch_38c
        :pswitch_385
        :pswitch_373
        :pswitch_360
        :pswitch_34d
        :pswitch_336
        :pswitch_317
        :pswitch_30f
        :pswitch_2f0
        :pswitch_2d9
        :pswitch_2c2
        :pswitch_2ab
        :pswitch_294
        :pswitch_27d
        :pswitch_266
        :pswitch_24f
        :pswitch_240
        :pswitch_22d
        :pswitch_212
        :pswitch_1f7
        :pswitch_1dc
        :pswitch_1c1
        :pswitch_1a6
        :pswitch_18b
        :pswitch_170
        :pswitch_155
        :pswitch_13a
        :pswitch_12e
        :pswitch_113
        :pswitch_f8
        :pswitch_d9
        :pswitch_c6
        :pswitch_b7
        :pswitch_a4
        :pswitch_89
        :pswitch_76
        :pswitch_63
        :pswitch_50
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
