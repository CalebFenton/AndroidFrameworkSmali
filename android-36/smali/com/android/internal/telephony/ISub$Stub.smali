.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final blacklist TRANSACTION_addSubInfo:I = 0xb

.field static final blacklist TRANSACTION_addSubscriptionsIntoGroup:I = 0x17

.field static final blacklist TRANSACTION_canDisablePhysicalSubscription:I = 0x2d

.field static final blacklist TRANSACTION_createSubscriptionGroup:I = 0x12

.field static final greylist-max-o TRANSACTION_getAccessibleSubscriptionInfoList:I = 0x9

.field static final blacklist TRANSACTION_getActiveDataSubscriptionId:I = 0x2c

.field static final greylist-max-o TRANSACTION_getActiveSubIdList:I = 0x26

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCount:I = 0x6

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCountMax:I = 0x7

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x3

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x4

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoList:I = 0x5

.field static final greylist-max-o TRANSACTION_getAllSubInfoList:I = 0x1

.field static final greylist-max-o TRANSACTION_getAvailableSubscriptionInfoList:I = 0x8

.field static final greylist-max-o TRANSACTION_getDefaultDataSubId:I = 0x1e

.field static final greylist-max-o TRANSACTION_getDefaultSmsSubId:I = 0x23

.field static final blacklist TRANSACTION_getDefaultSmsSubIdAsUser:I = 0x24

.field static final greylist-max-o TRANSACTION_getDefaultSubId:I = 0x1b

.field static final blacklist TRANSACTION_getDefaultSubIdAsUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDefaultVoiceSubId:I = 0x20

.field static final blacklist TRANSACTION_getDefaultVoiceSubIdAsUser:I = 0x21

.field static final blacklist TRANSACTION_getEnabledSubscriptionId:I = 0x2a

.field static final blacklist TRANSACTION_getOpportunisticSubscriptions:I = 0x15

.field static final greylist-max-o TRANSACTION_getPhoneId:I = 0x1d

.field static final blacklist TRANSACTION_getPhoneNumber:I = 0x31

.field static final blacklist TRANSACTION_getPhoneNumberFromFirstAvailableSource:I = 0x32

.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x14

.field static final greylist-max-o TRANSACTION_getSlotIndex:I = 0x19

.field static final greylist-max-o TRANSACTION_getSubId:I = 0x1a

.field static final blacklist TRANSACTION_getSubscriptionInfoListAssociatedWithUser:I = 0x3a

.field static final greylist-max-o TRANSACTION_getSubscriptionProperty:I = 0x28

.field static final blacklist TRANSACTION_getSubscriptionUserHandle:I = 0x37

.field static final blacklist TRANSACTION_getSubscriptionsInGroup:I = 0x18

.field static final greylist-max-o TRANSACTION_isActiveSubId:I = 0x2b

.field static final blacklist TRANSACTION_isSubscriptionAssociatedWithCallingUser:I = 0x38

.field static final blacklist TRANSACTION_isSubscriptionAssociatedWithUser:I = 0x39

.field static final blacklist TRANSACTION_isSubscriptionEnabled:I = 0x29

.field static final blacklist TRANSACTION_removeSubInfo:I = 0xc

.field static final blacklist TRANSACTION_removeSubscriptionsFromGroup:I = 0x16

.field static final greylist-max-o TRANSACTION_requestEmbeddedSubscriptionInfoListRefresh:I = 0xa

.field static final blacklist TRANSACTION_restoreAllSimSpecificSettingsFromBackup:I = 0x3b

.field static final greylist-max-o TRANSACTION_setDataRoaming:I = 0x10

.field static final greylist-max-o TRANSACTION_setDefaultDataSubId:I = 0x1f

.field static final greylist-max-o TRANSACTION_setDefaultSmsSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_setDefaultVoiceSubId:I = 0x22

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharing:I = 0x2f

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharingContacts:I = 0x30

.field static final greylist-max-o TRANSACTION_setDisplayNameUsingSrc:I = 0xe

.field static final greylist-max-o TRANSACTION_setDisplayNumber:I = 0xf

.field static final blacklist TRANSACTION_setGroupOwner:I = 0x35

.field static final greylist-max-o TRANSACTION_setIconTint:I = 0xd

.field static final blacklist TRANSACTION_setOpportunistic:I = 0x11

.field static final blacklist TRANSACTION_setPhoneNumber:I = 0x33

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x13

