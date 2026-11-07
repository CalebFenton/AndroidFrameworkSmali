.class public abstract Landroid/permission/IPermissionManager$Stub;
.super Landroid/os/Binder;
.source "IPermissionManager.java"

# interfaces
.implements Landroid/permission/IPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAllowlistedRestrictedPermission:I = 0xd

.field static final blacklist TRANSACTION_addOnPermissionsChangeListener:I = 0xa

.field static final blacklist TRANSACTION_addPermission:I = 0x5

.field static final blacklist TRANSACTION_checkPermission:I = 0x1e

.field static final blacklist TRANSACTION_checkUidPermission:I = 0x1f

.field static final blacklist TRANSACTION_getAllPermissionGroups:I = 0x1

.field static final blacklist TRANSACTION_getAllPermissionStates:I = 0x20

.field static final blacklist TRANSACTION_getAllowlistedRestrictedPermissions:I = 0xc

.field static final blacklist TRANSACTION_getAutoRevokeExemptionGrantedPackages:I = 0x18

.field static final blacklist TRANSACTION_getAutoRevokeExemptionRequestedPackages:I = 0x17

.field static final blacklist TRANSACTION_getPermissionFlags:I = 0x7

.field static final blacklist TRANSACTION_getPermissionGroupInfo:I = 0x2

.field static final blacklist TRANSACTION_getPermissionInfo:I = 0x3

.field static final blacklist TRANSACTION_getPermissionRequestState:I = 0x21

.field static final blacklist TRANSACTION_getRegisteredAttributionSourceCount:I = 0x1c

.field static final blacklist TRANSACTION_getSplitPermissions:I = 0x14

.field static final blacklist TRANSACTION_grantRuntimePermission:I = 0xf

.field static final blacklist TRANSACTION_isAutoRevokeExempted:I = 0x1a

.field static final blacklist TRANSACTION_isPermissionRevokedByPolicy:I = 0x13

.field static final blacklist TRANSACTION_isRegisteredAttributionSource:I = 0x1d

.field static final blacklist TRANSACTION_queryPermissionsByGroup:I = 0x4

.field static final blacklist TRANSACTION_registerAttributionSource:I = 0x1b

.field static final blacklist TRANSACTION_removeAllowlistedRestrictedPermission:I = 0xe

.field static final blacklist TRANSACTION_removeOnPermissionsChangeListener:I = 0xb

.field static final blacklist TRANSACTION_removePermission:I = 0x6

.field static final blacklist TRANSACTION_revokePostNotificationPermissionWithoutKillForTest:I = 0x11

.field static final blacklist TRANSACTION_revokeRuntimePermission:I = 0x10

.field static final blacklist TRANSACTION_setAutoRevokeExempted:I = 0x19

.field static final blacklist TRANSACTION_shouldShowRequestPermissionRationale:I = 0x12

.field static final blacklist TRANSACTION_startOneTimePermissionSession:I = 0x15

.field static final blacklist TRANSACTION_stopOneTimePermissionSession:I = 0x16

.field static final blacklist TRANSACTION_updatePermissionFlags:I = 0x8

