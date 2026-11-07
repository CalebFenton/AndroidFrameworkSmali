.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final greylist-max-o TRANSACTION_addUidPolicy:I = 0x2

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x18

.field static final blacklist TRANSACTION_getMultipathPreference:I = 0x11

.field static final greylist-max-o TRANSACTION_getNetworkPolicies:I = 0x9

.field static final greylist-max-o TRANSACTION_getRestrictBackground:I = 0xc

.field static final greylist-max-o TRANSACTION_getRestrictBackgroundByCaller:I = 0xd

.field static final blacklist TRANSACTION_getRestrictBackgroundStatus:I = 0xe

.field static final blacklist TRANSACTION_getSubscriptionPlan:I = 0x12

.field static final greylist-max-o TRANSACTION_getSubscriptionPlans:I = 0x14

.field static final greylist-max-o TRANSACTION_getSubscriptionPlansOwner:I = 0x16

.field static final greylist-max-o TRANSACTION_getUidPolicy:I = 0x4

.field static final greylist-max-o TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final greylist-max-o TRANSACTION_isUidNetworkingBlocked:I = 0x19

.field static final blacklist TRANSACTION_isUidRestrictedOnMeteredNetworks:I = 0x1a

.field static final blacklist TRANSACTION_notifyStatsProviderWarningOrLimitReached:I = 0x13

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x6

.field static final greylist-max-o TRANSACTION_removeUidPolicy:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceIdleMode:I = 0xf

.field static final greylist-max-o TRANSACTION_setNetworkPolicies:I = 0x8

.field static final greylist-max-o TRANSACTION_setRestrictBackground:I = 0xb

.field static final greylist-max-o TRANSACTION_setSubscriptionOverride:I = 0x17

.field static final greylist-max-o TRANSACTION_setSubscriptionPlans:I = 0x15

.field static final greylist-max-o TRANSACTION_setUidPolicy:I = 0x1

.field static final greylist-max-o TRANSACTION_setWifiMeteredOverride:I = 0x10

.field static final greylist-max-o TRANSACTION_snoozeLimit:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    nop

    .line 142
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 143
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 132
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_d

    .line 136
    iput-object p1, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 137
    return-void

    .line 134
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 150
    if-nez p0, :cond_4

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_4
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 154
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_14

    .line 155
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkPolicyManager;

    return-object v1

    .line 157
    :cond_14
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 166
    packed-switch p0, :pswitch_data_66

    .line 274
    const/4 v0, 0x0

    return-object v0

    .line 270
    :pswitch_5
    const-string/jumbo v0, "isUidRestrictedOnMeteredNetworks"

    return-object v0

    .line 266
    :pswitch_9
    const-string/jumbo v0, "isUidNetworkingBlocked"

    return-object v0

    .line 262
    :pswitch_d
    const-string v0, "factoryReset"

    return-object v0

    .line 258
    :pswitch_10
    const-string/jumbo v0, "setSubscriptionOverride"

    return-object v0

    .line 254
    :pswitch_14
    const-string/jumbo v0, "getSubscriptionPlansOwner"

    return-object v0

    .line 250
    :pswitch_18
    const-string/jumbo v0, "setSubscriptionPlans"

    return-object v0

    .line 246
    :pswitch_1c
    const-string/jumbo v0, "getSubscriptionPlans"

    return-object v0

    .line 242
    :pswitch_20
    const-string/jumbo v0, "notifyStatsProviderWarningOrLimitReached"

    return-object v0

    .line 238
    :pswitch_24
    const-string/jumbo v0, "getSubscriptionPlan"

    return-object v0

    .line 234
    :pswitch_28
    const-string v0, "getMultipathPreference"

    return-object v0

    .line 230
    :pswitch_2b
    const-string/jumbo v0, "setWifiMeteredOverride"

    return-object v0

    .line 226
    :pswitch_2f
    const-string/jumbo v0, "setDeviceIdleMode"

    return-object v0

    .line 222
    :pswitch_33
    const-string v0, "getRestrictBackgroundStatus"

    return-object v0

    .line 218
    :pswitch_36
    const-string v0, "getRestrictBackgroundByCaller"

    return-object v0

    .line 214
    :pswitch_39
    const-string v0, "getRestrictBackground"

    return-object v0

    .line 210
    :pswitch_3c
    const-string/jumbo v0, "setRestrictBackground"

    return-object v0

    .line 206
    :pswitch_40
    const-string/jumbo v0, "snoozeLimit"

    return-object v0

    .line 202
    :pswitch_44
    const-string v0, "getNetworkPolicies"

    return-object v0

    .line 198
    :pswitch_47
    const-string/jumbo v0, "setNetworkPolicies"

    return-object v0

    .line 194
    :pswitch_4b
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 190
    :pswitch_4f
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 186
    :pswitch_53
    const-string/jumbo v0, "getUidsWithPolicy"

    return-object v0

    .line 182
    :pswitch_57
    const-string/jumbo v0, "getUidPolicy"

    return-object v0

    .line 178
    :pswitch_5b
    const-string/jumbo v0, "removeUidPolicy"

    return-object v0

    .line 174
    :pswitch_5f
    const-string v0, "addUidPolicy"

    return-object v0

    .line 170
    :pswitch_62
    const-string/jumbo v0, "setUidPolicy"

    return-object v0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1041
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 161
    return-object p0
