.class public abstract Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareManager"

.field static final greylist-max-o TRANSACTION_connect:I = 0xe

.field static final greylist-max-o TRANSACTION_disconnect:I = 0xf

.field static final blacklist TRANSACTION_enableInstantCommunicationMode:I = 0x5

.field static final blacklist TRANSACTION_getAvailableAwareResources:I = 0x3

.field static final greylist-max-o TRANSACTION_getCharacteristics:I = 0x2

.field static final blacklist TRANSACTION_getMasterPreference:I = 0x11

.field static final blacklist TRANSACTION_getPairedDevices:I = 0xb

.field static final blacklist TRANSACTION_initiateBootStrappingSetupRequest:I = 0x1a

.field static final blacklist TRANSACTION_initiateNanPairingSetupRequest:I = 0x18

.field static final blacklist TRANSACTION_isDeviceAttached:I = 0x4

.field static final blacklist TRANSACTION_isInstantCommunicationModeEnabled:I = 0x6

.field static final blacklist TRANSACTION_isOpportunisticModeEnabled:I = 0xd

.field static final blacklist TRANSACTION_isSetChannelOnDataPathSupported:I = 0x7

.field static final greylist-max-o TRANSACTION_isUsageEnabled:I = 0x1

.field static final greylist-max-o TRANSACTION_publish:I = 0x12

.field static final blacklist TRANSACTION_removePairedDevice:I = 0xa

.field static final greylist-max-o TRANSACTION_requestMacAddresses:I = 0x1d

.field static final blacklist TRANSACTION_resetPairedDevices:I = 0x9

.field static final blacklist TRANSACTION_responseNanPairingSetupRequest:I = 0x19

.field static final blacklist TRANSACTION_resume:I = 0x1c

.field static final greylist-max-o TRANSACTION_sendMessage:I = 0x16

.field static final blacklist TRANSACTION_setAwareParams:I = 0x8

.field static final blacklist TRANSACTION_setMasterPreference:I = 0x10

.field static final blacklist TRANSACTION_setOpportunisticModeEnabled:I = 0xc

.field static final greylist-max-o TRANSACTION_subscribe:I = 0x13

.field static final blacklist TRANSACTION_suspend:I = 0x1b

.field static final greylist-max-o TRANSACTION_terminateSession:I = 0x17

.field static final greylist-max-o TRANSACTION_updatePublish:I = 0x14

