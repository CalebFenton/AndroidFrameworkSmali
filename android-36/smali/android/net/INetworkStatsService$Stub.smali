.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final blacklist TRANSACTION_advisePersistThreshold:I = 0x10

.field static final blacklist TRANSACTION_clearTrafficStatsRateLimitCaches:I = 0x12

.field static final greylist-max-o TRANSACTION_forceUpdate:I = 0x8

.field static final greylist-max-o TRANSACTION_getDataLayerSnapshotForUid:I = 0x3

.field static final greylist-max-o TRANSACTION_getIfaceStats:I = 0xc

.field static final greylist-max-o TRANSACTION_getMobileIfaces:I = 0x5

.field static final blacklist TRANSACTION_getRateLimitCacheConfig:I = 0x13

.field static final greylist-max-o TRANSACTION_getTotalStats:I = 0xd

.field static final greylist-max-o TRANSACTION_getUidStats:I = 0xb

.field static final blacklist TRANSACTION_getUidStatsForTransport:I = 0x4

.field static final greylist-max-o TRANSACTION_incrementOperationCount:I = 0x6

.field static final blacklist TRANSACTION_noteUidForeground:I = 0xf

.field static final blacklist TRANSACTION_notifyNetworkStatus:I = 0x7

.field static final greylist-max-o TRANSACTION_openSession:I = 0x1

.field static final greylist-max-o TRANSACTION_openSessionForUsageStats:I = 0x2

.field static final blacklist TRANSACTION_registerNetworkStatsProvider:I = 0xe

.field static final greylist-max-o TRANSACTION_registerUsageCallback:I = 0x9

.field static final blacklist TRANSACTION_setStatsProviderWarningAndLimitAsync:I = 0x11

