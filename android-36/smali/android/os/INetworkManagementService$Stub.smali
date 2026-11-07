.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final greylist-max-o TRANSACTION_allowProtect:I = 0x1c

.field static final greylist-max-o TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final greylist-max-o TRANSACTION_denyProtect:I = 0x1d

.field static final greylist-max-o TRANSACTION_disableIpv6:I = 0xa

.field static final greylist-max-o TRANSACTION_enableIpv6:I = 0xb

.field static final greylist-max-o TRANSACTION_getInterfaceConfig:I = 0x4

.field static final greylist-max-o TRANSACTION_isBandwidthControlEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isFirewallEnabled:I = 0x18

.field static final greylist-max-o TRANSACTION_isNetworkRestricted:I = 0x1e

.field static final greylist-max-o TRANSACTION_listInterfaces:I = 0x3

.field static final greylist-max-o TRANSACTION_registerObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_removeInterfaceAlert:I = 0x11

.field static final greylist-max-o TRANSACTION_removeInterfaceQuota:I = 0xf

.field static final greylist-max-o TRANSACTION_setDataSaverModeEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_setFirewallChainEnabled:I = 0x1b

.field static final greylist-max-o TRANSACTION_setFirewallEnabled:I = 0x17

.field static final greylist-max-o TRANSACTION_setFirewallUidRule:I = 0x19

.field static final greylist-max-o TRANSACTION_setFirewallUidRules:I = 0x1a

.field static final greylist-max-o TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInterfaceAlert:I = 0x10

.field static final greylist-max-o TRANSACTION_setInterfaceConfig:I = 0x5

.field static final greylist-max-o TRANSACTION_setInterfaceDown:I = 0x7

.field static final greylist-max-o TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0xe

.field static final greylist-max-o TRANSACTION_setInterfaceUp:I = 0x8

.field static final greylist-max-o TRANSACTION_setUidCleartextNetworkPolicy:I = 0x15

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x13

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x12

.field static final greylist-max-o TRANSACTION_shutdown:I = 0xd

