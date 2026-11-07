.class public abstract Landroid/os/IStatsManagerService$Stub;
.super Landroid/os/Binder;
.source "IStatsManagerService.java"

# interfaces
.implements Landroid/os/IStatsManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addConfiguration:I = 0xa

.field static final blacklist TRANSACTION_getData:I = 0x9

.field static final blacklist TRANSACTION_getDataFd:I = 0x11

.field static final blacklist TRANSACTION_getMetadata:I = 0x8

.field static final blacklist TRANSACTION_getRegisteredExperimentIds:I = 0x7

.field static final blacklist TRANSACTION_querySql:I = 0xe

.field static final blacklist TRANSACTION_registerPullAtomCallback:I = 0xc

.field static final blacklist TRANSACTION_removeActiveConfigsChangedOperation:I = 0x4

.field static final blacklist TRANSACTION_removeConfiguration:I = 0xb

.field static final blacklist TRANSACTION_removeDataFetchOperation:I = 0x2

.field static final blacklist TRANSACTION_removeRestrictedMetricsChangedOperation:I = 0x10

.field static final blacklist TRANSACTION_setActiveConfigsChangedOperation:I = 0x3

.field static final blacklist TRANSACTION_setBroadcastSubscriber:I = 0x5

.field static final blacklist TRANSACTION_setDataFetchOperation:I = 0x1

.field static final blacklist TRANSACTION_setRestrictedMetricsChangedOperation:I = 0xf

.field static final blacklist TRANSACTION_unregisterPullAtomCallback:I = 0xd