.field static final blacklist TRANSACTION_updatePermissionFlagsForAllApps:I = 0x9


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    nop

    .line 164
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/IPermissionManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    const-string v0, "android.permission.IPermissionManager"

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_d

    .line 158
    iput-object p1, p0, Landroid/permission/IPermissionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 159
    return-void

    .line 156
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 172
    if-nez p0, :cond_4

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_4
    const-string v0, "android.permission.IPermissionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 176
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/permission/IPermissionManager;

    if-eqz v1, :cond_14

    .line 177
    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionManager;

    return-object v1

    .line 179
    :cond_14
    new-instance v1, Landroid/permission/IPermissionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/IPermissionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 188
    packed-switch p0, :pswitch_data_7a

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 320
    :pswitch_5
    const-string v0, "getPermissionRequestState"

    return-object v0

    .line 316
    :pswitch_8
    const-string v0, "getAllPermissionStates"

    return-object v0

    .line 312
    :pswitch_b
    const-string v0, "checkUidPermission"

    return-object v0

    .line 308
    :pswitch_e
    const-string v0, "checkPermission"

    return-object v0

    .line 304
    :pswitch_11
    const-string/jumbo v0, "isRegisteredAttributionSource"

    return-object v0

    .line 300
    :pswitch_15
    const-string v0, "getRegisteredAttributionSourceCount"

    return-object v0

    .line 296
    :pswitch_18
    const-string/jumbo v0, "registerAttributionSource"

    return-object v0

    .line 292
    :pswitch_1c
    const-string/jumbo v0, "isAutoRevokeExempted"

    return-object v0

    .line 288
    :pswitch_20
    const-string/jumbo v0, "setAutoRevokeExempted"

    return-object v0

    .line 284
    :pswitch_24
    const-string v0, "getAutoRevokeExemptionGrantedPackages"

    return-object v0

    .line 280
    :pswitch_27
    const-string v0, "getAutoRevokeExemptionRequestedPackages"

    return-object v0

    .line 276
    :pswitch_2a
    const-string/jumbo v0, "stopOneTimePermissionSession"

    return-object v0

    .line 272
    :pswitch_2e
    const-string/jumbo v0, "startOneTimePermissionSession"

    return-object v0

    .line 268
    :pswitch_32
    const-string/jumbo v0, "getSplitPermissions"

    return-object v0

    .line 264
    :pswitch_36
    const-string/jumbo v0, "isPermissionRevokedByPolicy"

    return-object v0

    .line 260
    :pswitch_3a
    const-string/jumbo v0, "shouldShowRequestPermissionRationale"

    return-object v0

    .line 256
    :pswitch_3e
    const-string/jumbo v0, "revokePostNotificationPermissionWithoutKillForTest"

    return-object v0

    .line 252
    :pswitch_42
    const-string/jumbo v0, "revokeRuntimePermission"

    return-object v0

    .line 248
    :pswitch_46
    const-string/jumbo v0, "grantRuntimePermission"

    return-object v0

    .line 244
    :pswitch_4a
    const-string/jumbo v0, "removeAllowlistedRestrictedPermission"

    return-object v0

    .line 240
    :pswitch_4e
    const-string v0, "addAllowlistedRestrictedPermission"

    return-object v0

    .line 236
    :pswitch_51
    const-string v0, "getAllowlistedRestrictedPermissions"

    return-object v0

    .line 232
    :pswitch_54
    const-string/jumbo v0, "removeOnPermissionsChangeListener"

    return-object v0

    .line 228
    :pswitch_58
    const-string v0, "addOnPermissionsChangeListener"

    return-object v0

    .line 224
    :pswitch_5b
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    return-object v0

    .line 220
    :pswitch_5f
    const-string/jumbo v0, "updatePermissionFlags"

    return-object v0

    .line 216
    :pswitch_63
    const-string v0, "getPermissionFlags"

    return-object v0

    .line 212
    :pswitch_66
    const-string/jumbo v0, "removePermission"

    return-object v0

    .line 208
    :pswitch_6a
    const-string v0, "addPermission"

    return-object v0

    .line 204
    :pswitch_6d
    const-string/jumbo v0, "queryPermissionsByGroup"

    return-object v0

    .line 200
    :pswitch_71
    const-string v0, "getPermissionInfo"

    return-object v0

    .line 196
    :pswitch_74
    const-string v0, "getPermissionGroupInfo"

    return-object v0

    .line 192
    :pswitch_77
    const-string v0, "getAllPermissionGroups"

    return-object v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/permission/PermissionManager$PermissionState;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/permission/PermissionManager$PermissionState;

    .line 760
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 762
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 183
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1474
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 331
    invoke-static {p1}, Landroid/permission/IPermissionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 335
    move-object v8, p3

    const-string v9, "android.permission.IPermissionManager"

    .line 336
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 337
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 340
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    return v10

    .line 343
    :cond_17
    packed-switch p1, :pswitch_data_366

    .line 782
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 769
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 774
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 776
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    goto/16 :goto_364

    .line 747
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 749
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 751
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 752
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 754
    .local v4, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/permission/PermissionManager$PermissionState;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-nez v4, :cond_58

    .line 756
    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_364

    .line 758
    :cond_58
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    new-instance v5, Landroid/permission/IPermissionManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Landroid/permission/IPermissionManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 764
    goto/16 :goto_364

    .line 733
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/permission/PermissionManager$PermissionState;>;"
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 738
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->checkUidPermission(ILjava/lang/String;I)I

    move-result v4

    .line 740
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    goto/16 :goto_364

    .line 717
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 721
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 724
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 726
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    goto/16 :goto_364

    .line 707
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_a3
    sget-object v1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSourceState;

    .line 708
    .local v1, "_arg0":Landroid/content/AttributionSourceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z

    move-result v2

    .line 710
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 712
    goto/16 :goto_364

    .line 697
    .end local v1    # "_arg0":Landroid/content/AttributionSourceState;
    .end local v2    # "_result":Z
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 698
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->getRegisteredAttributionSourceCount(I)I

    move-result v2

    .line 700
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    goto/16 :goto_364

    .line 687
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_cd
    sget-object v1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSourceState;

    .line 688
    .local v1, "_arg0":Landroid/content/AttributionSourceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;

    move-result-object v2

    .line 690
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 692
    goto/16 :goto_364

    .line 675
    .end local v1    # "_arg0":Landroid/content/AttributionSourceState;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 678
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->isAutoRevokeExempted(Ljava/lang/String;I)Z

    move-result v3

    .line 680
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 682
    goto/16 :goto_364

    .line 661
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 665
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->setAutoRevokeExempted(Ljava/lang/String;ZI)Z

    move-result v4

    .line 668
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 670
    goto/16 :goto_364

    .line 651
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;

    move-result-object v2

    .line 654
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 656
    goto/16 :goto_364

    .line 641
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;

    move-result-object v2

    .line 644
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 646
    goto/16 :goto_364

    .line 630
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 633
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->stopOneTimePermissionSession(Ljava/lang/String;I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_364

    .line 613
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 619
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 621
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 622
    .local v6, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/permission/IPermissionManager$Stub;->startOneTimePermissionSession(Ljava/lang/String;IIJJ)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_364

    .line 605
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":J
    :pswitch_16f
    invoke-virtual {p0}, Landroid/permission/IPermissionManager$Stub;->getSplitPermissions()Ljava/util/List;

    move-result-object v1

    .line 606
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 608
    goto/16 :goto_364

    .line 590
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :pswitch_17b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 596
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    .line 599
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    goto/16 :goto_364

    .line 574
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 580
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 581
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    .line 583
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    goto/16 :goto_364

    .line 563
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_1b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto/16 :goto_364

    .line 546
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_1cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 554
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/permission/IPermissionManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_364

    .line 531
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 537
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 538
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    goto/16 :goto_364

    .line 515
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 522
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    .line 524
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    goto/16 :goto_364

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 503
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 505
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 506
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    .line 508
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 510
    goto/16 :goto_364

    .line 485
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 490
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 492
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 494
    goto/16 :goto_364

    .line 476
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/permission/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IOnPermissionsChangeListener;

    move-result-object v1

    .line 477
    .local v1, "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_364

    .line 467
    .end local v1    # "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    :pswitch_273
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/permission/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IOnPermissionsChangeListener;

    move-result-object v1

    .line 468
    .restart local v1    # "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_364

    .line 454
    .end local v1    # "_arg0":Landroid/permission/IOnPermissionsChangeListener;
    :pswitch_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 458
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 459
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_364

    .line 433
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_29d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 441
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 443
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 446
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/permission/IPermissionManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_364

    .line 417
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    :pswitch_2c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 424
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 426
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    goto/16 :goto_364

    .line 408
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_2e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 409
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto :goto_364

    .line 396
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2f2
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 398
    .local v1, "_arg0":Landroid/content/pm/PermissionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 399
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v3

    .line 401
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 403
    goto :goto_364

    .line 384
    .end local v1    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_30c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 389
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 391
    goto :goto_364

    .line 370
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v1, v2, v3}, Landroid/permission/IPermissionManager$Stub;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 377
    .local v4, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 379
    goto :goto_364

    .line 358
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/PermissionInfo;
    :pswitch_33c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1, v2}, Landroid/permission/IPermissionManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    .line 363
    .local v3, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 365
    goto :goto_364

    .line 348
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :pswitch_352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 351
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 353
    nop

    .line 785
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_364
    return v10

    nop

    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_352
        :pswitch_33c
        :pswitch_322
        :pswitch_30c
        :pswitch_2f2
        :pswitch_2e4
        :pswitch_2c5
        :pswitch_29d
        :pswitch_286
        :pswitch_273
        :pswitch_260
        :pswitch_245
        :pswitch_226
        :pswitch_207
        :pswitch_1ec
        :pswitch_1cc
        :pswitch_1b9
        :pswitch_19a
        :pswitch_17b
        :pswitch_16f
        :pswitch_14f
        :pswitch_13c
        :pswitch_129
        :pswitch_116
        :pswitch_fb
        :pswitch_e4
        :pswitch_cd
        :pswitch_ba
        :pswitch_a3
        :pswitch_84
        :pswitch_69
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist startOneTimePermissionSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Landroid/permission/IPermissionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/permission/IPermissionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/permission/IPermissionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1454
    return-void
.end method

.method protected blacklist stopOneTimePermissionSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Landroid/permission/IPermissionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/permission/IPermissionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/permission/IPermissionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1459
    return-void
.end method