.field static final greylist-max-o TRANSACTION_unregisterObserver:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    nop

    .line 160
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/INetworkManagementService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 161
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_d

    .line 154
    iput-object p1, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 155
    return-void

    .line 152
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 168
    if-nez p0, :cond_4

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 172
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_14

    .line 173
    move-object v1, v0

    check-cast v1, Landroid/os/INetworkManagementService;

    return-object v1

    .line 175
    :cond_14
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 184
    packed-switch p0, :pswitch_data_78

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 304
    :pswitch_5
    const-string/jumbo v0, "isNetworkRestricted"

    return-object v0

    .line 300
    :pswitch_9
    const-string v0, "denyProtect"

    return-object v0

    .line 296
    :pswitch_c
    const-string v0, "allowProtect"

    return-object v0

    .line 292
    :pswitch_f
    const-string/jumbo v0, "setFirewallChainEnabled"

    return-object v0

    .line 288
    :pswitch_13
    const-string/jumbo v0, "setFirewallUidRules"

    return-object v0

    .line 284
    :pswitch_17
    const-string/jumbo v0, "setFirewallUidRule"

    return-object v0

    .line 280
    :pswitch_1b
    const-string/jumbo v0, "isFirewallEnabled"

    return-object v0

    .line 276
    :pswitch_1f
    const-string/jumbo v0, "setFirewallEnabled"

    return-object v0

    .line 272
    :pswitch_23
    const-string/jumbo v0, "isBandwidthControlEnabled"

    return-object v0

    .line 268
    :pswitch_27
    const-string/jumbo v0, "setUidCleartextNetworkPolicy"

    return-object v0

    .line 264
    :pswitch_2b
    const-string/jumbo v0, "setDataSaverModeEnabled"

    return-object v0

    .line 260
    :pswitch_2f
    const-string/jumbo v0, "setUidOnMeteredNetworkAllowlist"

    return-object v0

    .line 256
    :pswitch_33
    const-string/jumbo v0, "setUidOnMeteredNetworkDenylist"

    return-object v0

    .line 252
    :pswitch_37
    const-string/jumbo v0, "removeInterfaceAlert"

    return-object v0

    .line 248
    :pswitch_3b
    const-string/jumbo v0, "setInterfaceAlert"

    return-object v0

    .line 244
    :pswitch_3f
    const-string/jumbo v0, "removeInterfaceQuota"

    return-object v0

    .line 240
    :pswitch_43
    const-string/jumbo v0, "setInterfaceQuota"

    return-object v0

    .line 236
    :pswitch_47
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 232
    :pswitch_4b
    const-string/jumbo v0, "setIPv6AddrGenMode"

    return-object v0

    .line 228
    :pswitch_4f
    const-string v0, "enableIpv6"

    return-object v0

    .line 224
    :pswitch_52
    const-string v0, "disableIpv6"

    return-object v0

    .line 220
    :pswitch_55
    const-string/jumbo v0, "setInterfaceIpv6PrivacyExtensions"

    return-object v0

    .line 216
    :pswitch_59
    const-string/jumbo v0, "setInterfaceUp"

    return-object v0

    .line 212
    :pswitch_5d
    const-string/jumbo v0, "setInterfaceDown"

    return-object v0

    .line 208
    :pswitch_61
    const-string v0, "clearInterfaceAddresses"

    return-object v0

    .line 204
    :pswitch_64
    const-string/jumbo v0, "setInterfaceConfig"

    return-object v0

    .line 200
    :pswitch_68
    const-string v0, "getInterfaceConfig"

    return-object v0

    .line 196
    :pswitch_6b
    const-string/jumbo v0, "listInterfaces"

    return-object v0

    .line 192
    :pswitch_6f
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 188
    :pswitch_73
    const-string/jumbo v0, "registerObserver"

    return-object v0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
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

    .line 179
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1192
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 315
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isNetworkRestricted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1188
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    const-string v0, "android.os.INetworkManagementService"

    .line 320
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 321
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 324
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    return v1

    .line 327
    :cond_16
    packed-switch p1, :pswitch_data_216

    .line 621
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 612
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 613
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v3

    .line 615
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 617
    goto/16 :goto_215

    .line 603
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 604
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_215

    .line 594
    .end local v2    # "_arg0":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_215

    .line 583
    .end local v2    # "_arg0":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 585
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 586
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto/16 :goto_215

    .line 570
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 572
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 574
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 575
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_215

    .line 557
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 561
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 562
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    goto/16 :goto_215

    .line 549
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_90
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v2

    .line 550
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 552
    goto/16 :goto_215

    .line 541
    .end local v2    # "_result":Z
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 542
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_215

    .line 533
    .end local v2    # "_arg0":Z
    :pswitch_ab
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v2

    .line 534
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto/16 :goto_215

    .line 523
    .end local v2    # "_result":Z
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 526
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    goto/16 :goto_215

    .line 513
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 514
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v3

    .line 516
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto/16 :goto_215

    .line 502
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 504
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 505
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_215

    .line 491
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 494
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto/16 :goto_215

    .line 482
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_215

    .line 471
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 474
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_215

    .line 462
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto/16 :goto_215

    .line 451
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 454
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_215

    .line 444
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_147
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto/16 :goto_215

    .line 434
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 437
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_215

    .line 425
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_215

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_215

    .line 405
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 408
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_215

    .line 396
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    goto/16 :goto_215

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    goto :goto_215

    .line 378
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto :goto_215

    .line 367
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfiguration;

    .line 370
    .local v3, "_arg1":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto :goto_215

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/InterfaceConfiguration;
    :pswitch_1d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    .line 360
    .local v3, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    goto :goto_215

    .line 349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/InterfaceConfiguration;
    :pswitch_1e6
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 352
    goto :goto_215

    .line 341
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto :goto_215

    .line 332
    .end local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    .line 333
    .restart local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    nop

    .line 624
    .end local v2    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :goto_215
    return v1

    :pswitch_data_216
    .packed-switch 0x1
        :pswitch_203
        :pswitch_1f1
        :pswitch_1e6
        :pswitch_1d4
        :pswitch_1be
        :pswitch_1b0
        :pswitch_1a2
        :pswitch_193
        :pswitch_180
        :pswitch_171
        :pswitch_162
        :pswitch_14f
        :pswitch_147
        :pswitch_134
        :pswitch_125
        :pswitch_112
        :pswitch_103
        :pswitch_f0
        :pswitch_dd
        :pswitch_ca
        :pswitch_b7
        :pswitch_ab
        :pswitch_9c
        :pswitch_90
        :pswitch_79
        :pswitch_62
        :pswitch_4f
        :pswitch_40
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setDataSaverModeEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1174
    return-void
.end method

.method protected blacklist shutdown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/INetworkManagementService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1163
    return-void
.end method