.field static final greylist-max-o TRANSACTION_setSubscriptionProperty:I = 0x27

.field static final blacklist TRANSACTION_setSubscriptionUserHandle:I = 0x36

.field static final blacklist TRANSACTION_setTransferStatus:I = 0x3c

.field static final blacklist TRANSACTION_setUiccApplicationsEnabled:I = 0x2e

.field static final blacklist TRANSACTION_setUsageSetting:I = 0x34


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    nop

    .line 509
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 508
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ISub$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 510
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 498
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 499
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 500
    if-eqz p1, :cond_d

    .line 503
    iput-object p1, p0, Lcom/android/internal/telephony/ISub$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 504
    return-void

    .line 501
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 517
    if-nez p0, :cond_4

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_4
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 521
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_14

    .line 522
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISub;

    return-object v1

    .line 524
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 533
    packed-switch p0, :pswitch_data_d0

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 773
    :pswitch_5
    const-string/jumbo v0, "setTransferStatus"

    return-object v0

    .line 769
    :pswitch_9
    const-string/jumbo v0, "restoreAllSimSpecificSettingsFromBackup"

    return-object v0

    .line 765
    :pswitch_d
    const-string v0, "getSubscriptionInfoListAssociatedWithUser"

    return-object v0

    .line 761
    :pswitch_10
    const-string v0, "isSubscriptionAssociatedWithUser"

    return-object v0

    .line 757
    :pswitch_13
    const-string v0, "isSubscriptionAssociatedWithCallingUser"

    return-object v0

    .line 753
    :pswitch_16
    const-string v0, "getSubscriptionUserHandle"

    return-object v0

    .line 749
    :pswitch_19
    const-string/jumbo v0, "setSubscriptionUserHandle"

    return-object v0

    .line 745
    :pswitch_1d
    const-string/jumbo v0, "setGroupOwner"

    return-object v0

    .line 741
    :pswitch_21
    const-string/jumbo v0, "setUsageSetting"

    return-object v0

    .line 737
    :pswitch_25
    const-string/jumbo v0, "setPhoneNumber"

    return-object v0

    .line 733
    :pswitch_29
    const-string v0, "getPhoneNumberFromFirstAvailableSource"

    return-object v0

    .line 729
    :pswitch_2c
    const-string v0, "getPhoneNumber"

    return-object v0

    .line 725
    :pswitch_2f
    const-string/jumbo v0, "setDeviceToDeviceStatusSharingContacts"

    return-object v0

    .line 721
    :pswitch_33
    const-string/jumbo v0, "setDeviceToDeviceStatusSharing"

    return-object v0

    .line 717
    :pswitch_37
    const-string/jumbo v0, "setUiccApplicationsEnabled"

    return-object v0

    .line 713
    :pswitch_3b
    const-string v0, "canDisablePhysicalSubscription"

    return-object v0

    .line 709
    :pswitch_3e
    const-string v0, "getActiveDataSubscriptionId"

    return-object v0

    .line 705
    :pswitch_41
    const-string v0, "isActiveSubId"

    return-object v0

    .line 701
    :pswitch_44
    const-string v0, "getEnabledSubscriptionId"

    return-object v0

    .line 697
    :pswitch_47
    const-string v0, "isSubscriptionEnabled"

    return-object v0

    .line 693
    :pswitch_4a
    const-string v0, "getSubscriptionProperty"

    return-object v0

    .line 689
    :pswitch_4d
    const-string/jumbo v0, "setSubscriptionProperty"

    return-object v0

    .line 685
    :pswitch_51
    const-string v0, "getActiveSubIdList"

    return-object v0

    .line 681
    :pswitch_54
    const-string/jumbo v0, "setDefaultSmsSubId"

    return-object v0

    .line 677
    :pswitch_58
    const-string v0, "getDefaultSmsSubIdAsUser"

    return-object v0

    .line 673
    :pswitch_5b
    const-string v0, "getDefaultSmsSubId"

    return-object v0

    .line 669
    :pswitch_5e
    const-string/jumbo v0, "setDefaultVoiceSubId"

    return-object v0

    .line 665
    :pswitch_62
    const-string v0, "getDefaultVoiceSubIdAsUser"

    return-object v0

    .line 661
    :pswitch_65
    const-string v0, "getDefaultVoiceSubId"

    return-object v0

    .line 657
    :pswitch_68
    const-string/jumbo v0, "setDefaultDataSubId"

    return-object v0

    .line 653
    :pswitch_6c
    const-string v0, "getDefaultDataSubId"

    return-object v0

    .line 649
    :pswitch_6f
    const-string v0, "getPhoneId"

    return-object v0

    .line 645
    :pswitch_72
    const-string v0, "getDefaultSubIdAsUser"

    return-object v0

    .line 641
    :pswitch_75
    const-string v0, "getDefaultSubId"

    return-object v0

    .line 637
    :pswitch_78
    const-string v0, "getSubId"

    return-object v0

    .line 633
    :pswitch_7b
    const-string v0, "getSlotIndex"

    return-object v0

    .line 629
    :pswitch_7e
    const-string v0, "getSubscriptionsInGroup"

    return-object v0

    .line 625
    :pswitch_81
    const-string v0, "addSubscriptionsIntoGroup"

    return-object v0

    .line 621
    :pswitch_84
    const-string/jumbo v0, "removeSubscriptionsFromGroup"

    return-object v0

    .line 617
    :pswitch_88
    const-string v0, "getOpportunisticSubscriptions"

    return-object v0

    .line 613
    :pswitch_8b
    const-string v0, "getPreferredDataSubscriptionId"

    return-object v0

    .line 609
    :pswitch_8e
    const-string/jumbo v0, "setPreferredDataSubscriptionId"

    return-object v0

    .line 605
    :pswitch_92
    const-string v0, "createSubscriptionGroup"

    return-object v0

    .line 601
    :pswitch_95
    const-string/jumbo v0, "setOpportunistic"

    return-object v0

    .line 597
    :pswitch_99
    const-string/jumbo v0, "setDataRoaming"

    return-object v0

    .line 593
    :pswitch_9d
    const-string/jumbo v0, "setDisplayNumber"

    return-object v0

    .line 589
    :pswitch_a1
    const-string/jumbo v0, "setDisplayNameUsingSrc"

    return-object v0

    .line 585
    :pswitch_a5
    const-string/jumbo v0, "setIconTint"

    return-object v0

    .line 581
    :pswitch_a9
    const-string/jumbo v0, "removeSubInfo"

    return-object v0

    .line 577
    :pswitch_ad
    const-string v0, "addSubInfo"

    return-object v0

    .line 573
    :pswitch_b0
    const-string/jumbo v0, "requestEmbeddedSubscriptionInfoListRefresh"

    return-object v0

    .line 569
    :pswitch_b4
    const-string v0, "getAccessibleSubscriptionInfoList"

    return-object v0

    .line 565
    :pswitch_b7
    const-string v0, "getAvailableSubscriptionInfoList"

    return-object v0

    .line 561
    :pswitch_ba
    const-string v0, "getActiveSubInfoCountMax"

    return-object v0

    .line 557
    :pswitch_bd
    const-string v0, "getActiveSubInfoCount"

    return-object v0

    .line 553
    :pswitch_c0
    const-string v0, "getActiveSubscriptionInfoList"

    return-object v0

    .line 549
    :pswitch_c3
    const-string v0, "getActiveSubscriptionInfoForSimSlotIndex"

    return-object v0

    .line 545
    :pswitch_c6
    const-string v0, "getActiveSubscriptionInfoForIccId"

    return-object v0

    .line 541
    :pswitch_c9
    const-string v0, "getActiveSubscriptionInfo"

    return-object v0

    .line 537
    :pswitch_cc
    const-string v0, "getAllSubInfoList"

    return-object v0

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b0
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 528
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2907
    const/16 v0, 0x3b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 784
    invoke-static {p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 788
    const-string v6, "com.android.internal.telephony.ISub"

    .line 789
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 790
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 793
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    return v7

    .line 796
    :cond_16
    packed-switch p1, :pswitch_data_52c

    .line 1482
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1472
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1474
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1475
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1476
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setTransferStatus(II)V

    .line 1477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    goto/16 :goto_52b

    .line 1463
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1464
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1465
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->restoreAllSimSpecificSettingsFromBackup([B)V

    .line 1466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    goto/16 :goto_52b

    .line 1453
    .end local v1    # "_arg0":[B
    :pswitch_40
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1454
    .local v1, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 1456
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1458
    goto/16 :goto_52b

    .line 1441
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1443
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1444
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result v3

    .line 1446
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1448
    goto/16 :goto_52b

    .line 1427
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1429
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1432
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionAssociatedWithCallingUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1434
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1436
    goto/16 :goto_52b

    .line 1417
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1418
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1419
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1420
    .local v2, "_result":Landroid/os/UserHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1422
    goto/16 :goto_52b

    .line 1405
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/UserHandle;
    :pswitch_a0
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1407
    .local v1, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1408
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1409
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionUserHandle(Landroid/os/UserHandle;I)I

    move-result v3

    .line 1410
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    goto/16 :goto_52b

    .line 1394
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1396
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1397
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setGroupOwner(ILjava/lang/String;)V

    .line 1399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    goto/16 :goto_52b

    .line 1380
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1382
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1384
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1385
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setUsageSetting(IILjava/lang/String;)I

    move-result v4

    .line 1387
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    goto/16 :goto_52b

    .line 1363
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1365
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1367
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1369
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1371
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1372
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISub$Stub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    goto/16 :goto_52b

    .line 1349
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1351
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1353
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1354
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1356
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    goto/16 :goto_52b

    .line 1333
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1335
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1337
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1339
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1340
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1341
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1342
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1344
    goto/16 :goto_52b

    .line 1321
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1324
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v3

    .line 1326
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    goto/16 :goto_52b

    .line 1309
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1311
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1312
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharing(II)I

    move-result v3

    .line 1314
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    goto/16 :goto_52b

    .line 1298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1300
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1301
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setUiccApplicationsEnabled(ZI)V

    .line 1303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    goto/16 :goto_52b

    .line 1290
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_184
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->canDisablePhysicalSubscription()Z

    move-result v1

    .line 1291
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1293
    goto/16 :goto_52b

    .line 1283
    .end local v1    # "_result":Z
    :pswitch_190
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveDataSubscriptionId()I

    move-result v1

    .line 1284
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    goto/16 :goto_52b

    .line 1270
    .end local v1    # "_result":I
    :pswitch_19c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1272
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1274
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1277
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1279
    goto/16 :goto_52b

    .line 1260
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1261
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getEnabledSubscriptionId(I)I

    move-result v2

    .line 1263
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    goto/16 :goto_52b

    .line 1250
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1251
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionEnabled(I)Z

    move-result v2

    .line 1253
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    goto/16 :goto_52b

    .line 1234
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1236
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1238
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1240
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1241
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1243
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1245
    goto/16 :goto_52b

    .line 1221
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1223
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1225
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1227
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    goto/16 :goto_52b

    .line 1211
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1212
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList(Z)[I

    move-result-object v2

    .line 1214
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1216
    goto/16 :goto_52b

    .line 1202
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":[I
    :pswitch_226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1203
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_52b

    .line 1192
    .end local v1    # "_arg0":I
    :pswitch_235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubIdAsUser(I)I

    move-result v2

    .line 1195
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    goto/16 :goto_52b

    .line 1184
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_248
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    move-result v1

    .line 1185
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    goto/16 :goto_52b

    .line 1176
    .end local v1    # "_result":I
    :pswitch_254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1177
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_52b

    .line 1166
    .end local v1    # "_arg0":I
    :pswitch_263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1167
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubIdAsUser(I)I

    move-result v2

    .line 1169
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    goto/16 :goto_52b

    .line 1158
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_276
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    move-result v1

    .line 1159
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    goto/16 :goto_52b

    .line 1150
    .end local v1    # "_result":I
    :pswitch_282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1151
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_52b

    .line 1142
    .end local v1    # "_arg0":I
    :pswitch_291
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    move-result v1

    .line 1143
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    goto/16 :goto_52b

    .line 1133
    .end local v1    # "_result":I
    :pswitch_29d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1134
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    move-result v2

    .line 1136
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    goto/16 :goto_52b

    .line 1123
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_2b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1124
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubIdAsUser(I)I

    move-result v2

    .line 1126
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    goto/16 :goto_52b

    .line 1115
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_2c3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    move-result v1

    .line 1116
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    goto/16 :goto_52b

    .line 1106
    .end local v1    # "_result":I
    :pswitch_2cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1107
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)I

    move-result v2

    .line 1109
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    goto/16 :goto_52b

    .line 1096
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_2e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1097
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSlotIndex(I)I

    move-result v2

    .line 1099
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    goto/16 :goto_52b

    .line 1082
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_2f5
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 1084
    .local v1, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1087
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1089
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1091
    goto/16 :goto_52b

    .line 1069
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_314
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1071
    .local v1, "_arg0":[I
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1073
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1074
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    goto/16 :goto_52b

    .line 1056
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_32f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1058
    .restart local v1    # "_arg0":[I
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1060
    .restart local v2    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1061
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_52b

    .line 1044
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_34a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1049
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1051
    goto/16 :goto_52b

    .line 1036
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getPreferredDataSubscriptionId()I

    move-result v1

    .line 1037
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    goto/16 :goto_52b

    .line 1024
    .end local v1    # "_result":I
    :pswitch_36d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1026
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1028
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v3

    .line 1029
    .local v3, "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    goto/16 :goto_52b

    .line 1012
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    :pswitch_388
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1014
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1017
    .local v3, "_result":Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1019
    goto/16 :goto_52b

    .line 998
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ParcelUuid;
    :pswitch_39f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1000
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1002
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v4

    .line 1005
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    goto/16 :goto_52b

    .line 986
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 988
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

    move-result v3

    .line 991
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_52b

    .line 974
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_3d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 977
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v3

    .line 979
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    goto/16 :goto_52b

    .line 960
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_3e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 962
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 965
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v4

    .line 967
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    goto/16 :goto_52b

    .line 948
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 951
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setIconTint(II)I

    move-result v3

    .line 953
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    goto/16 :goto_52b

    .line 936
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_41a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->removeSubInfo(Ljava/lang/String;I)Z

    move-result v3

    .line 941
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 943
    goto/16 :goto_52b

    .line 920
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 922
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 926
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 927
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    .line 929
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_52b

    .line 912
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 913
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 915
    goto/16 :goto_52b

    .line 902
    .end local v1    # "_arg0":I
    :pswitch_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 905
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 907
    goto/16 :goto_52b

    .line 890
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_46f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 895
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 897
    goto/16 :goto_52b

    .line 882
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_486
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCountMax()I

    move-result v1

    .line 883
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    goto/16 :goto_52b

    .line 869
    .end local v1    # "_result":I
    :pswitch_492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 873
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 874
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    .line 876
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    goto/16 :goto_52b

    .line 855
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":I
    :pswitch_4ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 859
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 860
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 862
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 864
    goto :goto_52b

    .line 841
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_4c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 843
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 845
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 848
    .local v4, "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 850
    goto :goto_52b

    .line 827
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_4e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 831
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 832
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 834
    .restart local v4    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 836
    goto :goto_52b

    .line 813
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_4fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 815
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 817
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 818
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 820
    .restart local v4    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 822
    goto :goto_52b

    .line 801
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 804
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 806
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 808
    nop

    .line 1485
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_52b
    return v7

    :pswitch_data_52c
    .packed-switch 0x1
        :pswitch_515
        :pswitch_4fb
        :pswitch_4e1
        :pswitch_4c7
        :pswitch_4ad
        :pswitch_492
        :pswitch_486
        :pswitch_46f
        :pswitch_45c
        :pswitch_450
        :pswitch_431
        :pswitch_41a
        :pswitch_403
        :pswitch_3e8
        :pswitch_3d1
        :pswitch_3ba
        :pswitch_39f
        :pswitch_388
        :pswitch_36d
        :pswitch_361
        :pswitch_34a
        :pswitch_32f
        :pswitch_314
        :pswitch_2f5
        :pswitch_2e2
        :pswitch_2cf
        :pswitch_2c3
        :pswitch_2b0
        :pswitch_29d
        :pswitch_291
        :pswitch_282
        :pswitch_276
        :pswitch_263
        :pswitch_254
        :pswitch_248
        :pswitch_235
        :pswitch_226
        :pswitch_213
        :pswitch_1fc
        :pswitch_1dd
        :pswitch_1ca
        :pswitch_1b7
        :pswitch_19c
        :pswitch_190
        :pswitch_184
        :pswitch_171
        :pswitch_15a
        :pswitch_143
        :pswitch_124
        :pswitch_109
        :pswitch_e9
        :pswitch_ce
        :pswitch_bb
        :pswitch_a0
        :pswitch_8d
        :pswitch_72
        :pswitch_57
        :pswitch_40
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setTransferStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/ISub$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ISub$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ISub$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2903
    return-void
.end method
