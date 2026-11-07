.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelGsiInstall:I = 0x8

.field static final blacklist TRANSACTION_closeInstall:I = 0x13

.field static final blacklist TRANSACTION_closePartition:I = 0x15

.field static final blacklist TRANSACTION_commitGsiChunkFromAshmem:I = 0x4

.field static final blacklist TRANSACTION_commitGsiChunkFromStream:I = 0x1

.field static final blacklist TRANSACTION_createPartition:I = 0x14

.field static final blacklist TRANSACTION_disableGsi:I = 0xc

.field static final blacklist TRANSACTION_dumpDeviceMapperDevices:I = 0x18

.field static final blacklist TRANSACTION_enableGsi:I = 0x5

.field static final blacklist TRANSACTION_enableGsiAsync:I = 0x6

.field static final blacklist TRANSACTION_getActiveDsuSlot:I = 0xf

.field static final blacklist TRANSACTION_getAvbPublicKey:I = 0x19

.field static final blacklist TRANSACTION_getInstallProgress:I = 0x2

.field static final blacklist TRANSACTION_getInstalledDsuSlots:I = 0x11

.field static final blacklist TRANSACTION_getInstalledGsiImageDir:I = 0x10

.field static final blacklist TRANSACTION_isGsiEnabled:I = 0x7

.field static final blacklist TRANSACTION_isGsiInstallInProgress:I = 0x9

.field static final blacklist TRANSACTION_isGsiInstalled:I = 0xd

.field static final blacklist TRANSACTION_isGsiRunning:I = 0xe

.field static final blacklist TRANSACTION_openImageService:I = 0x17

.field static final blacklist TRANSACTION_openInstall:I = 0x12

.field static final blacklist TRANSACTION_removeGsi:I = 0xa

.field static final blacklist TRANSACTION_removeGsiAsync:I = 0xb

.field static final blacklist TRANSACTION_setGsiAshmem:I = 0x3

.field static final blacklist TRANSACTION_suggestScratchSize:I = 0x1a

