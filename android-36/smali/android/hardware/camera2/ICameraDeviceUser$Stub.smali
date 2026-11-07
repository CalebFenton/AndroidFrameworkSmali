.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final greylist-max-o TRANSACTION_beginConfigure:I = 0x6

.field static final greylist-max-o TRANSACTION_cancelRequest:I = 0x5

.field static final greylist-max-o TRANSACTION_createDefaultRequest:I = 0xd

.field static final greylist-max-o TRANSACTION_createInputStream:I = 0xb

.field static final greylist-max-o TRANSACTION_createStream:I = 0xa

.field static final greylist-max-o TRANSACTION_deleteStream:I = 0x9

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x1

.field static final greylist-max-o TRANSACTION_endConfigure:I = 0x7

.field static final greylist-max-o TRANSACTION_finalizeOutputConfigurations:I = 0x15

.field static final greylist-max-o TRANSACTION_flush:I = 0x10

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0xe

.field static final blacklist TRANSACTION_getCaptureResultMetadataQueue:I = 0x16

.field static final blacklist TRANSACTION_getGlobalAudioRestriction:I = 0x18

.field static final greylist-max-o TRANSACTION_getInputSurface:I = 0xc

.field static final blacklist TRANSACTION_isPrimaryClient:I = 0x1a

.field static final blacklist TRANSACTION_isSessionConfigurationSupported:I = 0x8

.field static final greylist-max-o TRANSACTION_prepare:I = 0x11

.field static final greylist-max-o TRANSACTION_prepare2:I = 0x13

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0x17

.field static final blacklist TRANSACTION_startStreaming:I = 0x4

.field static final greylist-max-o TRANSACTION_submitRequest:I = 0x2

.field static final greylist-max-o TRANSACTION_submitRequestList:I = 0x3

.field static final blacklist TRANSACTION_switchToOffline:I = 0x19

.field static final greylist-max-o TRANSACTION_tearDown:I = 0x12

.field static final greylist-max-o TRANSACTION_updateOutputConfiguration:I = 0x14

