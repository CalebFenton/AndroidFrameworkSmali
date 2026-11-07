.class public abstract Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeSms:I = 0x1a

.field static final blacklist TRANSACTION_acknowledgeSmsReport:I = 0x1c

.field static final blacklist TRANSACTION_acknowledgeSmsWithPdu:I = 0x1b

.field static final blacklist TRANSACTION_addCapabilityCallback:I = 0xd

.field static final blacklist TRANSACTION_changeCapabilitiesConfiguration:I = 0xf

.field static final blacklist TRANSACTION_changeOfferedRtpHeaderExtensionTypes:I = 0x4

.field static final blacklist TRANSACTION_createCallProfile:I = 0x3

.field static final blacklist TRANSACTION_createCallSession:I = 0x5

.field static final blacklist TRANSACTION_getEcbmInterface:I = 0x8

.field static final blacklist TRANSACTION_getFeatureState:I = 0x2

.field static final blacklist TRANSACTION_getMultiEndpointInterface:I = 0xa

.field static final blacklist TRANSACTION_getSmsFormat:I = 0x1d

.field static final blacklist TRANSACTION_getUtInterface:I = 0x7

.field static final blacklist TRANSACTION_notifySrvccCanceled:I = 0x14

.field static final blacklist TRANSACTION_notifySrvccCompleted:I = 0x12

.field static final blacklist TRANSACTION_notifySrvccFailed:I = 0x13

.field static final blacklist TRANSACTION_notifySrvccStarted:I = 0x11

.field static final blacklist TRANSACTION_onMemoryAvailable:I = 0x19

.field static final blacklist TRANSACTION_onSmsReady:I = 0x1e

.field static final blacklist TRANSACTION_queryCapabilityConfiguration:I = 0x10

.field static final blacklist TRANSACTION_queryCapabilityStatus:I = 0xb

.field static final blacklist TRANSACTION_queryMediaQualityStatus:I = 0x16

.field static final blacklist TRANSACTION_removeCapabilityCallback:I = 0xe

.field static final blacklist TRANSACTION_sendSms:I = 0x18

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setMediaQualityThreshold:I = 0x15

.field static final blacklist TRANSACTION_setSmsListener:I = 0x17

.field static final blacklist TRANSACTION_setTerminalBasedCallWaitingStatus:I = 0xc

.field static final blacklist TRANSACTION_setUiTtyMode:I = 0x9

