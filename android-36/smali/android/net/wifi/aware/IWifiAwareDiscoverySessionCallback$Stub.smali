.class public abstract Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareDiscoverySessionCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

.field static final blacklist TRANSACTION_onBootstrappingVerificationConfirmed:I = 0x12

.field static final greylist-max-o TRANSACTION_onMatch:I = 0x9

.field static final blacklist TRANSACTION_onMatchExpired:I = 0xe

.field static final greylist-max-o TRANSACTION_onMatchWithDistance:I = 0xa

.field static final greylist-max-o TRANSACTION_onMessageReceived:I = 0xd

.field static final greylist-max-o TRANSACTION_onMessageSendFail:I = 0xc

.field static final greylist-max-o TRANSACTION_onMessageSendSuccess:I = 0xb

.field static final blacklist TRANSACTION_onPairingSetupConfirmed:I = 0x10

.field static final blacklist TRANSACTION_onPairingSetupRequestReceived:I = 0xf

.field static final blacklist TRANSACTION_onPairingVerificationConfirmed:I = 0x11

.field static final blacklist TRANSACTION_onRangingResultsReceived:I = 0x13

.field static final greylist-max-o TRANSACTION_onSessionConfigFail:I = 0x3

.field static final greylist-max-o TRANSACTION_onSessionConfigSuccess:I = 0x2

.field static final blacklist TRANSACTION_onSessionResumeFail:I = 0x8

.field static final blacklist TRANSACTION_onSessionResumeSucceeded:I = 0x7

.field static final greylist-max-o TRANSACTION_onSessionStarted:I = 0x1

.field static final blacklist TRANSACTION_onSessionSuspendFail:I = 0x6

.field static final blacklist TRANSACTION_onSessionSuspendSucceeded:I = 0x5

