.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x5

.field static final greylist-max-o TRANSACTION_connect:I = 0x3

.field static final greylist-max-o TRANSACTION_connectDevice:I = 0x4

.field static final blacklist TRANSACTION_createDefaultRequest:I = 0x17

.field static final greylist-max-o TRANSACTION_getCameraCharacteristics:I = 0xa

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getCameraVendorTagCache:I = 0xc

.field static final greylist-max-o TRANSACTION_getCameraVendorTagDescriptor:I = 0xb

.field static final blacklist TRANSACTION_getConcurrentCameraIds:I = 0x6

.field static final greylist-max-o TRANSACTION_getLegacyParameters:I = 0xd

.field static final greylist-max-o TRANSACTION_getNumberOfCameras:I = 0x1

.field static final blacklist TRANSACTION_getSessionCharacteristics:I = 0x19

.field static final blacklist TRANSACTION_getTorchStrengthLevel:I = 0x12

.field static final blacklist TRANSACTION_injectCamera:I = 0xf

.field static final blacklist TRANSACTION_injectSessionParams:I = 0x8

.field static final blacklist TRANSACTION_isConcurrentSessionConfigurationSupported:I = 0x7

.field static final blacklist TRANSACTION_isHiddenPhysicalCamera:I = 0xe

.field static final blacklist TRANSACTION_isSessionConfigurationWithParametersSupported:I = 0x18

.field static final blacklist TRANSACTION_notifyDeviceStateChange:I = 0x15

.field static final blacklist TRANSACTION_notifyDisplayConfigurationChange:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySystemEvent:I = 0x13

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x9

.field static final blacklist TRANSACTION_reportExtensionSessionStats:I = 0x16

.field static final greylist-max-o TRANSACTION_setTorchMode:I = 0x10

