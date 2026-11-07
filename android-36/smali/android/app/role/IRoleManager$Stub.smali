.class public abstract Landroid/app/role/IRoleManager$Stub;
.super Landroid/os/Binder;
.source "IRoleManager.java"

# interfaces
.implements Landroid/app/role/IRoleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/IRoleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/role/IRoleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOnRoleHoldersChangedListenerAsUser:I = 0xb

.field static final blacklist TRANSACTION_addRoleHolderAsUser:I = 0x4

.field static final blacklist TRANSACTION_addRoleHolderFromControllerAsUser:I = 0x12

.field static final blacklist TRANSACTION_clearRoleHoldersAsUser:I = 0x6

.field static final blacklist TRANSACTION_getActiveUserForRoleAsUser:I = 0x9

.field static final blacklist TRANSACTION_getBrowserRoleHolder:I = 0x15

.field static final blacklist TRANSACTION_getDefaultApplicationAsUser:I = 0x7

.field static final blacklist TRANSACTION_getDefaultHoldersForTestAsUser:I = 0x1b

.field static final blacklist TRANSACTION_getEmergencyRoleHolder:I = 0x18

.field static final blacklist TRANSACTION_getHeldRolesFromControllerAsUser:I = 0x14

.field static final blacklist TRANSACTION_getRoleHoldersAsUser:I = 0x3

.field static final blacklist TRANSACTION_getSmsRoleHolder:I = 0x17

.field static final blacklist TRANSACTION_isApplicationVisibleForRoleAsUser:I = 0x1a

.field static final blacklist TRANSACTION_isBypassingRoleQualification:I = 0xd

.field static final blacklist TRANSACTION_isRoleAvailableAsUser:I = 0x1

.field static final blacklist TRANSACTION_isRoleFallbackEnabledAsUser:I = 0xf

.field static final blacklist TRANSACTION_isRoleHeldAsUser:I = 0x2

.field static final blacklist TRANSACTION_isRoleVisibleAsUser:I = 0x19

.field static final blacklist TRANSACTION_isRoleVisibleForTestAsUser:I = 0x1d

.field static final blacklist TRANSACTION_removeOnRoleHoldersChangedListenerAsUser:I = 0xc

.field static final blacklist TRANSACTION_removeRoleHolderAsUser:I = 0x5

.field static final blacklist TRANSACTION_removeRoleHolderFromControllerAsUser:I = 0x13

.field static final blacklist TRANSACTION_setActiveUserForRoleAsUser:I = 0xa

.field static final blacklist TRANSACTION_setBrowserRoleHolder:I = 0x16

.field static final blacklist TRANSACTION_setBypassingRoleQualification:I = 0xe

.field static final blacklist TRANSACTION_setDefaultApplicationAsUser:I = 0x8

.field static final blacklist TRANSACTION_setDefaultHoldersForTestAsUser:I = 0x1c

.field static final blacklist TRANSACTION_setRoleFallbackEnabledAsUser:I = 0x10

.field static final blacklist TRANSACTION_setRoleNamesFromControllerAsUser:I = 0x11