.field static final greylist-max-o TRANSACTION_waitUntilIdle:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 226
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 227
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 235
    if-nez p0, :cond_4

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 238
    :cond_4
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 239
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_14

    .line 240
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v1

    .line 242
    :cond_14
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 251
    packed-switch p0, :pswitch_data_60

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 355
    :pswitch_5
    const-string/jumbo v0, "isPrimaryClient"

    return-object v0

    .line 351
    :pswitch_9
    const-string/jumbo v0, "switchToOffline"

    return-object v0

    .line 347
    :pswitch_d
    const-string v0, "getGlobalAudioRestriction"

    return-object v0

    .line 343
    :pswitch_10
    const-string/jumbo v0, "setCameraAudioRestriction"

    return-object v0

    .line 339
    :pswitch_14
    const-string v0, "getCaptureResultMetadataQueue"

    return-object v0

    .line 335
    :pswitch_17
    const-string v0, "finalizeOutputConfigurations"

    return-object v0

    .line 331
    :pswitch_1a
    const-string/jumbo v0, "updateOutputConfiguration"

    return-object v0

    .line 327
    :pswitch_1e
    const-string/jumbo v0, "prepare2"

    return-object v0

    .line 323
    :pswitch_22
    const-string/jumbo v0, "tearDown"

    return-object v0

    .line 319
    :pswitch_26
    const-string/jumbo v0, "prepare"

    return-object v0

    .line 315
    :pswitch_2a
    const-string v0, "flush"

    return-object v0

    .line 311
    :pswitch_2d
    const-string/jumbo v0, "waitUntilIdle"

    return-object v0

    .line 307
    :pswitch_31
    const-string v0, "getCameraInfo"

    return-object v0

    .line 303
    :pswitch_34
    const-string v0, "createDefaultRequest"

    return-object v0

    .line 299
    :pswitch_37
    const-string v0, "getInputSurface"

    return-object v0

    .line 295
    :pswitch_3a
    const-string v0, "createInputStream"

    return-object v0

    .line 291
    :pswitch_3d
    const-string v0, "createStream"

    return-object v0

    .line 287
    :pswitch_40
    const-string v0, "deleteStream"

    return-object v0

    .line 283
    :pswitch_43
    const-string/jumbo v0, "isSessionConfigurationSupported"

    return-object v0

    .line 279
    :pswitch_47
    const-string v0, "endConfigure"

    return-object v0

    .line 275
    :pswitch_4a
    const-string v0, "beginConfigure"

    return-object v0

    .line 271
    :pswitch_4d
    const-string v0, "cancelRequest"

    return-object v0

    .line 267
    :pswitch_50
    const-string/jumbo v0, "startStreaming"

    return-object v0

    .line 263
    :pswitch_54
    const-string/jumbo v0, "submitRequestList"

    return-object v0

    .line 259
    :pswitch_58
    const-string/jumbo v0, "submitRequest"

    return-object v0

    .line 255
    :pswitch_5c
    const-string v0, "disconnect"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 246
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1227
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 366
    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 370
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    .line 371
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 372
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 375
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    return v1

    .line 378
    :cond_16
    packed-switch p1, :pswitch_data_1f0

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 622
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->isPrimaryClient()Z

    move-result v2

    .line 623
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    goto/16 :goto_1ee

    .line 611
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v2

    .line 613
    .local v2, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 614
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v4

    .line 616
    .local v4, "_result":Landroid/hardware/camera2/ICameraOfflineSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 618
    goto/16 :goto_1ee

    .line 603
    .end local v2    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Landroid/hardware/camera2/ICameraOfflineSession;
    :pswitch_45
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getGlobalAudioRestriction()I

    move-result v2

    .line 604
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    goto/16 :goto_1ee

    .line 595
    .end local v2    # "_result":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setCameraAudioRestriction(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    goto/16 :goto_1ee

    .line 587
    .end local v2    # "_arg0":I
    :pswitch_60
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;

    move-result-object v2

    .line 588
    .local v2, "_result":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 590
    goto/16 :goto_1ee

    .line 577
    .end local v2    # "_result":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 580
    .local v3, "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    goto/16 :goto_1ee

    .line 566
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 569
    .restart local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    goto/16 :goto_1ee

    .line 555
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 558
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_1ee

    .line 546
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_1ee

    .line 537
    .end local v2    # "_arg0":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    goto/16 :goto_1ee

    .line 529
    .end local v2    # "_arg0":I
    :pswitch_cb
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide v2

    .line 530
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    goto/16 :goto_1ee

    .line 523
    .end local v2    # "_result":J
    :pswitch_d7
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_1ee

    .line 516
    :pswitch_df
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 517
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 519
    goto/16 :goto_1ee

    .line 507
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 510
    .local v3, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 512
    goto/16 :goto_1ee

    .line 499
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_fe
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    .line 500
    .local v2, "_result":Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 502
    goto/16 :goto_1ee

    .line 484
    .end local v2    # "_result":Landroid/view/Surface;
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 490
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 491
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(IIIZ)I

    move-result v6

    .line 493
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    goto/16 :goto_1ee

    .line 474
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":I
    :pswitch_129
    sget-object v2, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 475
    .local v2, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v3

    .line 477
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    goto/16 :goto_1ee

    .line 465
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "_result":I
    :pswitch_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_1ee

    .line 455
    .end local v2    # "_arg0":I
    :pswitch_14f
    sget-object v2, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 456
    .local v2, "_arg0":Landroid/hardware/camera2/params/SessionConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v3

    .line 458
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 460
    goto/16 :goto_1ee

    .line 441
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v3    # "_result":Z
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 443
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 445
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 446
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v6

    .line 448
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 450
    goto :goto_1ee

    .line 434
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_arg2":J
    .end local v6    # "_result":[I
    :pswitch_184
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto :goto_1ee

    .line 425
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide v3

    .line 428
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 430
    goto :goto_1ee

    .line 413
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 415
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 416
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 418
    .local v4, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 420
    goto :goto_1ee

    .line 401
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_1b3
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/CaptureRequest;

    .line 403
    .local v2, "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 404
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 406
    .restart local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 408
    goto :goto_1ee

    .line 389
    .end local v2    # "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_1cd
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 391
    .local v2, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 392
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 394
    .restart local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 396
    goto :goto_1ee

    .line 382
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_1e7
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    nop

    .line 632
    :goto_1ee
    return v1

    nop

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_1e7
        :pswitch_1cd
        :pswitch_1b3
        :pswitch_19d
        :pswitch_18b
        :pswitch_184
        :pswitch_166
        :pswitch_14f
        :pswitch_140
        :pswitch_129
        :pswitch_10a
        :pswitch_fe
        :pswitch_eb
        :pswitch_df
        :pswitch_d7
        :pswitch_cb
        :pswitch_bc
        :pswitch_ad
        :pswitch_9a
        :pswitch_83
        :pswitch_6c
        :pswitch_60
        :pswitch_51
        :pswitch_45
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