.field static final blacklist TRANSACTION_shouldProcessCall:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 132
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 140
    if-nez p0, :cond_4

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 144
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    if-eqz v1, :cond_14

    .line 145
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    .line 147
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 156
    packed-switch p0, :pswitch_data_60

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 276
    :pswitch_5
    const-string v0, "onSmsReady"

    return-object v0

    .line 272
    :pswitch_8
    const-string v0, "getSmsFormat"

    return-object v0

    .line 268
    :pswitch_b
    const-string v0, "acknowledgeSmsReport"

    return-object v0

    .line 264
    :pswitch_e
    const-string v0, "acknowledgeSmsWithPdu"

    return-object v0

    .line 260
    :pswitch_11
    const-string v0, "acknowledgeSms"

    return-object v0

    .line 256
    :pswitch_14
    const-string v0, "onMemoryAvailable"

    return-object v0

    .line 252
    :pswitch_17
    const-string v0, "sendSms"

    return-object v0

    .line 248
    :pswitch_1a
    const-string v0, "setSmsListener"

    return-object v0

    .line 244
    :pswitch_1d
    const-string v0, "queryMediaQualityStatus"

    return-object v0

    .line 240
    :pswitch_20
    const-string v0, "setMediaQualityThreshold"

    return-object v0

    .line 236
    :pswitch_23
    const-string v0, "notifySrvccCanceled"

    return-object v0

    .line 232
    :pswitch_26
    const-string v0, "notifySrvccFailed"

    return-object v0

    .line 228
    :pswitch_29
    const-string v0, "notifySrvccCompleted"

    return-object v0

    .line 224
    :pswitch_2c
    const-string v0, "notifySrvccStarted"

    return-object v0

    .line 220
    :pswitch_2f
    const-string v0, "queryCapabilityConfiguration"

    return-object v0

    .line 216
    :pswitch_32
    const-string v0, "changeCapabilitiesConfiguration"

    return-object v0

    .line 212
    :pswitch_35
    const-string v0, "removeCapabilityCallback"

    return-object v0

    .line 208
    :pswitch_38
    const-string v0, "addCapabilityCallback"

    return-object v0

    .line 204
    :pswitch_3b
    const-string v0, "setTerminalBasedCallWaitingStatus"

    return-object v0

    .line 200
    :pswitch_3e
    const-string v0, "queryCapabilityStatus"

    return-object v0

    .line 196
    :pswitch_41
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 192
    :pswitch_44
    const-string v0, "setUiTtyMode"

    return-object v0

    .line 188
    :pswitch_47
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 184
    :pswitch_4a
    const-string v0, "getUtInterface"

    return-object v0

    .line 180
    :pswitch_4d
    const-string v0, "shouldProcessCall"

    return-object v0

    .line 176
    :pswitch_50
    const-string v0, "createCallSession"

    return-object v0

    .line 172
    :pswitch_53
    const-string v0, "changeOfferedRtpHeaderExtensionTypes"

    return-object v0

    .line 168
    :pswitch_56
    const-string v0, "createCallProfile"

    return-object v0

    .line 164
    :pswitch_59
    const-string v0, "getFeatureState"

    return-object v0

    .line 160
    :pswitch_5c
    const-string v0, "setListener"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
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

    .line 151
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1072
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 287
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    .line 292
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 293
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 296
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    return v1

    .line 299
    :cond_16
    packed-switch p1, :pswitch_data_226

    .line 574
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 569
    :pswitch_1f
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->onSmsReady()V

    .line 570
    move-object v3, p0

    goto/16 :goto_224

    .line 562
    :pswitch_25
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    move-object v3, p0

    goto/16 :goto_224

    .line 551
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 555
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 556
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsReport(III)V

    .line 558
    move-object v3, p0

    goto/16 :goto_224

    .line 537
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 541
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 543
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 544
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsWithPdu(III[B)V

    .line 546
    move-object v3, p0

    goto/16 :goto_224

    .line 525
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 527
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 530
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSms(III)V

    .line 532
    move-object v3, p0

    goto/16 :goto_224

    .line 517
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->onMemoryAvailable(I)V

    .line 520
    move-object v3, p0

    goto/16 :goto_224

    .line 499
    .end local v2    # "_arg0":I
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 501
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 503
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 509
    .local v8, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 510
    .local v9, "_arg5":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 512
    goto/16 :goto_224

    .line 490
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":[B
    :pswitch_a3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v2

    .line 491
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_224

    .line 480
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_b7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object v4

    .line 483
    .local v4, "_result":Landroid/telephony/ims/MediaQualityStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 485
    goto/16 :goto_224

    .line 470
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/telephony/ims/MediaQualityStatus;
    :pswitch_cb
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/telephony/ims/MediaThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/MediaThreshold;

    .line 473
    .local v4, "_arg1":Landroid/telephony/ims/MediaThreshold;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2, v4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setMediaQualityThreshold(ILandroid/telephony/ims/MediaThreshold;)V

    .line 475
    goto/16 :goto_224

    .line 464
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/ims/MediaThreshold;
    :pswitch_e0
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccCanceled()V

    .line 465
    goto/16 :goto_224

    .line 459
    :pswitch_e6
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccFailed()V

    .line 460
    goto/16 :goto_224

    .line 454
    :pswitch_ec
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccCompleted()V

    .line 455
    goto/16 :goto_224

    .line 447
    :pswitch_f2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ISrvccStartedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISrvccStartedCallback;

    move-result-object v2

    .line 448
    .local v2, "_arg0":Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    .line 450
    goto/16 :goto_224

    .line 435
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    :pswitch_103
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 439
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v5

    .line 440
    .local v5, "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2, v4, v5}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 442
    goto/16 :goto_224

    .line 425
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_11c
    move-object v3, p0

    sget-object v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 427
    .local v2, "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    .line 428
    .local v4, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v2, v4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 430
    goto/16 :goto_224

    .line 417
    .end local v2    # "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v4    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_135
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 418
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 420
    goto/16 :goto_224

    .line 409
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_146
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 410
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 412
    goto/16 :goto_224

    .line 400
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_157
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 401
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setTerminalBasedCallWaitingStatus(Z)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto/16 :goto_224

    .line 392
    .end local v2    # "_arg0":Z
    :pswitch_167
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityStatus()I

    move-result v2

    .line 393
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_224

    .line 385
    .end local v2    # "_result":I
    :pswitch_174
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    .line 386
    .local v2, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 388
    goto/16 :goto_224

    .line 375
    .end local v2    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_181
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .local v2, "_arg0":I
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 378
    .local v4, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setUiTtyMode(ILandroid/os/Message;)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_224

    .line 367
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/Message;
    :pswitch_199
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    .line 368
    .local v2, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 370
    goto/16 :goto_224

    .line 360
    .end local v2    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_1a6
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 361
    .local v2, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 363
    goto/16 :goto_224

    .line 351
    .end local v2    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_1b3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->shouldProcessCall([Ljava/lang/String;)I

    move-result v4

    .line 354
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto :goto_224

    .line 341
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1c6
    move-object v3, p0

    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 342
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 344
    .local v4, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 346
    goto :goto_224

    .line 332
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_1dd
    move-object v3, p0

    sget-object v2, Landroid/telephony/ims/RtpHeaderExtensionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 333
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto :goto_224

    .line 320
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    :pswitch_1ee
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 323
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2, v4}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 325
    .local v5, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 327
    goto :goto_224

    .line 312
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_205
    move-object v3, p0

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getFeatureState()I

    move-result v2

    .line 313
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto :goto_224

    .line 304
    .end local v2    # "_result":I
    :pswitch_211
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v2

    .line 305
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsMmTelListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    nop

    .line 577
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :goto_224
    return v1

    nop

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_211
        :pswitch_205
        :pswitch_1ee
        :pswitch_1dd
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_1a6
        :pswitch_199
        :pswitch_181
        :pswitch_174
        :pswitch_167
        :pswitch_157
        :pswitch_146
        :pswitch_135
        :pswitch_11c
        :pswitch_103
        :pswitch_f2
        :pswitch_ec
        :pswitch_e6
        :pswitch_e0
        :pswitch_cb
        :pswitch_b7
        :pswitch_a3
        :pswitch_82
        :pswitch_75
        :pswitch_60
        :pswitch_47
        :pswitch_32
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method