.field static final blacklist TRANSACTION_zeroPartition:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 257
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IGsiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 265
    if-nez p0, :cond_4

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_4
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 269
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_14

    .line 270
    move-object v1, v0

    check-cast v1, Landroid/gsi/IGsiService;

    return-object v1

    .line 272
    :cond_14
    new-instance v1, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 281
    packed-switch p0, :pswitch_data_5e

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 385
    :pswitch_5
    const-string/jumbo v0, "suggestScratchSize"

    return-object v0

    .line 381
    :pswitch_9
    const-string v0, "getAvbPublicKey"

    return-object v0

    .line 377
    :pswitch_c
    const-string v0, "dumpDeviceMapperDevices"

    return-object v0

    .line 373
    :pswitch_f
    const-string/jumbo v0, "openImageService"

    return-object v0

    .line 369
    :pswitch_13
    const-string/jumbo v0, "zeroPartition"

    return-object v0

    .line 365
    :pswitch_17
    const-string v0, "closePartition"

    return-object v0

    .line 361
    :pswitch_1a
    const-string v0, "createPartition"

    return-object v0

    .line 357
    :pswitch_1d
    const-string v0, "closeInstall"

    return-object v0

    .line 353
    :pswitch_20
    const-string/jumbo v0, "openInstall"

    return-object v0

    .line 349
    :pswitch_24
    const-string v0, "getInstalledDsuSlots"

    return-object v0

    .line 345
    :pswitch_27
    const-string v0, "getInstalledGsiImageDir"

    return-object v0

    .line 341
    :pswitch_2a
    const-string v0, "getActiveDsuSlot"

    return-object v0

    .line 337
    :pswitch_2d
    const-string/jumbo v0, "isGsiRunning"

    return-object v0

    .line 333
    :pswitch_31
    const-string/jumbo v0, "isGsiInstalled"

    return-object v0

    .line 329
    :pswitch_35
    const-string v0, "disableGsi"

    return-object v0

    .line 325
    :pswitch_38
    const-string/jumbo v0, "removeGsiAsync"

    return-object v0

    .line 321
    :pswitch_3c
    const-string/jumbo v0, "removeGsi"

    return-object v0

    .line 317
    :pswitch_40
    const-string/jumbo v0, "isGsiInstallInProgress"

    return-object v0

    .line 313
    :pswitch_44
    const-string v0, "cancelGsiInstall"

    return-object v0

    .line 309
    :pswitch_47
    const-string/jumbo v0, "isGsiEnabled"

    return-object v0

    .line 305
    :pswitch_4b
    const-string v0, "enableGsiAsync"

    return-object v0

    .line 301
    :pswitch_4e
    const-string v0, "enableGsi"

    return-object v0

    .line 297
    :pswitch_51
    const-string v0, "commitGsiChunkFromAshmem"

    return-object v0

    .line 293
    :pswitch_54
    const-string/jumbo v0, "setGsiAshmem"

    return-object v0

    .line 289
    :pswitch_58
    const-string v0, "getInstallProgress"

    return-object v0

    .line 285
    :pswitch_5b
    const-string v0, "commitGsiChunkFromStream"

    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 276
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1265
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 396
    invoke-static {p1}, Landroid/gsi/IGsiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 400
    const-string v0, "android.gsi.IGsiService"

    .line 401
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 402
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 405
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    return v1

    .line 408
    :cond_16
    packed-switch p1, :pswitch_data_1c0

    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 631
    :pswitch_1e
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->suggestScratchSize()J

    move-result-wide v2

    .line 632
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    goto/16 :goto_1bf

    .line 621
    .end local v2    # "_result":J
    :pswitch_2a
    new-instance v2, Landroid/gsi/AvbPublicKey;

    invoke-direct {v2}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 622
    .local v2, "_arg0":Landroid/gsi/AvbPublicKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result v3

    .line 624
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 627
    goto/16 :goto_1bf

    .line 613
    .end local v2    # "_arg0":Landroid/gsi/AvbPublicKey;
    .end local v3    # "_result":I
    :pswitch_41
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->dumpDeviceMapperDevices()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    goto/16 :goto_1bf

    .line 604
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;

    move-result-object v3

    .line 607
    .local v3, "_result":Landroid/gsi/IImageService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 609
    goto/16 :goto_1bf

    .line 594
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/gsi/IImageService;
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->zeroPartition(Ljava/lang/String;)I

    move-result v3

    .line 597
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    goto/16 :goto_1bf

    .line 586
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_73
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closePartition()I

    move-result v2

    .line 587
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    goto/16 :goto_1bf

    .line 573
    .end local v2    # "_result":I
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 577
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 578
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/gsi/IGsiService$Stub;->createPartition(Ljava/lang/String;JZ)I

    move-result v6

    .line 580
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    goto/16 :goto_1bf

    .line 565
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":I
    :pswitch_9a
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->closeInstall()I

    move-result v2

    .line 566
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    goto/16 :goto_1bf

    .line 556
    .end local v2    # "_result":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->openInstall(Ljava/lang/String;)I

    move-result v3

    .line 559
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    goto/16 :goto_1bf

    .line 548
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b9
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledDsuSlots()Ljava/util/List;

    move-result-object v2

    .line 549
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 551
    goto/16 :goto_1bf

    .line 541
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c5
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    goto/16 :goto_1bf

    .line 534
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d1
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    goto/16 :goto_1bf

    .line 527
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_dd
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiRunning()Z

    move-result v2

    .line 528
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    goto/16 :goto_1bf

    .line 520
    .end local v2    # "_result":Z
    :pswitch_e9
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstalled()Z

    move-result v2

    .line 521
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 523
    goto/16 :goto_1bf

    .line 513
    .end local v2    # "_result":Z
    :pswitch_f5
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->disableGsi()Z

    move-result v2

    .line 514
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    goto/16 :goto_1bf

    .line 506
    .end local v2    # "_result":Z
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object v2

    .line 507
    .local v2, "_arg0":Landroid/gsi/IGsiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2}, Landroid/gsi/IGsiService$Stub;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 509
    goto/16 :goto_1bf

    .line 498
    .end local v2    # "_arg0":Landroid/gsi/IGsiServiceCallback;
    :pswitch_111
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->removeGsi()Z

    move-result v2

    .line 499
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 501
    goto/16 :goto_1bf

    .line 491
    .end local v2    # "_result":Z
    :pswitch_11d
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstallInProgress()Z

    move-result v2

    .line 492
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 494
    goto/16 :goto_1bf

    .line 484
    .end local v2    # "_result":Z
    :pswitch_129
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->cancelGsiInstall()Z

    move-result v2

    .line 485
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    goto/16 :goto_1bf

    .line 477
    .end local v2    # "_result":Z
    :pswitch_135
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiEnabled()Z

    move-result v2

    .line 478
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    goto/16 :goto_1bf

    .line 466
    .end local v2    # "_result":Z
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 468
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/gsi/IGsiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiServiceCallback;

    move-result-object v4

    .line 471
    .local v4, "_arg2":Landroid/gsi/IGsiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IGsiService$Stub;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 473
    goto :goto_1bf

    .line 454
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/gsi/IGsiServiceCallback;
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 456
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 457
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v2, v3}, Landroid/gsi/IGsiService$Stub;->enableGsi(ZLjava/lang/String;)I

    move-result v4

    .line 459
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    goto :goto_1bf

    .line 444
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 445
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromAshmem(J)Z

    move-result v4

    .line 447
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto :goto_1bf

    .line 432
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_180
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 434
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 435
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IGsiService$Stub;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 437
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto :goto_1bf

    .line 424
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_19a
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v2

    .line 425
    .local v2, "_result":Landroid/gsi/GsiProgress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 427
    goto :goto_1bf

    .line 413
    .end local v2    # "_result":Landroid/gsi/GsiProgress;
    :pswitch_1a5
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 415
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 416
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2, v3, v4}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v5

    .line 418
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    nop

    .line 641
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :goto_1bf
    return v1

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_1a5
        :pswitch_19a
        :pswitch_180
        :pswitch_16e
        :pswitch_158
        :pswitch_141
        :pswitch_135
        :pswitch_129
        :pswitch_11d
        :pswitch_111
        :pswitch_101
        :pswitch_f5
        :pswitch_e9
        :pswitch_dd
        :pswitch_d1
        :pswitch_c5
        :pswitch_b9
        :pswitch_a6
        :pswitch_9a
        :pswitch_7f
        :pswitch_73
        :pswitch_60
        :pswitch_4d
        :pswitch_41
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