.field static final greylist-max-o TRANSACTION_unregisterUsageRequest:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.net.INetworkStatsService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_4
    const-string v0, "android.net.INetworkStatsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_14

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkStatsService;

    return-object v1

    .line 139
    :cond_14
    new-instance v1, Landroid/net/INetworkStatsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 148
    packed-switch p0, :pswitch_data_3e

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 224
    :pswitch_5
    const-string v0, "getRateLimitCacheConfig"

    return-object v0

    .line 220
    :pswitch_8
    const-string v0, "clearTrafficStatsRateLimitCaches"

    return-object v0

    .line 216
    :pswitch_b
    const-string v0, "setStatsProviderWarningAndLimitAsync"

    return-object v0

    .line 212
    :pswitch_e
    const-string v0, "advisePersistThreshold"

    return-object v0

    .line 208
    :pswitch_11
    const-string v0, "noteUidForeground"

    return-object v0

    .line 204
    :pswitch_14
    const-string v0, "registerNetworkStatsProvider"

    return-object v0

    .line 200
    :pswitch_17
    const-string v0, "getTotalStats"

    return-object v0

    .line 196
    :pswitch_1a
    const-string v0, "getIfaceStats"

    return-object v0

    .line 192
    :pswitch_1d
    const-string v0, "getUidStats"

    return-object v0

    .line 188
    :pswitch_20
    const-string v0, "unregisterUsageRequest"

    return-object v0

    .line 184
    :pswitch_23
    const-string v0, "registerUsageCallback"

    return-object v0

    .line 180
    :pswitch_26
    const-string v0, "forceUpdate"

    return-object v0

    .line 176
    :pswitch_29
    const-string v0, "notifyNetworkStatus"

    return-object v0

    .line 172
    :pswitch_2c
    const-string v0, "incrementOperationCount"

    return-object v0

    .line 168
    :pswitch_2f
    const-string v0, "getMobileIfaces"

    return-object v0

    .line 164
    :pswitch_32
    const-string v0, "getUidStatsForTransport"

    return-object v0

    .line 160
    :pswitch_35
    const-string v0, "getDataLayerSnapshotForUid"

    return-object v0

    .line 156
    :pswitch_38
    const-string v0, "openSessionForUsageStats"

    return-object v0

    .line 152
    :pswitch_3b
    const-string v0, "openSession"

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

    .line 143
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 836
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 235
    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 239
    const-string v0, "android.net.INetworkStatsService"

    .line 240
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 241
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v1

    .line 247
    :cond_16
    packed-switch p1, :pswitch_data_198

    .line 439
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 432
    :pswitch_1f
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->getRateLimitCacheConfig()Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;

    move-result-object v2

    .line 433
    .local v2, "_result":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 435
    move-object v3, p0

    goto/16 :goto_197

    .line 426
    .end local v2    # "_result":Landroid/net/connectivity/android/net/netstats/TrafficStatsRateLimitCacheConfig;
    :pswitch_2c
    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->clearTrafficStatsRateLimitCaches()V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    move-object v3, p0

    goto/16 :goto_197

    .line 414
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 418
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 419
    .local v7, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/net/INetworkStatsService$Stub;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_197

    .line 405
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":J
    :pswitch_4d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 406
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v4, v5}, Landroid/net/INetworkStatsService$Stub;->advisePersistThreshold(J)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    goto/16 :goto_197

    .line 394
    .end local v4    # "_arg0":J
    :pswitch_5d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 397
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2, v4}, Landroid/net/INetworkStatsService$Stub;->noteUidForeground(IZ)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_197

    .line 382
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_71
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/netstats/provider/INetworkStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/netstats/provider/INetworkStatsProvider;

    move-result-object v4

    .line 385
    .local v4, "_arg1":Landroid/net/netstats/provider/INetworkStatsProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2, v4}, Landroid/net/INetworkStatsService$Stub;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;)Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v5

    .line 387
    .local v5, "_result":Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 389
    goto/16 :goto_197

    .line 374
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/netstats/provider/INetworkStatsProvider;
    .end local v5    # "_result":Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    :pswitch_8d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->getTotalStats()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v2

    .line 375
    .local v2, "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 377
    goto/16 :goto_197

    .line 365
    .end local v2    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :pswitch_9a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->getIfaceStats(Ljava/lang/String;)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v4

    .line 368
    .local v4, "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 370
    goto/16 :goto_197

    .line 355
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :pswitch_ae
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->getUidStats(I)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v4

    .line 358
    .restart local v4    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    goto/16 :goto_197

    .line 346
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/net/connectivity/android/net/netstats/StatsResult;
    :pswitch_c2
    move-object v3, p0

    sget-object v2, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DataUsageRequest;

    .line 347
    .local v2, "_arg0":Landroid/net/DataUsageRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_197

    .line 332
    .end local v2    # "_arg0":Landroid/net/DataUsageRequest;
    :pswitch_d6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/DataUsageRequest;

    .line 336
    .local v4, "_arg1":Landroid/net/DataUsageRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/connectivity/android/net/netstats/IUsageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/netstats/IUsageCallback;

    move-result-object v5

    .line 337
    .local v5, "_arg2":Landroid/net/connectivity/android/net/netstats/IUsageCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v4, v5}, Landroid/net/INetworkStatsService$Stub;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/net/connectivity/android/net/netstats/IUsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v6

    .line 339
    .local v6, "_result":Landroid/net/DataUsageRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 341
    goto/16 :goto_197

    .line 325
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/DataUsageRequest;
    .end local v5    # "_arg2":Landroid/net/connectivity/android/net/netstats/IUsageCallback;
    .end local v6    # "_result":Landroid/net/DataUsageRequest;
    :pswitch_fa
    move-object v3, p0

    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_197

    .line 311
    :pswitch_103
    move-object v3, p0

    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    .line 313
    .local v2, "_arg0":[Landroid/net/Network;
    sget-object v4, Landroid/net/NetworkStateSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/NetworkStateSnapshot;

    .line 315
    .local v4, "_arg1":[Landroid/net/NetworkStateSnapshot;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "_arg2":Ljava/lang/String;
    sget-object v6, Landroid/net/UnderlyingNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/UnderlyingNetworkInfo;

    .line 318
    .local v6, "_arg3":[Landroid/net/UnderlyingNetworkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/net/INetworkStatsService$Stub;->notifyNetworkStatus([Landroid/net/Network;[Landroid/net/NetworkStateSnapshot;Ljava/lang/String;[Landroid/net/UnderlyingNetworkInfo;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_197

    .line 298
    .end local v2    # "_arg0":[Landroid/net/Network;
    .end local v4    # "_arg1":[Landroid/net/NetworkStateSnapshot;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":[Landroid/net/UnderlyingNetworkInfo;
    :pswitch_12b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 303
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v4, v5}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto :goto_197

    .line 290
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_142
    move-object v3, p0

    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 293
    goto :goto_197

    .line 281
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_14e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->getUidStatsForTransport(I)Landroid/net/NetworkStats;

    move-result-object v4

    .line 284
    .local v4, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 286
    goto :goto_197

    .line 271
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkStats;
    :pswitch_161
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v4

    .line 274
    .restart local v4    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 276
    goto :goto_197

    .line 259
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkStats;
    :pswitch_174
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2, v4}, Landroid/net/INetworkStatsService$Stub;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v5

    .line 264
    .local v5, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 266
    goto :goto_197

    .line 251
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/INetworkStatsSession;
    :pswitch_18b
    move-object v3, p0

    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    .line 252
    .local v2, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 254
    nop

    .line 442
    .end local v2    # "_result":Landroid/net/INetworkStatsSession;
    :goto_197
    return v1

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_18b
        :pswitch_174
        :pswitch_161
        :pswitch_14e
        :pswitch_142
        :pswitch_12b
        :pswitch_103
        :pswitch_fa
        :pswitch_d6
        :pswitch_c2
        :pswitch_ae
        :pswitch_9a
        :pswitch_8d
        :pswitch_71
        :pswitch_5d
        :pswitch_4d
        :pswitch_35
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method
