.class public abstract Landroid/content/om/IOverlayManager$Stub;
.super Landroid/os/Binder;
.source "IOverlayManager.java"

# interfaces
.implements Landroid/content/om/IOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/IOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/IOverlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.om.IOverlayManager"

.field static final blacklist TRANSACTION_commit:I = 0xe

.field static final blacklist TRANSACTION_enableWithConstraints:I = 0x6

.field static final greylist-max-o TRANSACTION_getAllOverlays:I = 0x1

.field static final blacklist TRANSACTION_getDefaultOverlayPackages:I = 0xc

.field static final greylist-max-o TRANSACTION_getOverlayInfo:I = 0x3

.field static final blacklist TRANSACTION_getOverlayInfoByIdentifier:I = 0x4

.field static final greylist-max-o TRANSACTION_getOverlayInfosForTarget:I = 0x2

.field static final blacklist TRANSACTION_getPartitionOrder:I = 0xf

.field static final blacklist TRANSACTION_invalidateCachesForOverlay:I = 0xd

.field static final blacklist TRANSACTION_isDefaultPartitionOrder:I = 0x10

.field static final greylist-max-o TRANSACTION_setEnabled:I = 0x5

.field static final greylist-max-o TRANSACTION_setEnabledExclusive:I = 0x7

.field static final greylist-max-o TRANSACTION_setEnabledExclusiveInCategory:I = 0x8

.field static final greylist-max-o TRANSACTION_setHighestPriority:I = 0xa

.field static final greylist-max-o TRANSACTION_setLowestPriority:I = 0xb

.field static final greylist-max-o TRANSACTION_setPriority:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 246
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 247
    const-string v0, "android.content.om.IOverlayManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/om/IOverlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 255
    if-nez p0, :cond_4

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_4
    const-string v0, "android.content.om.IOverlayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 259
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/om/IOverlayManager;

    if-eqz v1, :cond_14

    .line 260
    move-object v1, v0

    check-cast v1, Landroid/content/om/IOverlayManager;

    return-object v1

    .line 262
    :cond_14
    new-instance v1, Landroid/content/om/IOverlayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/om/IOverlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 271
    packed-switch p0, :pswitch_data_3e

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 335
    :pswitch_5
    const-string/jumbo v0, "isDefaultPartitionOrder"

    return-object v0

    .line 331
    :pswitch_9
    const-string v0, "getPartitionOrder"

    return-object v0

    .line 327
    :pswitch_c
    const-string v0, "commit"

    return-object v0

    .line 323
    :pswitch_f
    const-string/jumbo v0, "invalidateCachesForOverlay"

    return-object v0

    .line 319
    :pswitch_13
    const-string v0, "getDefaultOverlayPackages"

    return-object v0

    .line 315
    :pswitch_16
    const-string/jumbo v0, "setLowestPriority"

    return-object v0

    .line 311
    :pswitch_1a
    const-string/jumbo v0, "setHighestPriority"

    return-object v0

    .line 307
    :pswitch_1e
    const-string/jumbo v0, "setPriority"

    return-object v0

    .line 303
    :pswitch_22
    const-string/jumbo v0, "setEnabledExclusiveInCategory"

    return-object v0

    .line 299
    :pswitch_26
    const-string/jumbo v0, "setEnabledExclusive"

    return-object v0

    .line 295
    :pswitch_2a
    const-string v0, "enableWithConstraints"

    return-object v0

    .line 291
    :pswitch_2d
    const-string/jumbo v0, "setEnabled"

    return-object v0

    .line 287
    :pswitch_31
    const-string v0, "getOverlayInfoByIdentifier"

    return-object v0

    .line 283
    :pswitch_34
    const-string v0, "getOverlayInfo"

    return-object v0

    .line 279
    :pswitch_37
    const-string v0, "getOverlayInfosForTarget"

    return-object v0

    .line 275
    :pswitch_3a
    const-string v0, "getAllOverlays"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
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
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/List;

    .line 372
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 374
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 266
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1047
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 346
    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 350
    const-string v0, "android.content.om.IOverlayManager"

    .line 351
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 352
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 355
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    return v1

    .line 358
    :cond_16
    packed-switch p1, :pswitch_data_186

    .line 549
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 542
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->isDefaultPartitionOrder()Z

    move-result v2

    .line 543
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 545
    goto/16 :goto_185

    .line 535
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->getPartitionOrder()Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    goto/16 :goto_185

    .line 527
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_36
    sget-object v2, Landroid/content/om/OverlayManagerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayManagerTransaction;

    .line 528
    .local v2, "_arg0":Landroid/content/om/OverlayManagerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2}, Landroid/content/om/IOverlayManager$Stub;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_185

    .line 516
    .end local v2    # "_arg0":Landroid/content/om/OverlayManagerTransaction;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 519
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->invalidateCachesForOverlay(Ljava/lang/String;I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_185

    .line 508
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_5c
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 511
    goto/16 :goto_185

    .line 497
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v4

    .line 502
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 504
    goto/16 :goto_185

    .line 485
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v4

    .line 490
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    goto/16 :goto_185

    .line 471
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 476
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 478
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    goto/16 :goto_185

    .line 459
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 462
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v4

    .line 464
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    goto/16 :goto_185

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 449
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 450
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v5

    .line 452
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 454
    goto/16 :goto_185

    .line 431
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 435
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/om/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 436
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->enableWithConstraints(Ljava/lang/String;ILjava/util/List;)Z

    move-result v5

    .line 438
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    goto/16 :goto_185

    .line 417
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    .end local v5    # "_result":Z
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 421
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v5

    .line 424
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto :goto_185

    .line 405
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_11a
    sget-object v2, Landroid/content/om/OverlayIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 407
    .local v2, "_arg0":Landroid/content/om/OverlayIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 408
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 410
    .local v4, "_result":Landroid/content/om/OverlayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 412
    goto :goto_185

    .line 393
    .end local v2    # "_arg0":Landroid/content/om/OverlayIdentifier;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/om/OverlayInfo;
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 398
    .restart local v4    # "_result":Landroid/content/om/OverlayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    goto :goto_185

    .line 381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/om/OverlayInfo;
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 384
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 386
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 388
    goto :goto_185

    .line 363
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2}, Landroid/content/om/IOverlayManager$Stub;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v3

    .line 366
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-nez v3, :cond_175

    .line 368
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_185

    .line 370
    :cond_175
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    new-instance v4, Landroid/content/om/IOverlayManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3}, Landroid/content/om/IOverlayManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 376
    nop

    .line 552
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    :goto_185
    return v1

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_160
        :pswitch_14a
        :pswitch_134
        :pswitch_11a
        :pswitch_100
        :pswitch_e3
        :pswitch_c8
        :pswitch_b1
        :pswitch_96
        :pswitch_7f
        :pswitch_68
        :pswitch_5c
        :pswitch_49
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