.field static final greylist-max-o TRANSACTION_updateSubscribe:I = 0x15


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_4
    const-string v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareManager;

    if-eqz v1, :cond_14

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/IWifiAwareManager;

    return-object v1

    .line 144
    :cond_14
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 153
    packed-switch p0, :pswitch_data_5c

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 269
    :pswitch_5
    const-string v0, "requestMacAddresses"

    return-object v0

    .line 265
    :pswitch_8
    const-string v0, "resume"

    return-object v0

    .line 261
    :pswitch_b
    const-string v0, "suspend"

    return-object v0

    .line 257
    :pswitch_e
    const-string v0, "initiateBootStrappingSetupRequest"

    return-object v0

    .line 253
    :pswitch_11
    const-string v0, "responseNanPairingSetupRequest"

    return-object v0

    .line 249
    :pswitch_14
    const-string v0, "initiateNanPairingSetupRequest"

    return-object v0

    .line 245
    :pswitch_17
    const-string v0, "terminateSession"

    return-object v0

    .line 241
    :pswitch_1a
    const-string v0, "sendMessage"

    return-object v0

    .line 237
    :pswitch_1d
    const-string v0, "updateSubscribe"

    return-object v0

    .line 233
    :pswitch_20
    const-string v0, "updatePublish"

    return-object v0

    .line 229
    :pswitch_23
    const-string v0, "subscribe"

    return-object v0

    .line 225
    :pswitch_26
    const-string v0, "publish"

    return-object v0

    .line 221
    :pswitch_29
    const-string v0, "getMasterPreference"

    return-object v0

    .line 217
    :pswitch_2c
    const-string v0, "setMasterPreference"

    return-object v0

    .line 213
    :pswitch_2f
    const-string v0, "disconnect"

    return-object v0

    .line 209
    :pswitch_32
    const-string v0, "connect"

    return-object v0

    .line 205
    :pswitch_35
    const-string v0, "isOpportunisticModeEnabled"

    return-object v0

    .line 201
    :pswitch_38
    const-string v0, "setOpportunisticModeEnabled"

    return-object v0

    .line 197
    :pswitch_3b
    const-string v0, "getPairedDevices"

    return-object v0

    .line 193
    :pswitch_3e
    const-string v0, "removePairedDevice"

    return-object v0

    .line 189
    :pswitch_41
    const-string v0, "resetPairedDevices"

    return-object v0

    .line 185
    :pswitch_44
    const-string v0, "setAwareParams"

    return-object v0

    .line 181
    :pswitch_47
    const-string v0, "isSetChannelOnDataPathSupported"

    return-object v0

    .line 177
    :pswitch_4a
    const-string v0, "isInstantCommunicationModeEnabled"

    return-object v0

    .line 173
    :pswitch_4d
    const-string v0, "enableInstantCommunicationMode"

    return-object v0

    .line 169
    :pswitch_50
    const-string v0, "isDeviceAttached"

    return-object v0

    .line 165
    :pswitch_53
    const-string v0, "getAvailableAwareResources"

    return-object v0

    .line 161
    :pswitch_56
    const-string v0, "getCharacteristics"

    return-object v0

    .line 157
    :pswitch_59
    const-string v0, "isUsageEnabled"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
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

    .line 148
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1196
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 280
    invoke-static {p1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    move-object v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.net.wifi.aware.IWifiAwareManager"

    .line 285
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt p1, v12, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 286
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 289
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    return v12

    .line 292
    :cond_19
    packed-switch p1, :pswitch_data_29c

    .line 634
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 623
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 627
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    move-result-object v3

    .line 628
    .local v3, "_arg2":Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->requestMacAddresses(I[ILandroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    .line 629
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    goto/16 :goto_29b

    .line 613
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 615
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->resume(II)V

    .line 617
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_29b

    .line 603
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 606
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->suspend(II)V

    .line 607
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    goto/16 :goto_29b

    .line 589
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 591
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 595
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 596
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->initiateBootStrappingSetupRequest(IIII)V

    .line 597
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_29b

    .line 567
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 569
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 575
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 581
    .local v7, "_arg6":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 582
    .local v8, "_arg7":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->responseNanPairingSetupRequest(IIIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 583
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_29b

    .line 549
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":I
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 555
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 560
    .local v6, "_arg5":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->initiateNanPairingSetupRequest(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 561
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto/16 :goto_29b

    .line 539
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->terminateSession(II)V

    .line 543
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_29b

    .line 521
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 523
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 527
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 529
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 531
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 532
    .restart local v6    # "_arg5":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->sendMessage(III[BII)V

    .line 533
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto/16 :goto_29b

    .line 509
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/SubscribeConfig;

    .line 514
    .local v3, "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    .line 515
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    goto/16 :goto_29b

    .line 497
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/PublishConfig;

    .line 502
    .local v3, "_arg2":Landroid/net/wifi/aware/PublishConfig;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    .line 503
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_29b

    .line 479
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 485
    .local v3, "_arg2":I
    sget-object v4, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/aware/SubscribeConfig;

    .line 487
    .local v4, "_arg3":Landroid/net/wifi/aware/SubscribeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v5

    .line 489
    .local v5, "_arg4":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 490
    .local v6, "_arg5":Landroid/os/Bundle;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->subscribe(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_29b

    .line 461
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/net/wifi/aware/SubscribeConfig;
    .end local v5    # "_arg4":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 463
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 465
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 467
    .restart local v3    # "_arg2":I
    sget-object v0, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/aware/PublishConfig;

    .line 469
    .local v4, "_arg3":Landroid/net/wifi/aware/PublishConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v5

    .line 471
    .restart local v5    # "_arg4":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 472
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->publish(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;Landroid/os/Bundle;)V

    .line 473
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    goto/16 :goto_29b

    .line 449
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/net/wifi/aware/PublishConfig;
    .end local v5    # "_arg4":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 453
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v3

    .line 454
    .local v3, "_arg2":Landroid/net/wifi/IIntegerListener;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getMasterPreference(ILandroid/os/IBinder;Landroid/net/wifi/IIntegerListener;)V

    .line 455
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_29b

    .line 437
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/net/wifi/IIntegerListener;
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 442
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->setMasterPreference(ILandroid/os/IBinder;I)V

    .line 443
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_29b

    .line 427
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 430
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->disconnect(ILandroid/os/IBinder;)V

    .line 431
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_29b

    .line 405
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 407
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;

    move-result-object v4

    .line 413
    .local v4, "_arg3":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    sget-object v5, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/aware/ConfigRequest;

    .line 415
    .local v5, "_arg4":Landroid/net/wifi/aware/ConfigRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 417
    .local v6, "_arg5":Z
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 419
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 420
    .local v8, "_arg7":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->connect(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZLandroid/os/Bundle;Z)V

    .line 421
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_29b

    .line 395
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v5    # "_arg4":Landroid/net/wifi/aware/ConfigRequest;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Landroid/os/Bundle;
    .end local v8    # "_arg7":Z
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v2

    .line 398
    .local v2, "_arg1":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isOpportunisticModeEnabled(Ljava/lang/String;Landroid/net/wifi/IBooleanListener;)V

    .line 399
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_29b

    .line 385
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/wifi/IBooleanListener;
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 388
    .local v2, "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->setOpportunisticModeEnabled(Ljava/lang/String;Z)V

    .line 389
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_29b

    .line 375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_20d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IListListener;

    move-result-object v2

    .line 378
    .local v2, "_arg1":Landroid/net/wifi/IListListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getPairedDevices(Ljava/lang/String;Landroid/net/wifi/IListListener;)V

    .line 379
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_29b

    .line 365
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/wifi/IListListener;
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->removePairedDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto :goto_29b

    .line 357
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 358
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->resetPairedDevices(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto :goto_29b

    .line 349
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_23b
    sget-object v1, Landroid/net/wifi/aware/AwareParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/AwareParams;

    .line 350
    .local v1, "_arg0":Landroid/net/wifi/aware/AwareParams;
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->setAwareParams(Landroid/net/wifi/aware/AwareParams;)V

    .line 351
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto :goto_29b

    .line 341
    .end local v1    # "_arg0":Landroid/net/wifi/aware/AwareParams;
    :pswitch_24a
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isSetChannelOnDataPathSupported()Z

    move-result v1

    .line 342
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    goto :goto_29b

    .line 334
    .end local v1    # "_result":Z
    :pswitch_255
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isInstantCommunicationModeEnabled()Z

    move-result v1

    .line 335
    .restart local v1    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    goto :goto_29b

    .line 325
    .end local v1    # "_result":Z
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 328
    .local v2, "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->enableInstantCommunicationMode(Ljava/lang/String;Z)V

    .line 329
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto :goto_29b

    .line 317
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_26f
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isDeviceAttached()Z

    move-result v1

    .line 318
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto :goto_29b

    .line 310
    .end local v1    # "_result":Z
    :pswitch_27a
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getAvailableAwareResources()Landroid/net/wifi/aware/AwareResources;

    move-result-object v1

    .line 311
    .local v1, "_result":Landroid/net/wifi/aware/AwareResources;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 313
    goto :goto_29b

    .line 303
    .end local v1    # "_result":Landroid/net/wifi/aware/AwareResources;
    :pswitch_285
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    .line 304
    .local v1, "_result":Landroid/net/wifi/aware/Characteristics;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 306
    goto :goto_29b

    .line 296
    .end local v1    # "_result":Landroid/net/wifi/aware/Characteristics;
    :pswitch_290
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isUsageEnabled()Z

    move-result v1

    .line 297
    .local v1, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    nop

    .line 637
    .end local v1    # "_result":Z
    :goto_29b
    return v12

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_290
        :pswitch_285
        :pswitch_27a
        :pswitch_26f
        :pswitch_260
        :pswitch_255
        :pswitch_24a
        :pswitch_23b
        :pswitch_230
        :pswitch_221
        :pswitch_20d
        :pswitch_1fd
        :pswitch_1e9
        :pswitch_1b4
        :pswitch_1a4
        :pswitch_190
        :pswitch_178
        :pswitch_149
        :pswitch_11c
        :pswitch_104
        :pswitch_ec
        :pswitch_cb
        :pswitch_bb
        :pswitch_9a
        :pswitch_71
        :pswitch_59
        :pswitch_49
        :pswitch_39
        :pswitch_21
    .end packed-switch
.end method
