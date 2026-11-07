.class public abstract Landroid/media/IResourceManagerService$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addResource:I = 0x2

.field static final blacklist TRANSACTION_config:I = 0x1

.field static final blacklist TRANSACTION_getMediaResourceUsageReport:I = 0xf

.field static final blacklist TRANSACTION_markClientForPendingRemoval:I = 0x9

.field static final blacklist TRANSACTION_notifyClientConfigChanged:I = 0xe

.field static final blacklist TRANSACTION_notifyClientCreated:I = 0xb

.field static final blacklist TRANSACTION_notifyClientStarted:I = 0xc

.field static final blacklist TRANSACTION_notifyClientStopped:I = 0xd

.field static final blacklist TRANSACTION_overridePid:I = 0x7

.field static final blacklist TRANSACTION_overrideProcessInfo:I = 0x8

.field static final blacklist TRANSACTION_reclaimResource:I = 0x6

.field static final blacklist TRANSACTION_reclaimResourcesFromClientsPendingRemoval:I = 0xa

.field static final blacklist TRANSACTION_removeClient:I = 0x5

.field static final blacklist TRANSACTION_removeResource:I = 0x4

.field static final blacklist TRANSACTION_updateResource:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 195
    const-string v0, "android.media.IResourceManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IResourceManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 203
    if-nez p0, :cond_4

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_4
    const-string v0, "android.media.IResourceManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 207
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IResourceManagerService;

    if-eqz v1, :cond_14

    .line 208
    move-object v1, v0

    check-cast v1, Landroid/media/IResourceManagerService;

    return-object v1

    .line 210
    :cond_14
    new-instance v1, Landroid/media/IResourceManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IResourceManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 219
    packed-switch p0, :pswitch_data_32

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 279
    :pswitch_5
    const-string v0, "getMediaResourceUsageReport"

    return-object v0

    .line 275
    :pswitch_8
    const-string v0, "notifyClientConfigChanged"

    return-object v0

    .line 271
    :pswitch_b
    const-string v0, "notifyClientStopped"

    return-object v0

    .line 267
    :pswitch_e
    const-string v0, "notifyClientStarted"

    return-object v0

    .line 263
    :pswitch_11
    const-string v0, "notifyClientCreated"

    return-object v0

    .line 259
    :pswitch_14
    const-string v0, "reclaimResourcesFromClientsPendingRemoval"

    return-object v0

    .line 255
    :pswitch_17
    const-string v0, "markClientForPendingRemoval"

    return-object v0

    .line 251
    :pswitch_1a
    const-string v0, "overrideProcessInfo"

    return-object v0

    .line 247
    :pswitch_1d
    const-string v0, "overridePid"

    return-object v0

    .line 243
    :pswitch_20
    const-string v0, "reclaimResource"

    return-object v0

    .line 239
    :pswitch_23
    const-string v0, "removeClient"

    return-object v0

    .line 235
    :pswitch_26
    const-string v0, "removeResource"

    return-object v0

    .line 231
    :pswitch_29
    const-string v0, "updateResource"

    return-object v0

    .line 227
    :pswitch_2c
    const-string v0, "addResource"

    return-object v0

    .line 223
    :pswitch_2f
    const-string v0, "config"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
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

    .line 214
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 860
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 290
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    const-string v0, "android.media.IResourceManagerService"

    .line 295
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 296
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    return v1

    .line 302
    :cond_16
    packed-switch p1, :pswitch_data_18e

    .line 468
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 452
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .local v2, "_arg0_length":I
    const v3, 0xf4240

    if-gt v2, v3, :cond_3b

    .line 455
    if-gez v2, :cond_2b

    .line 456
    const/4 v3, 0x0

    .local v3, "_arg0":[Landroid/media/MediaResourceParcel;
    goto :goto_2d

    .line 458
    .end local v3    # "_arg0":[Landroid/media/MediaResourceParcel;
    :cond_2b
    new-array v3, v2, [Landroid/media/MediaResourceParcel;

    .line 460
    .restart local v3    # "_arg0":[Landroid/media/MediaResourceParcel;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v3}, Landroid/media/IResourceManagerService$Stub;->getMediaResourceUsageReport([Landroid/media/MediaResourceParcel;)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 464
    goto/16 :goto_18d

    .line 454
    .end local v3    # "_arg0":[Landroid/media/MediaResourceParcel;
    :cond_3b
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    .end local v2    # "_arg0_length":I
    :pswitch_54
    sget-object v2, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientConfigParcel;

    .line 444
    .local v2, "_arg0":Landroid/media/ClientConfigParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->notifyClientConfigChanged(Landroid/media/ClientConfigParcel;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    goto/16 :goto_18d

    .line 434
    .end local v2    # "_arg0":Landroid/media/ClientConfigParcel;
    :pswitch_67
    sget-object v2, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientConfigParcel;

    .line 435
    .restart local v2    # "_arg0":Landroid/media/ClientConfigParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->notifyClientStopped(Landroid/media/ClientConfigParcel;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_18d

    .line 425
    .end local v2    # "_arg0":Landroid/media/ClientConfigParcel;
    :pswitch_7a
    sget-object v2, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientConfigParcel;

    .line 426
    .restart local v2    # "_arg0":Landroid/media/ClientConfigParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->notifyClientStarted(Landroid/media/ClientConfigParcel;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_18d

    .line 416
    .end local v2    # "_arg0":Landroid/media/ClientConfigParcel;
    :pswitch_8d
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 417
    .local v2, "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->notifyClientCreated(Landroid/media/ClientInfoParcel;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_18d

    .line 407
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->reclaimResourcesFromClientsPendingRemoval(I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_18d

    .line 398
    .end local v2    # "_arg0":I
    :pswitch_af
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 399
    .local v2, "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->markClientForPendingRemoval(Landroid/media/ClientInfoParcel;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_18d

    .line 383
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v2

    .line 385
    .local v2, "_arg0":Landroid/media/IResourceManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 387
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 389
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 390
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/IResourceManagerService$Stub;->overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    goto/16 :goto_18d

    .line 372
    .end local v2    # "_arg0":Landroid/media/IResourceManagerClient;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3}, Landroid/media/IResourceManagerService$Stub;->overridePid(II)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_18d

    .line 360
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f4
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 362
    .local v2, "_arg0":Landroid/media/ClientInfoParcel;
    sget-object v3, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/MediaResourceParcel;

    .line 363
    .local v3, "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v3}, Landroid/media/IResourceManagerService$Stub;->reclaimResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)Z

    move-result v4

    .line 365
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    goto/16 :goto_18d

    .line 351
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v3    # "_arg1":[Landroid/media/MediaResourceParcel;
    .end local v4    # "_result":Z
    :pswitch_113
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 352
    .restart local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->removeClient(Landroid/media/ClientInfoParcel;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto :goto_18d

    .line 340
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    :pswitch_125
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 342
    .restart local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    sget-object v3, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/MediaResourceParcel;

    .line 343
    .restart local v3    # "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2, v3}, Landroid/media/IResourceManagerService$Stub;->removeResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    goto :goto_18d

    .line 329
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v3    # "_arg1":[Landroid/media/MediaResourceParcel;
    :pswitch_13f
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 331
    .restart local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    sget-object v3, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/MediaResourceParcel;

    .line 332
    .restart local v3    # "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2, v3}, Landroid/media/IResourceManagerService$Stub;->updateResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto :goto_18d

    .line 316
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v3    # "_arg1":[Landroid/media/MediaResourceParcel;
    :pswitch_159
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    .line 318
    .restart local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v3

    .line 320
    .local v3, "_arg1":Landroid/media/IResourceManagerClient;
    sget-object v4, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/MediaResourceParcel;

    .line 321
    .local v4, "_arg2":[Landroid/media/MediaResourceParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IResourceManagerService$Stub;->addResource(Landroid/media/ClientInfoParcel;Landroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto :goto_18d

    .line 307
    .end local v2    # "_arg0":Landroid/media/ClientInfoParcel;
    .end local v3    # "_arg1":Landroid/media/IResourceManagerClient;
    .end local v4    # "_arg2":[Landroid/media/MediaResourceParcel;
    :pswitch_17b
    sget-object v2, Landroid/media/MediaResourcePolicyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaResourcePolicyParcel;

    .line 308
    .local v2, "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Landroid/media/IResourceManagerService$Stub;->config([Landroid/media/MediaResourcePolicyParcel;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    nop

    .line 471
    .end local v2    # "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    :goto_18d
    return v1

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_159
        :pswitch_13f
        :pswitch_125
        :pswitch_113
        :pswitch_f4
        :pswitch_e1
        :pswitch_c2
        :pswitch_af
        :pswitch_a0
        :pswitch_8d
        :pswitch_7a
        :pswitch_67
        :pswitch_54
        :pswitch_1e
    .end packed-switch
.end method
