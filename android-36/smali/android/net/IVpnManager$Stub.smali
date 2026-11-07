.class public abstract Landroid/net/IVpnManager$Stub;
.super Landroid/os/Binder;
.source "IVpnManager.java"

# interfaces
.implements Landroid/net/IVpnManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IVpnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IVpnManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVpnAddress:I = 0x4

.field static final blacklist TRANSACTION_deleteVpnProfile:I = 0x8

.field static final blacklist TRANSACTION_establishVpn:I = 0x3

.field static final blacklist TRANSACTION_factoryReset:I = 0x1d

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackage:I = 0x10

.field static final blacklist TRANSACTION_getAppExclusionList:I = 0xd

.field static final blacklist TRANSACTION_getFromVpnProfileStore:I = 0x18

.field static final blacklist TRANSACTION_getLegacyVpnInfo:I = 0x16

.field static final blacklist TRANSACTION_getProvisionedVpnProfileState:I = 0xb

.field static final blacklist TRANSACTION_getVpnConfig:I = 0x1c

.field static final blacklist TRANSACTION_getVpnLockdownAllowlist:I = 0x12

.field static final blacklist TRANSACTION_isAlwaysOnVpnPackageSupported:I = 0xe

.field static final blacklist TRANSACTION_isCallerCurrentAlwaysOnVpnApp:I = 0x13

.field static final blacklist TRANSACTION_isCallerCurrentAlwaysOnVpnLockdownApp:I = 0x14

.field static final blacklist TRANSACTION_isVpnLockdownEnabled:I = 0x11

.field static final blacklist TRANSACTION_listFromVpnProfileStore:I = 0x1b

.field static final blacklist TRANSACTION_prepareVpn:I = 0x1

.field static final blacklist TRANSACTION_provisionVpnProfile:I = 0x7

.field static final blacklist TRANSACTION_putIntoVpnProfileStore:I = 0x19

.field static final blacklist TRANSACTION_removeFromVpnProfileStore:I = 0x1a

.field static final blacklist TRANSACTION_removeVpnAddress:I = 0x5

.field static final blacklist TRANSACTION_setAlwaysOnVpnPackage:I = 0xf

.field static final blacklist TRANSACTION_setAppExclusionList:I = 0xc

.field static final blacklist TRANSACTION_setUnderlyingNetworksForVpn:I = 0x6

.field static final blacklist TRANSACTION_setVpnPackageAuthorization:I = 0x2

.field static final blacklist TRANSACTION_startLegacyVpn:I = 0x15

.field static final blacklist TRANSACTION_startVpnProfile:I = 0x9

.field static final blacklist TRANSACTION_stopVpnProfile:I = 0xa