.end method

.method protected blacklist factoryReset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1107
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1117
    const/16 v0, 0x19

    return v0
.end method

.method protected blacklist getNetworkPolicies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1068
    return-void
.end method

.method protected blacklist getRestrictBackgroundByCaller_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1084
    return-void
.end method

.method protected blacklist getRestrictBackground_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1079
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 281
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1051
    return-void
.end method

.method protected blacklist getUidsWithPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1056
    return-void
.end method

.method protected blacklist isUidRestrictedOnMeteredNetworks_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1113
    return-void
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

    .line 285
    move-object v8, p3

    const-string v9, "android.net.INetworkPolicyManager"

    .line 286
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 287
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 290
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    return v10

    .line 293
    :cond_17
    packed-switch p1, :pswitch_data_210

    .line 562
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 553
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v2

    .line 556
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    goto/16 :goto_20f

    .line 541
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 544
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v3

    .line 546
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 548
    goto/16 :goto_20f

    .line 532
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    goto/16 :goto_20f

    .line 513
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 519
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 521
    .local v4, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 523
    .local v5, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    goto/16 :goto_20f

    .line 503
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":Ljava/lang/String;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    goto/16 :goto_20f

    .line 488
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    .line 492
    .local v2, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 494
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    goto/16 :goto_20f

    .line 476
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v3

    .line 481
    .local v3, "_result":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 483
    goto/16 :goto_20f

    .line 469
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/telephony/SubscriptionPlan;
    :pswitch_c6
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->notifyStatsProviderWarningOrLimitReached()V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_20f

    .line 460
    :pswitch_ce
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 461
    .local v1, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 463
    .local v2, "_result":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 465
    goto/16 :goto_20f

    .line 450
    .end local v1    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v2    # "_result":Landroid/telephony/SubscriptionPlan;
    :pswitch_e5
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 451
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v2

    .line 453
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    goto/16 :goto_20f

    .line 439
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_result":I
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    goto/16 :goto_20f

    .line 430
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 431
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_20f

    .line 420
    .end local v1    # "_arg0":Z
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundStatus(I)I

    move-result v2

    .line 423
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    goto/16 :goto_20f

    .line 412
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_131
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v1

    .line 413
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    goto/16 :goto_20f

    .line 405
    .end local v1    # "_result":I
    :pswitch_13d
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v1

    .line 406
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 408
    goto/16 :goto_20f

    .line 397
    .end local v1    # "_result":Z
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 398
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    goto/16 :goto_20f

    .line 388
    .end local v1    # "_arg0":Z
    :pswitch_158
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 389
    .local v1, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_20f

    .line 378
    .end local v1    # "_arg0":Landroid/net/NetworkTemplate;
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 381
    .local v2, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 383
    goto/16 :goto_20f

    .line 369
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/net/NetworkPolicy;
    :pswitch_17e
    sget-object v1, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkPolicy;

    .line 370
    .local v1, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto/16 :goto_20f

    .line 360
    .end local v1    # "_arg0":[Landroid/net/NetworkPolicy;
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v1

    .line 361
    .local v1, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    goto :goto_20f

    .line 351
    .end local v1    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v1

    .line 352
    .restart local v1    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto :goto_20f

    .line 341
    .end local v1    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_1b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 342
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v2

    .line 344
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 346
    goto :goto_20f

    .line 331
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[I
    :pswitch_1c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v2

    .line 334
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto :goto_20f

    .line 320
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto :goto_20f

    .line 309
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto :goto_20f

    .line 298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    nop

    .line 565
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :goto_20f
    return v10

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_1fd
        :pswitch_1eb
        :pswitch_1d9
        :pswitch_1c7
        :pswitch_1b5
        :pswitch_1a3
        :pswitch_191
        :pswitch_17e
        :pswitch_16b
        :pswitch_158
        :pswitch_149
        :pswitch_13d
        :pswitch_131
        :pswitch_11e
        :pswitch_10f
        :pswitch_fc
        :pswitch_e5
        :pswitch_ce
        :pswitch_c6
        :pswitch_af
        :pswitch_8f
        :pswitch_7c
        :pswitch_58
        :pswitch_49
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist removeUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1046
    return-void
.end method

.method protected blacklist setDeviceIdleMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1090
    return-void
.end method

.method protected blacklist setNetworkPolicies_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1063
    return-void
.end method

.method protected blacklist setUidPolicy_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1036
    return-void
.end method

.method protected blacklist setWifiMeteredOverride_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1095
    return-void
.end method

.method protected blacklist snoozeLimit_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Landroid/net/INetworkPolicyManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/net/INetworkPolicyManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1073
    return-void
.end method