.field static final blacklist TRANSACTION_turnOnTorchWithStrengthLevel:I = 0x11


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 367
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 368
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 376
    if-nez p0, :cond_4

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 379
    :cond_4
    const-string v0, "android.hardware.ICameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 380
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_14

    .line 381
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraService;

    return-object v1

    .line 383
    :cond_14
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 392
    packed-switch p0, :pswitch_data_5e

    .line 496
    const/4 v0, 0x0

    return-object v0

    .line 492
    :pswitch_5
    const-string v0, "getSessionCharacteristics"

    return-object v0

    .line 488
    :pswitch_8
    const-string/jumbo v0, "isSessionConfigurationWithParametersSupported"

    return-object v0

    .line 484
    :pswitch_c
    const-string v0, "createDefaultRequest"

    return-object v0

    .line 480
    :pswitch_f
    const-string/jumbo v0, "reportExtensionSessionStats"

    return-object v0

    .line 476
    :pswitch_13
    const-string/jumbo v0, "notifyDeviceStateChange"

    return-object v0

    .line 472
    :pswitch_17
    const-string/jumbo v0, "notifyDisplayConfigurationChange"

    return-object v0

    .line 468
    :pswitch_1b
    const-string/jumbo v0, "notifySystemEvent"

    return-object v0

    .line 464
    :pswitch_1f
    const-string/jumbo v0, "getTorchStrengthLevel"

    return-object v0

    .line 460
    :pswitch_23
    const-string/jumbo v0, "turnOnTorchWithStrengthLevel"

    return-object v0

    .line 456
    :pswitch_27
    const-string/jumbo v0, "setTorchMode"

    return-object v0

    .line 452
    :pswitch_2b
    const-string/jumbo v0, "injectCamera"

    return-object v0

    .line 448
    :pswitch_2f
    const-string/jumbo v0, "isHiddenPhysicalCamera"

    return-object v0

    .line 444
    :pswitch_33
    const-string v0, "getLegacyParameters"

    return-object v0

    .line 440
    :pswitch_36
    const-string v0, "getCameraVendorTagCache"

    return-object v0

    .line 436
    :pswitch_39
    const-string v0, "getCameraVendorTagDescriptor"

    return-object v0

    .line 432
    :pswitch_3c
    const-string v0, "getCameraCharacteristics"

    return-object v0

    .line 428
    :pswitch_3f
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 424
    :pswitch_43
    const-string/jumbo v0, "injectSessionParams"

    return-object v0

    .line 420
    :pswitch_47
    const-string/jumbo v0, "isConcurrentSessionConfigurationSupported"

    return-object v0

    .line 416
    :pswitch_4b
    const-string v0, "getConcurrentCameraIds"

    return-object v0

    .line 412
    :pswitch_4e
    const-string v0, "addListener"

    return-object v0

    .line 408
    :pswitch_51
    const-string v0, "connectDevice"

    return-object v0

    .line 404
    :pswitch_54
    const-string v0, "connect"

    return-object v0

    .line 400
    :pswitch_57
    const-string v0, "getCameraInfo"

    return-object v0

    .line 396
    :pswitch_5a
    const-string v0, "getNumberOfCameras"

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 387
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1613
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 503
    invoke-static {p1}, Landroid/hardware/ICameraService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.hardware.ICameraService"

    .line 508
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_13

    const v0, 0xffffff

    if-gt v9, v0, :cond_13

    .line 509
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    :cond_13
    const v0, 0x5f4e5446

    if-ne v9, v0, :cond_1c

    .line 512
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    return v13

    .line 515
    :cond_1c
    packed-switch v9, :pswitch_data_2f0

    .line 851
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 832
    :pswitch_24
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 836
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 838
    .local v3, "_arg2":I
    sget-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 840
    .local v4, "_arg3":Landroid/hardware/camera2/params/SessionConfiguration;
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/AttributionSourceState;

    .line 842
    .local v5, "_arg4":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 843
    .local v6, "_arg5":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/ICameraService$Stub;->getSessionCharacteristics(Ljava/lang/String;IILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 845
    .local v7, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {v11, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 847
    goto/16 :goto_2ef

    .line 814
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v5    # "_arg4":Landroid/content/AttributionSourceState;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_56
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 816
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    .restart local v2    # "_arg1":I
    sget-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 820
    .local v3, "_arg2":Landroid/hardware/camera2/params/SessionConfiguration;
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 822
    .local v4, "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 823
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z

    move-result v6

    .line 825
    .local v6, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 827
    goto/16 :goto_2ef

    .line 798
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :pswitch_84
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 802
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 804
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 805
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 807
    .local v5, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 809
    goto/16 :goto_2ef

    .line 788
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_a7
    sget-object v1, Landroid/hardware/CameraExtensionSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/CameraExtensionSessionStats;

    .line 789
    .local v1, "_arg0":Landroid/hardware/CameraExtensionSessionStats;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    goto/16 :goto_2ef

    .line 780
    .end local v1    # "_arg0":Landroid/hardware/CameraExtensionSessionStats;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_be
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 781
    .local v1, "_arg0":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChange(J)V

    .line 783
    goto/16 :goto_2ef

    .line 774
    .end local v1    # "_arg0":J
    :pswitch_ca
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->notifyDisplayConfigurationChange()V

    .line 775
    goto/16 :goto_2ef

    .line 765
    :pswitch_cf
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 767
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 768
    .local v2, "_arg1":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 770
    goto/16 :goto_2ef

    .line 751
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_df
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSourceState;

    .line 755
    .local v2, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 756
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result v4

    .line 758
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    goto/16 :goto_2ef

    .line 734
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_fe
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 736
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 738
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 740
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 742
    .local v4, "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 743
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V

    .line 745
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_2ef

    .line 717
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    :pswitch_122
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 719
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 721
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 723
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 725
    .restart local v4    # "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 726
    .restart local v5    # "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V

    .line 728
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    goto/16 :goto_2ef

    .line 701
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    :pswitch_147
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 703
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraInjectionCallback;

    move-result-object v4

    .line 708
    .local v4, "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v5

    .line 710
    .local v5, "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 712
    goto/16 :goto_2ef

    .line 691
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v5    # "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    :pswitch_16a
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v2

    .line 694
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 696
    goto/16 :goto_2ef

    .line 681
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_17d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 682
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    goto/16 :goto_2ef

    .line 673
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_190
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v1

    .line 674
    .local v1, "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    goto/16 :goto_2ef

    .line 666
    .end local v1    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :pswitch_19c
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v1

    .line 667
    .local v1, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 669
    goto/16 :goto_2ef

    .line 649
    .end local v1    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :pswitch_1a8
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 653
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 655
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 657
    .local v4, "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 658
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    .line 660
    .local v6, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {v11, v6, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 662
    goto/16 :goto_2ef

    .line 640
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_1d0
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 641
    .local v1, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 643
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_2ef

    .line 629
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :pswitch_1e3
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 632
    .local v2, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 634
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_2ef

    .line 613
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_1fa
    sget-object v1, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 615
    .local v1, "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 619
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 620
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z

    move-result v5

    .line 622
    .local v5, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 624
    goto/16 :goto_2ef

    .line 605
    .end local v1    # "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_221
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v1

    .line 606
    .local v1, "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 608
    goto/16 :goto_2ef

    .line 596
    .end local v1    # "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :pswitch_22d
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 597
    .local v1, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v2

    .line 599
    .local v2, "_result":[Landroid/hardware/CameraStatus;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 601
    goto/16 :goto_2ef

    .line 572
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v2    # "_result":[Landroid/hardware/CameraStatus;
    :pswitch_244
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    .line 574
    .local v1, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 578
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 580
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 582
    .local v5, "_arg4":I
    sget-object v6, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 584
    .local v6, "_arg5":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 586
    .local v7, "_arg6":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 587
    .local v8, "_arg7":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IIILandroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v14

    .line 589
    .local v14, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 591
    goto :goto_2ef

    .line 550
    .end local v1    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Z
    .end local v14    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :pswitch_27b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v1

    .line 552
    .local v1, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 558
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 560
    .local v5, "_arg4":Z
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 562
    .restart local v6    # "_arg5":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 563
    .restart local v7    # "_arg6":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;IIIZLandroid/content/AttributionSourceState;I)Landroid/hardware/ICamera;

    move-result-object v8

    .line 565
    .local v8, "_result":Landroid/hardware/ICamera;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 567
    goto :goto_2ef

    .line 534
    .end local v1    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/hardware/ICamera;
    :pswitch_2af
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 540
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 541
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(IILandroid/content/AttributionSourceState;I)Landroid/hardware/CameraInfo;

    move-result-object v5

    .line 543
    .local v5, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 545
    goto :goto_2ef

    .line 520
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/hardware/CameraInfo;
    :pswitch_2d1
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 522
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSourceState;

    .line 524
    .local v2, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 525
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(ILandroid/content/AttributionSourceState;I)I

    move-result v4

    .line 527
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    nop

    .line 854
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :goto_2ef
    return v13

    :pswitch_data_2f0
    .packed-switch 0x1
        :pswitch_2d1
        :pswitch_2af
        :pswitch_27b
        :pswitch_244
        :pswitch_22d
        :pswitch_221
        :pswitch_1fa
        :pswitch_1e3
        :pswitch_1d0
        :pswitch_1a8
        :pswitch_19c
        :pswitch_190
        :pswitch_17d
        :pswitch_16a
        :pswitch_147
        :pswitch_122
        :pswitch_fe
        :pswitch_df
        :pswitch_cf
        :pswitch_ca
        :pswitch_be
        :pswitch_a7
        :pswitch_84
        :pswitch_56
        :pswitch_24
    .end packed-switch
.end method