.field static final blacklist TRANSACTION_updateLockdownVpn:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "android.net.IVpnManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IVpnManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_4

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_4
    const-string v0, "android.net.IVpnManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IVpnManager;

    if-eqz v1, :cond_14

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/net/IVpnManager;

    return-object v1

    .line 161
    :cond_14
    new-instance v1, Landroid/net/IVpnManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IVpnManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 170
    packed-switch p0, :pswitch_data_70

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 286
    :pswitch_5
    const-string v0, "factoryReset"

    return-object v0

    .line 282
    :pswitch_8
    const-string/jumbo v0, "getVpnConfig"

    return-object v0

    .line 278
    :pswitch_c
    const-string/jumbo v0, "listFromVpnProfileStore"

    return-object v0

    .line 274
    :pswitch_10
    const-string/jumbo v0, "removeFromVpnProfileStore"

    return-object v0

    .line 270
    :pswitch_14
    const-string/jumbo v0, "putIntoVpnProfileStore"

    return-object v0

    .line 266
    :pswitch_18
    const-string v0, "getFromVpnProfileStore"

    return-object v0

    .line 262
    :pswitch_1b
    const-string/jumbo v0, "updateLockdownVpn"

    return-object v0

    .line 258
    :pswitch_1f
    const-string v0, "getLegacyVpnInfo"

    return-object v0

    .line 254
    :pswitch_22
    const-string/jumbo v0, "startLegacyVpn"

    return-object v0

    .line 250
    :pswitch_26
    const-string/jumbo v0, "isCallerCurrentAlwaysOnVpnLockdownApp"

    return-object v0

    .line 246
    :pswitch_2a
    const-string/jumbo v0, "isCallerCurrentAlwaysOnVpnApp"

    return-object v0

    .line 242
    :pswitch_2e
    const-string/jumbo v0, "getVpnLockdownAllowlist"

    return-object v0

    .line 238
    :pswitch_32
    const-string/jumbo v0, "isVpnLockdownEnabled"

    return-object v0

    .line 234
    :pswitch_36
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 230
    :pswitch_39
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 226
    :pswitch_3d
    const-string/jumbo v0, "isAlwaysOnVpnPackageSupported"

    return-object v0

    .line 222
    :pswitch_41
    const-string v0, "getAppExclusionList"

    return-object v0

    .line 218
    :pswitch_44
    const-string/jumbo v0, "setAppExclusionList"

    return-object v0

    .line 214
    :pswitch_48
    const-string v0, "getProvisionedVpnProfileState"

    return-object v0

    .line 210
    :pswitch_4b
    const-string/jumbo v0, "stopVpnProfile"

    return-object v0

    .line 206
    :pswitch_4f
    const-string/jumbo v0, "startVpnProfile"

    return-object v0

    .line 202
    :pswitch_53
    const-string v0, "deleteVpnProfile"

    return-object v0

    .line 198
    :pswitch_56
    const-string/jumbo v0, "provisionVpnProfile"

    return-object v0

    .line 194
    :pswitch_5a
    const-string/jumbo v0, "setUnderlyingNetworksForVpn"

    return-object v0

    .line 190
    :pswitch_5e
    const-string/jumbo v0, "removeVpnAddress"

    return-object v0

    .line 186
    :pswitch_62
    const-string v0, "addVpnAddress"

    return-object v0

    .line 182
    :pswitch_65
    const-string v0, "establishVpn"

    return-object v0

    .line 178
    :pswitch_68
    const-string/jumbo v0, "setVpnPackageAuthorization"

    return-object v0

    .line 174
    :pswitch_6c
    const-string/jumbo v0, "prepareVpn"

    return-object v0

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
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

    .line 165
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1193
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 297
    invoke-static {p1}, Landroid/net/IVpnManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 301
    const-string v0, "android.net.IVpnManager"

    .line 302
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 303
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 306
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    return v1

    .line 309
    :cond_16
    packed-switch p1, :pswitch_data_25c

    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 610
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->factoryReset()V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_25b

    .line 601
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    .line 604
    .local v3, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 606
    goto/16 :goto_25b

    .line 591
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/internal/net/VpnConfig;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->listFromVpnProfileStore(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 596
    goto/16 :goto_25b

    .line 581
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->removeFromVpnProfileStore(Ljava/lang/String;)Z

    move-result v3

    .line 584
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 586
    goto/16 :goto_25b

    .line 569
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 572
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->putIntoVpnProfileStore(Ljava/lang/String;[B)Z

    move-result v4

    .line 574
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 576
    goto/16 :goto_25b

    .line 559
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getFromVpnProfileStore(Ljava/lang/String;)[B

    move-result-object v3

    .line 562
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 564
    goto/16 :goto_25b

    .line 551
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_89
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->updateLockdownVpn()Z

    move-result v2

    .line 552
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 554
    goto/16 :goto_25b

    .line 542
    .end local v2    # "_result":Z
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 543
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    .line 545
    .local v3, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 547
    goto/16 :goto_25b

    .line 533
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :pswitch_a8
    sget-object v2, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 534
    .local v2, "_arg0":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_25b

    .line 525
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :pswitch_bb
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v2

    .line 526
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    goto/16 :goto_25b

    .line 518
    .end local v2    # "_result":Z
    :pswitch_c7
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v2

    .line 519
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 521
    goto/16 :goto_25b

    .line 509
    .end local v2    # "_result":Z
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getVpnLockdownAllowlist(I)Ljava/util/List;

    move-result-object v3

    .line 512
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 514
    goto/16 :goto_25b

    .line 499
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->isVpnLockdownEnabled(I)Z

    move-result v3

    .line 502
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 504
    goto/16 :goto_25b

    .line 489
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    goto/16 :goto_25b

    .line 473
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 479
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 480
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IVpnManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    move-result v6

    .line 482
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 484
    goto/16 :goto_25b

    .line 461
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_result":Z
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 463
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v4

    .line 466
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 468
    goto/16 :goto_25b

    .line 449
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 451
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 452
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->getAppExclusionList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 454
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 456
    goto/16 :goto_25b

    .line 435
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 440
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IVpnManager$Stub;->setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z

    move-result v5

    .line 442
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 444
    goto/16 :goto_25b

    .line 425
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_result":Z
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object v3

    .line 428
    .local v3, "_result":Landroid/net/VpnProfileState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    goto/16 :goto_25b

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/VpnProfileState;
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->stopVpnProfile(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_25b

    .line 406
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    goto/16 :goto_25b

    .line 397
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->deleteVpnProfile(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    goto/16 :goto_25b

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1b8
    sget-object v2, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 387
    .local v2, "_arg0":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z

    move-result v4

    .line 390
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto/16 :goto_25b

    .line 375
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1d3
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    .line 376
    .local v2, "_arg0":[Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v3

    .line 378
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto :goto_25b

    .line 363
    .end local v2    # "_arg0":[Landroid/net/Network;
    .end local v3    # "_result":Z
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v4

    .line 368
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    goto :goto_25b

    .line 351
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 354
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v4

    .line 356
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 358
    goto :goto_25b

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_215
    sget-object v2, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnConfig;

    .line 342
    .local v2, "_arg0":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 344
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 346
    goto :goto_25b

    .line 328
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_22b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IVpnManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto :goto_25b

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 319
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IVpnManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 321
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    nop

    .line 619
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :goto_25b
    return v1

    :pswitch_data_25c
    .packed-switch 0x1
        :pswitch_241
        :pswitch_22b
        :pswitch_215
        :pswitch_1ff
        :pswitch_1e9
        :pswitch_1d3
        :pswitch_1b8
        :pswitch_1a9
        :pswitch_196
        :pswitch_187
        :pswitch_174
        :pswitch_159
        :pswitch_142
        :pswitch_12b
        :pswitch_10c
        :pswitch_f9
        :pswitch_e6
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_a8
        :pswitch_95
        :pswitch_89
        :pswitch_76
        :pswitch_5f
        :pswitch_4c
        :pswitch_39
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
