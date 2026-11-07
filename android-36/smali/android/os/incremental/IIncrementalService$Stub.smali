.class public abstract Landroid/os/incremental/IIncrementalService$Stub;
.super Landroid/os/Binder;
.source "IIncrementalService.java"

# interfaces
.implements Landroid/os/incremental/IIncrementalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IIncrementalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IIncrementalService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_configureNativeBinaries:I = 0x15

.field static final blacklist TRANSACTION_createLinkedStorage:I = 0x3

.field static final blacklist TRANSACTION_createStorage:I = 0x2

.field static final blacklist TRANSACTION_deleteBindMount:I = 0x7

.field static final blacklist TRANSACTION_deleteStorage:I = 0x13

.field static final blacklist TRANSACTION_disallowReadLogs:I = 0x14

.field static final blacklist TRANSACTION_getLoadingProgress:I = 0x10

.field static final blacklist TRANSACTION_getMetadataById:I = 0x12

.field static final blacklist TRANSACTION_getMetadataByPath:I = 0x11

.field static final blacklist TRANSACTION_getMetrics:I = 0x19

.field static final blacklist TRANSACTION_isFileFullyLoaded:I = 0xe

.field static final blacklist TRANSACTION_isFullyLoaded:I = 0xf

.field static final blacklist TRANSACTION_makeBindMount:I = 0x6

.field static final blacklist TRANSACTION_makeDirectories:I = 0x9

.field static final blacklist TRANSACTION_makeDirectory:I = 0x8

.field static final blacklist TRANSACTION_makeFile:I = 0xa

.field static final blacklist TRANSACTION_makeFileFromRange:I = 0xb

.field static final blacklist TRANSACTION_makeLink:I = 0xc

.field static final blacklist TRANSACTION_onInstallationComplete:I = 0x5

.field static final blacklist TRANSACTION_openStorage:I = 0x1

.field static final blacklist TRANSACTION_registerLoadingProgressListener:I = 0x17

.field static final blacklist TRANSACTION_startLoading:I = 0x4

.field static final blacklist TRANSACTION_unlink:I = 0xd

.field static final blacklist TRANSACTION_unregisterLoadingProgressListener:I = 0x18