.field static final blacklist TRANSACTION_unsetBroadcastSubscriber:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 189
    const-string v0, "android.os.IStatsManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStatsManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 197
    if-nez p0, :cond_4

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_4
    const-string v0, "android.os.IStatsManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 201
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IStatsManagerService;

    if-eqz v1, :cond_14

    .line 202
    move-object v1, v0

    check-cast v1, Landroid/os/IStatsManagerService;

    return-object v1

    .line 204
    :cond_14
    new-instance v1, Landroid/os/IStatsManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IStatsManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 213
    packed-switch p0, :pswitch_data_38

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 281
    :pswitch_5
    const-string v0, "getDataFd"

    return-object v0

    .line 277
    :pswitch_8
    const-string v0, "removeRestrictedMetricsChangedOperation"

    return-object v0

    .line 273
    :pswitch_b
    const-string v0, "setRestrictedMetricsChangedOperation"

    return-object v0

    .line 269
    :pswitch_e
    const-string v0, "querySql"

    return-object v0

    .line 265
    :pswitch_11
    const-string v0, "unregisterPullAtomCallback"

    return-object v0

    .line 261
    :pswitch_14
    const-string v0, "registerPullAtomCallback"

    return-object v0

    .line 257
    :pswitch_17
    const-string v0, "removeConfiguration"

    return-object v0

    .line 253
    :pswitch_1a
    const-string v0, "addConfiguration"

    return-object v0

    .line 249
    :pswitch_1d
    const-string v0, "getData"

    return-object v0

    .line 245
    :pswitch_20
    const-string v0, "getMetadata"

    return-object v0

    .line 241
    :pswitch_23
    const-string v0, "getRegisteredExperimentIds"

    return-object v0

    .line 237
    :pswitch_26
    const-string v0, "unsetBroadcastSubscriber"

    return-object v0

    .line 233
    :pswitch_29
    const-string v0, "setBroadcastSubscriber"

    return-object v0

    .line 229
    :pswitch_2c
    const-string v0, "removeActiveConfigsChangedOperation"

    return-object v0

    .line 225
    :pswitch_2f
    const-string v0, "setActiveConfigsChangedOperation"

    return-object v0

    .line 221
    :pswitch_32
    const-string v0, "removeDataFetchOperation"

    return-object v0

    .line 217
    :pswitch_35
    const-string v0, "setDataFetchOperation"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
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

    .line 208
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 923
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 292
    invoke-static {p1}, Landroid/os/IStatsManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    move-object v8, p3

    const-string v9, "android.os.IStatsManagerService"

    .line 297
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 298
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 301
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    return v10

    .line 304
    :cond_17
    packed-switch p1, :pswitch_data_178

    .line 497
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 487
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 489
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 492
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsManagerService$Stub;->getDataFd(JLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 493
    goto/16 :goto_176

    .line 477
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 479
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 480
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsManagerService$Stub;->removeRestrictedMetricsChangedOperation(JLjava/lang/String;)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto/16 :goto_176

    .line 464
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_44
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 466
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 468
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsManagerService$Stub;->setRestrictedMetricsChangedOperation(Landroid/app/PendingIntent;JLjava/lang/String;)[J

    move-result-object v5

    .line 470
    .local v5, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 472
    goto/16 :goto_176

    .line 447
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":[J
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 451
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 453
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IStatsQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsQueryCallback;

    move-result-object v4

    .line 455
    .local v4, "_arg3":Landroid/os/IStatsQueryCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 457
    .local v5, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "_arg5":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IStatsManagerService$Stub;->querySql(Ljava/lang/String;I[BLandroid/os/IStatsQueryCallback;JLjava/lang/String;)V

    .line 459
    goto/16 :goto_176

    .line 440
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/os/IStatsQueryCallback;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IStatsManagerService$Stub;->unregisterPullAtomCallback(I)V

    .line 442
    goto/16 :goto_176

    .line 425
    .end local v1    # "_arg0":I
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 427
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 429
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 431
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 433
    .local v6, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPullAtomCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPullAtomCallback;

    move-result-object v7

    .line 434
    .local v7, "_arg4":Landroid/os/IPullAtomCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IStatsManagerService$Stub;->registerPullAtomCallback(IJJ[ILandroid/os/IPullAtomCallback;)V

    .line 435
    goto/16 :goto_176

    .line 415
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":[I
    .end local v7    # "_arg4":Landroid/os/IPullAtomCallback;
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 417
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsManagerService$Stub;->removeConfiguration(JLjava/lang/String;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_176

    .line 403
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 405
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 407
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsManagerService$Stub;->addConfiguration(J[BLjava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_176

    .line 392
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 394
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsManagerService$Stub;->getData(JLjava/lang/String;)[B

    move-result-object v4

    .line 396
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 398
    goto/16 :goto_176

    .line 383
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[B
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IStatsManagerService$Stub;->getMetadata(Ljava/lang/String;)[B

    move-result-object v2

    .line 385
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 387
    goto/16 :goto_176

    .line 375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[B
    :pswitch_f1
    invoke-virtual {p0}, Landroid/os/IStatsManagerService$Stub;->getRegisteredExperimentIds()[J

    move-result-object v1

    .line 376
    .local v1, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 378
    goto/16 :goto_176

    .line 364
    .end local v1    # "_result":[J
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 366
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 368
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "_arg2":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IStatsManagerService$Stub;->unsetBroadcastSubscriber(JJLjava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto :goto_176

    .line 350
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 352
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 354
    .restart local v3    # "_arg1":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    .line 356
    .local v5, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "_arg3":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IStatsManagerService$Stub;->setBroadcastSubscriber(JJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto :goto_176

    .line 342
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    .end local v6    # "_arg3":Ljava/lang/String;
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IStatsManagerService$Stub;->removeActiveConfigsChangedOperation(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_176

    .line 331
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_139
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 333
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IStatsManagerService$Stub;->setActiveConfigsChangedOperation(Landroid/app/PendingIntent;Ljava/lang/String;)[J

    move-result-object v3

    .line 335
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 337
    goto :goto_176

    .line 321
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":[J
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 323
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IStatsManagerService$Stub;->removeDataFetchOperation(JLjava/lang/String;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto :goto_176

    .line 309
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 311
    .restart local v1    # "_arg0":J
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 313
    .local v3, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IStatsManagerService$Stub;->setDataFetchOperation(JLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    nop

    .line 500
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_176
    return v10

    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_15f
        :pswitch_150
        :pswitch_139
        :pswitch_12e
        :pswitch_111
        :pswitch_fd
        :pswitch_f1
        :pswitch_e1
        :pswitch_cd
        :pswitch_b9
        :pswitch_a9
        :pswitch_8b
        :pswitch_82
        :pswitch_60
        :pswitch_44
        :pswitch_34
        :pswitch_1f
    .end packed-switch
.end method