.field static final greylist-max-o TRANSACTION_onSessionTerminated:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_4
    const-string v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    if-eqz v1, :cond_14

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    return-object v1

    .line 104
    :cond_14
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_3e

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 189
    :pswitch_5
    const-string v0, "onRangingResultsReceived"

    return-object v0

    .line 185
    :pswitch_8
    const-string v0, "onBootstrappingVerificationConfirmed"

    return-object v0

    .line 181
    :pswitch_b
    const-string v0, "onPairingVerificationConfirmed"

    return-object v0

    .line 177
    :pswitch_e
    const-string v0, "onPairingSetupConfirmed"

    return-object v0

    .line 173
    :pswitch_11
    const-string v0, "onPairingSetupRequestReceived"

    return-object v0

    .line 169
    :pswitch_14
    const-string v0, "onMatchExpired"

    return-object v0

    .line 165
    :pswitch_17
    const-string v0, "onMessageReceived"

    return-object v0

    .line 161
    :pswitch_1a
    const-string v0, "onMessageSendFail"

    return-object v0

    .line 157
    :pswitch_1d
    const-string v0, "onMessageSendSuccess"

    return-object v0

    .line 153
    :pswitch_20
    const-string v0, "onMatchWithDistance"

    return-object v0

    .line 149
    :pswitch_23
    const-string v0, "onMatch"

    return-object v0

    .line 145
    :pswitch_26
    const-string v0, "onSessionResumeFail"

    return-object v0

    .line 141
    :pswitch_29
    const-string v0, "onSessionResumeSucceeded"

    return-object v0

    .line 137
    :pswitch_2c
    const-string v0, "onSessionSuspendFail"

    return-object v0

    .line 133
    :pswitch_2f
    const-string v0, "onSessionSuspendSucceeded"

    return-object v0

    .line 129
    :pswitch_32
    const-string v0, "onSessionTerminated"

    return-object v0

    .line 125
    :pswitch_35
    const-string v0, "onSessionConfigFail"

    return-object v0

    .line 121
    :pswitch_38
    const-string v0, "onSessionConfigSuccess"

    return-object v0

    .line 117
    :pswitch_3b
    const-string v0, "onSessionStarted"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
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

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 685
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 200
    invoke-static {p1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 204
    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    .line 205
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_11

    const v1, 0xffffff

    if-gt v10, v1, :cond_11

    .line 206
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    :cond_11
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 209
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return v13

    .line 212
    :cond_1c
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_132

    .line 391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 385
    :pswitch_26
    sget-object v1, Landroid/net/wifi/rtt/RangingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 386
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onRangingResultsReceived(Ljava/util/List;)V

    .line 387
    goto/16 :goto_131

    .line 374
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    :pswitch_31
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 378
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 379
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onBootstrappingVerificationConfirmed(IZI)V

    .line 380
    goto/16 :goto_131

    .line 363
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_42
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 367
    .restart local v2    # "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onPairingVerificationConfirmed(IZLjava/lang/String;)V

    .line 369
    goto/16 :goto_131

    .line 352
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_53
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 356
    .restart local v2    # "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onPairingSetupConfirmed(IZLjava/lang/String;)V

    .line 358
    goto/16 :goto_131

    .line 343
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_64
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onPairingSetupRequestReceived(II)V

    .line 347
    goto/16 :goto_131

    .line 336
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_71
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatchExpired(I)V

    .line 338
    goto/16 :goto_131

    .line 327
    .end local v1    # "_arg0":I
    :pswitch_7a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 330
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageReceived(I[B)V

    .line 331
    goto/16 :goto_131

    .line 318
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_87
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendFail(II)V

    .line 322
    goto/16 :goto_131

    .line 311
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_94
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendSuccess(I)V

    .line 313
    goto/16 :goto_131

    .line 288
    .end local v1    # "_arg0":I
    :pswitch_9d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 292
    .local v2, "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 294
    .local v3, "_arg2":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 298
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 300
    .local v6, "_arg5":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "_arg6":Ljava/lang/String;
    sget-object v8, Landroid/net/wifi/aware/AwarePairingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 304
    .local v8, "_arg7":Landroid/net/wifi/aware/AwarePairingConfig;
    sget-object v9, Landroid/net/wifi/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/wifi/OuiKeyedData;

    .line 305
    .local v9, "_arg8":[Landroid/net/wifi/OuiKeyedData;
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatchWithDistance(I[B[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    .line 306
    goto :goto_131

    .line 267
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Landroid/net/wifi/aware/AwarePairingConfig;
    .end local v9    # "_arg8":[Landroid/net/wifi/OuiKeyedData;
    :pswitch_ce
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 271
    .restart local v2    # "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 273
    .restart local v3    # "_arg2":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 277
    .local v5, "_arg4":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/net/wifi/aware/AwarePairingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/aware/AwarePairingConfig;

    .line 281
    .local v7, "_arg6":Landroid/net/wifi/aware/AwarePairingConfig;
    sget-object v0, Landroid/net/wifi/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/net/wifi/OuiKeyedData;

    .line 282
    .local v8, "_arg7":[Landroid/net/wifi/OuiKeyedData;
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatch(I[B[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V

    .line 283
    goto :goto_131

    .line 260
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/net/wifi/aware/AwarePairingConfig;
    .end local v8    # "_arg7":[Landroid/net/wifi/OuiKeyedData;
    :pswitch_fd
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionResumeFail(I)V

    .line 262
    goto :goto_131

    .line 254
    .end local v1    # "_arg0":I
    :pswitch_105
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionResumeSucceeded()V

    .line 255
    goto :goto_131

    .line 248
    :pswitch_109
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionSuspendFail(I)V

    .line 250
    goto :goto_131

    .line 242
    .end local v1    # "_arg0":I
    :pswitch_111
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionSuspendSucceeded()V

    .line 243
    goto :goto_131

    .line 236
    :pswitch_115
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionTerminated(I)V

    .line 238
    goto :goto_131

    .line 229
    .end local v1    # "_arg0":I
    :pswitch_11d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigFail(I)V

    .line 231
    goto :goto_131

    .line 223
    .end local v1    # "_arg0":I
    :pswitch_125
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigSuccess()V

    .line 224
    goto :goto_131

    .line 217
    :pswitch_129
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionStarted(I)V

    .line 219
    nop

    .line 394
    .end local v1    # "_arg0":I
    :goto_131
    return v13

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_129
        :pswitch_125
        :pswitch_11d
        :pswitch_115
        :pswitch_111
        :pswitch_109
        :pswitch_105
        :pswitch_fd
        :pswitch_ce
        :pswitch_9d
        :pswitch_94
        :pswitch_87
        :pswitch_7a
        :pswitch_71
        :pswitch_64
        :pswitch_53
        :pswitch_42
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method