.field static final blacklist TRANSACTION_waitForNativeBinariesExtraction:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 170
    const-string v0, "android.os.incremental.IIncrementalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/incremental/IIncrementalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 178
    if-nez p0, :cond_4

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_4
    const-string v0, "android.os.incremental.IIncrementalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 182
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/incremental/IIncrementalService;

    if-eqz v1, :cond_14

    .line 183
    move-object v1, v0

    check-cast v1, Landroid/os/incremental/IIncrementalService;

    return-object v1

    .line 185
    :cond_14
    new-instance v1, Landroid/os/incremental/IIncrementalService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/incremental/IIncrementalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 194
    packed-switch p0, :pswitch_data_60

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 294
    :pswitch_5
    const-string v0, "getMetrics"

    return-object v0

    .line 290
    :pswitch_8
    const-string/jumbo v0, "unregisterLoadingProgressListener"

    return-object v0

    .line 286
    :pswitch_c
    const-string/jumbo v0, "registerLoadingProgressListener"

    return-object v0

    .line 282
    :pswitch_10
    const-string/jumbo v0, "waitForNativeBinariesExtraction"

    return-object v0

    .line 278
    :pswitch_14
    const-string v0, "configureNativeBinaries"

    return-object v0

    .line 274
    :pswitch_17
    const-string v0, "disallowReadLogs"

    return-object v0

    .line 270
    :pswitch_1a
    const-string v0, "deleteStorage"

    return-object v0

    .line 266
    :pswitch_1d
    const-string v0, "getMetadataById"

    return-object v0

    .line 262
    :pswitch_20
    const-string v0, "getMetadataByPath"

    return-object v0

    .line 258
    :pswitch_23
    const-string v0, "getLoadingProgress"

    return-object v0

    .line 254
    :pswitch_26
    const-string/jumbo v0, "isFullyLoaded"

    return-object v0

    .line 250
    :pswitch_2a
    const-string/jumbo v0, "isFileFullyLoaded"

    return-object v0

    .line 246
    :pswitch_2e
    const-string/jumbo v0, "unlink"

    return-object v0

    .line 242
    :pswitch_32
    const-string/jumbo v0, "makeLink"

    return-object v0

    .line 238
    :pswitch_36
    const-string/jumbo v0, "makeFileFromRange"

    return-object v0

    .line 234
    :pswitch_3a
    const-string/jumbo v0, "makeFile"

    return-object v0

    .line 230
    :pswitch_3e
    const-string/jumbo v0, "makeDirectories"

    return-object v0

    .line 226
    :pswitch_42
    const-string/jumbo v0, "makeDirectory"

    return-object v0

    .line 222
    :pswitch_46
    const-string v0, "deleteBindMount"

    return-object v0

    .line 218
    :pswitch_49
    const-string/jumbo v0, "makeBindMount"

    return-object v0

    .line 214
    :pswitch_4d
    const-string/jumbo v0, "onInstallationComplete"

    return-object v0

    .line 210
    :pswitch_51
    const-string/jumbo v0, "startLoading"

    return-object v0

    .line 206
    :pswitch_55
    const-string v0, "createLinkedStorage"

    return-object v0

    .line 202
    :pswitch_58
    const-string v0, "createStorage"

    return-object v0

    .line 198
    :pswitch_5b
    const-string/jumbo v0, "openStorage"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 189
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1208
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 305
    invoke-static {p1}, Landroid/os/incremental/IIncrementalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 309
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.incremental.IIncrementalService"

    .line 310
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 311
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 314
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    return v11

    .line 317
    :cond_19
    packed-switch p1, :pswitch_data_29e

    .line 638
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 629
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 632
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    goto/16 :goto_29d

    .line 619
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->unregisterLoadingProgressListener(I)Z

    move-result v2

    .line 622
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 624
    goto/16 :goto_29d

    .line 607
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IStorageLoadingProgressListener;

    move-result-object v2

    .line 610
    .local v2, "_arg1":Landroid/os/incremental/IStorageLoadingProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v3

    .line 612
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 614
    goto/16 :goto_29d

    .line 597
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/incremental/IStorageLoadingProgressListener;
    .end local v3    # "_result":Z
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->waitForNativeBinariesExtraction(I)Z

    move-result v2

    .line 600
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    goto/16 :goto_29d

    .line 579
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 581
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 588
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService$Stub;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 590
    .local v6, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 592
    goto/16 :goto_29d

    .line 570
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->disallowReadLogs(I)V

    .line 573
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    goto/16 :goto_29d

    .line 561
    .end local v1    # "_arg0":I
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 562
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->deleteStorage(I)V

    .line 564
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto/16 :goto_29d

    .line 549
    .end local v1    # "_arg0":I
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 552
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->getMetadataById(I[B)[B

    move-result-object v3

    .line 554
    .local v3, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 556
    goto/16 :goto_29d

    .line 537
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":[B
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object v3

    .line 542
    .restart local v3    # "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 544
    goto/16 :goto_29d

    .line 527
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 528
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->getLoadingProgress(I)F

    move-result v2

    .line 530
    .local v2, "_result":F
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 532
    goto/16 :goto_29d

    .line 517
    .end local v1    # "_arg0":I
    .end local v2    # "_result":F
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->isFullyLoaded(I)I

    move-result v2

    .line 520
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    goto/16 :goto_29d

    .line 505
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result v3

    .line 510
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    goto/16 :goto_29d

    .line 493
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->unlink(ILjava/lang/String;)I

    move-result v3

    .line 498
    .restart local v3    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    goto/16 :goto_29d

    .line 477
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 483
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/incremental/IIncrementalService$Stub;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 486
    .local v5, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    goto/16 :goto_29d

    .line 459
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 467
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 468
    .local v6, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/incremental/IIncrementalService$Stub;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result v12

    .line 470
    .local v12, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    goto/16 :goto_29d

    .line 441
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":J
    .end local v12    # "_result":I
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 447
    .local v3, "_arg2":I
    sget-object v0, Landroid/os/incremental/IncrementalNewFileParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/incremental/IncrementalNewFileParams;

    .line 449
    .local v4, "_arg3":Landroid/os/incremental/IncrementalNewFileParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 450
    .local v5, "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService$Stub;->makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result v6

    .line 452
    .local v6, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    goto/16 :goto_29d

    .line 429
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/incremental/IncrementalNewFileParams;
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":I
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->makeDirectories(ILjava/lang/String;)I

    move-result v3

    .line 434
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    goto/16 :goto_29d

    .line 417
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->makeDirectory(ILjava/lang/String;)I

    move-result v3

    .line 422
    .restart local v3    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    goto/16 :goto_29d

    .line 405
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v1, v2}, Landroid/os/incremental/IIncrementalService$Stub;->deleteBindMount(ILjava/lang/String;)I

    move-result v3

    .line 410
    .restart local v3    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto/16 :goto_29d

    .line 389
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 396
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/incremental/IIncrementalService$Stub;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 398
    .local v5, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_29d

    .line 380
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->onInstallationComplete(I)V

    .line 383
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    goto/16 :goto_29d

    .line 360
    .end local v1    # "_arg0":I
    :pswitch_218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/DataLoaderParamsParcel;

    .line 364
    .local v2, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IDataLoaderStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderStatusListener;

    move-result-object v3

    .line 366
    .local v3, "_arg2":Landroid/content/pm/IDataLoaderStatusListener;
    sget-object v4, Landroid/os/incremental/StorageHealthCheckParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/incremental/StorageHealthCheckParams;

    .line 368
    .local v4, "_arg3":Landroid/os/incremental/StorageHealthCheckParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/incremental/IStorageHealthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IStorageHealthListener;

    move-result-object v5

    .line 370
    .local v5, "_arg4":Landroid/os/incremental/IStorageHealthListener;
    sget-object v6, Landroid/os/incremental/PerUidReadTimeouts;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/incremental/PerUidReadTimeouts;

    .line 371
    .local v6, "_arg5":[Landroid/os/incremental/PerUidReadTimeouts;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService$Stub;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result v7

    .line 373
    .local v7, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto :goto_29d

    .line 346
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v3    # "_arg2":Landroid/content/pm/IDataLoaderStatusListener;
    .end local v4    # "_arg3":Landroid/os/incremental/StorageHealthCheckParams;
    .end local v5    # "_arg4":Landroid/os/incremental/IStorageHealthListener;
    .end local v6    # "_arg5":[Landroid/os/incremental/PerUidReadTimeouts;
    .end local v7    # "_result":Z
    :pswitch_253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/incremental/IIncrementalService$Stub;->createLinkedStorage(Ljava/lang/String;II)I

    move-result v4

    .line 353
    .local v4, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    goto :goto_29d

    .line 332
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_26d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/DataLoaderParamsParcel;

    .line 336
    .local v2, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/incremental/IIncrementalService$Stub;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I

    move-result v4

    .line 339
    .restart local v4    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto :goto_29d

    .line 322
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_28b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1}, Landroid/os/incremental/IIncrementalService$Stub;->openStorage(Ljava/lang/String;)I

    move-result v2

    .line 325
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    nop

    .line 641
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :goto_29d
    return v11

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_28b
        :pswitch_26d
        :pswitch_253
        :pswitch_218
        :pswitch_209
        :pswitch_1ea
        :pswitch_1d3
        :pswitch_1bc
        :pswitch_1a5
        :pswitch_17c
        :pswitch_158
        :pswitch_139
        :pswitch_122
        :pswitch_10b
        :pswitch_f8
        :pswitch_e5
        :pswitch_ce
        :pswitch_b7
        :pswitch_a8
        :pswitch_99
        :pswitch_75
        :pswitch_62
        :pswitch_47
        :pswitch_34
        :pswitch_21
    .end packed-switch
.end method