.field static final blacklist TRANSACTION_setRoleVisibleForTestAsUser:I = 0x1e


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "android.app.role.IRoleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/role/IRoleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 144
    if-nez p0, :cond_4

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_4
    const-string v0, "android.app.role.IRoleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/role/IRoleManager;

    if-eqz v1, :cond_14

    .line 149
    move-object v1, v0

    check-cast v1, Landroid/app/role/IRoleManager;

    return-object v1

    .line 151
    :cond_14
    new-instance v1, Landroid/app/role/IRoleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/role/IRoleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 160
    packed-switch p0, :pswitch_data_60

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 280
    :pswitch_5
    const-string v0, "setRoleVisibleForTestAsUser"

    return-object v0

    .line 276
    :pswitch_8
    const-string v0, "isRoleVisibleForTestAsUser"

    return-object v0

    .line 272
    :pswitch_b
    const-string v0, "setDefaultHoldersForTestAsUser"

    return-object v0

    .line 268
    :pswitch_e
    const-string v0, "getDefaultHoldersForTestAsUser"

    return-object v0

    .line 264
    :pswitch_11
    const-string v0, "isApplicationVisibleForRoleAsUser"

    return-object v0

    .line 260
    :pswitch_14
    const-string v0, "isRoleVisibleAsUser"

    return-object v0

    .line 256
    :pswitch_17
    const-string v0, "getEmergencyRoleHolder"

    return-object v0

    .line 252
    :pswitch_1a
    const-string v0, "getSmsRoleHolder"

    return-object v0

    .line 248
    :pswitch_1d
    const-string v0, "setBrowserRoleHolder"

    return-object v0

    .line 244
    :pswitch_20
    const-string v0, "getBrowserRoleHolder"

    return-object v0

    .line 240
    :pswitch_23
    const-string v0, "getHeldRolesFromControllerAsUser"

    return-object v0

    .line 236
    :pswitch_26
    const-string v0, "removeRoleHolderFromControllerAsUser"

    return-object v0

    .line 232
    :pswitch_29
    const-string v0, "addRoleHolderFromControllerAsUser"

    return-object v0

    .line 228
    :pswitch_2c
    const-string v0, "setRoleNamesFromControllerAsUser"

    return-object v0

    .line 224
    :pswitch_2f
    const-string v0, "setRoleFallbackEnabledAsUser"

    return-object v0

    .line 220
    :pswitch_32
    const-string v0, "isRoleFallbackEnabledAsUser"

    return-object v0

    .line 216
    :pswitch_35
    const-string v0, "setBypassingRoleQualification"

    return-object v0

    .line 212
    :pswitch_38
    const-string v0, "isBypassingRoleQualification"

    return-object v0

    .line 208
    :pswitch_3b
    const-string v0, "removeOnRoleHoldersChangedListenerAsUser"

    return-object v0

    .line 204
    :pswitch_3e
    const-string v0, "addOnRoleHoldersChangedListenerAsUser"

    return-object v0

    .line 200
    :pswitch_41
    const-string v0, "setActiveUserForRoleAsUser"

    return-object v0

    .line 196
    :pswitch_44
    const-string v0, "getActiveUserForRoleAsUser"

    return-object v0

    .line 192
    :pswitch_47
    const-string v0, "setDefaultApplicationAsUser"

    return-object v0

    .line 188
    :pswitch_4a
    const-string v0, "getDefaultApplicationAsUser"

    return-object v0

    .line 184
    :pswitch_4d
    const-string v0, "clearRoleHoldersAsUser"

    return-object v0

    .line 180
    :pswitch_50
    const-string v0, "removeRoleHolderAsUser"

    return-object v0

    .line 176
    :pswitch_53
    const-string v0, "addRoleHolderAsUser"

    return-object v0

    .line 172
    :pswitch_56
    const-string v0, "getRoleHoldersAsUser"

    return-object v0

    .line 168
    :pswitch_59
    const-string v0, "isRoleHeldAsUser"

    return-object v0

    .line 164
    :pswitch_5c
    const-string v0, "isRoleAvailableAsUser"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
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

    .line 155
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1255
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 291
    invoke-static {p1}, Landroid/app/role/IRoleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const-string v6, "android.app.role.IRoleManager"

    .line 296
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 297
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 300
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return v7

    .line 303
    :cond_16
    packed-switch p1, :pswitch_data_296

    .line 653
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 642
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 646
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->setRoleVisibleForTestAsUser(Ljava/lang/String;ZI)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_295

    .line 631
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->isRoleVisibleForTestAsUser(Ljava/lang/String;I)Z

    move-result v3

    .line 635
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 637
    goto/16 :goto_295

    .line 619
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 621
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 623
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 624
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->setDefaultHoldersForTestAsUser(Ljava/lang/String;Ljava/util/List;I)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    goto/16 :goto_295

    .line 608
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg2":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->getDefaultHoldersForTestAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 612
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 614
    goto/16 :goto_295

    .line 595
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 600
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->isApplicationVisibleForRoleAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 601
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 603
    goto/16 :goto_295

    .line 584
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 586
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->isRoleVisibleAsUser(Ljava/lang/String;I)Z

    move-result v3

    .line 588
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    goto/16 :goto_295

    .line 575
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/role/IRoleManager$Stub;->getEmergencyRoleHolder(I)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    goto/16 :goto_295

    .line 566
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 567
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/role/IRoleManager$Stub;->getSmsRoleHolder(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    goto/16 :goto_295

    .line 555
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 558
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->setBrowserRoleHolder(Ljava/lang/String;I)Z

    move-result v3

    .line 559
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 561
    goto/16 :goto_295

    .line 546
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/role/IRoleManager$Stub;->getBrowserRoleHolder(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    goto/16 :goto_295

    .line 535
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->getHeldRolesFromControllerAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 539
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 541
    goto/16 :goto_295

    .line 522
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 527
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->removeRoleHolderFromControllerAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 528
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    goto/16 :goto_295

    .line 509
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->addRoleHolderFromControllerAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 515
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 517
    goto/16 :goto_295

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 501
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->setRoleNamesFromControllerAsUser(Ljava/util/List;I)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_295

    .line 487
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":I
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 491
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 492
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->setRoleFallbackEnabledAsUser(Ljava/lang/String;ZI)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_295

    .line 476
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 478
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->isRoleFallbackEnabledAsUser(Ljava/lang/String;I)Z

    move-result v3

    .line 480
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 482
    goto/16 :goto_295

    .line 468
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 469
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/app/role/IRoleManager$Stub;->setBypassingRoleQualification(Z)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_295

    .line 460
    .end local v1    # "_arg0":Z
    :pswitch_166
    invoke-virtual {p0}, Landroid/app/role/IRoleManager$Stub;->isBypassingRoleQualification()Z

    move-result v1

    .line 461
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 463
    goto/16 :goto_295

    .line 451
    .end local v1    # "_result":Z
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/role/IOnRoleHoldersChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IOnRoleHoldersChangedListener;

    move-result-object v1

    .line 453
    .local v1, "_arg0":Landroid/app/role/IOnRoleHoldersChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_295

    .line 441
    .end local v1    # "_arg0":Landroid/app/role/IOnRoleHoldersChangedListener;
    .end local v2    # "_arg1":I
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/role/IOnRoleHoldersChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IOnRoleHoldersChangedListener;

    move-result-object v1

    .line 443
    .restart local v1    # "_arg0":Landroid/app/role/IOnRoleHoldersChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->addOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto/16 :goto_295

    .line 427
    .end local v1    # "_arg0":Landroid/app/role/IOnRoleHoldersChangedListener;
    .end local v2    # "_arg1":I
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 434
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/role/IRoleManager$Stub;->setActiveUserForRoleAsUser(Ljava/lang/String;III)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto/16 :goto_295

    .line 416
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->getActiveUserForRoleAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 420
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    goto/16 :goto_295

    .line 400
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 406
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 408
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 409
    .local v5, "_arg4":Landroid/os/RemoteCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/role/IRoleManager$Stub;->setDefaultApplicationAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_295

    .line 389
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->getDefaultApplicationAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    goto/16 :goto_295

    .line 375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg2":I
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 382
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/role/IRoleManager$Stub;->clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    goto/16 :goto_295

    .line 359
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 367
    .local v4, "_arg3":I
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 368
    .restart local v5    # "_arg4":Landroid/os/RemoteCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/role/IRoleManager$Stub;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto :goto_295

    .line 343
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 349
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 351
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/RemoteCallback;

    .line 352
    .restart local v5    # "_arg4":Landroid/os/RemoteCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/role/IRoleManager$Stub;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto :goto_295

    .line 332
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 336
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 338
    goto :goto_295

    .line 319
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_26b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/role/IRoleManager$Stub;->isRoleHeldAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 325
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 327
    goto :goto_295

    .line 308
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/app/role/IRoleManager$Stub;->isRoleAvailableAsUser(Ljava/lang/String;I)Z

    move-result v3

    .line 312
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    nop

    .line 656
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :goto_295
    return v7

    :pswitch_data_296
    .packed-switch 0x1
        :pswitch_282
        :pswitch_26b
        :pswitch_258
        :pswitch_237
        :pswitch_217
        :pswitch_1fb
        :pswitch_1e7
        :pswitch_1c6
        :pswitch_1b2
        :pswitch_19a
        :pswitch_186
        :pswitch_172
        :pswitch_166
        :pswitch_15a
        :pswitch_146
        :pswitch_132
        :pswitch_122
        :pswitch_10a
        :pswitch_f2
        :pswitch_de
        :pswitch_ce
        :pswitch_ba
        :pswitch_aa
        :pswitch_9a
        :pswitch_86
        :pswitch_6e
        :pswitch_5a
        :pswitch_46
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
