.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final blacklist TRANSACTION_clearBroadcastEvents:I = 0x25

.field static final blacklist TRANSACTION_clearBroadcastResponseStats:I = 0x24

.field static final blacklist TRANSACTION_forceUsageSourceSettingRead:I = 0x21

.field static final blacklist TRANSACTION_getAppMinStandbyBucket:I = 0x12

.field static final greylist-max-o TRANSACTION_getAppStandbyBucket:I = 0xe

.field static final greylist-max-o TRANSACTION_getAppStandbyBuckets:I = 0x10

.field static final blacklist TRANSACTION_getAppStandbyConstant:I = 0x27

.field static final blacklist TRANSACTION_getLastTimeAnyComponentUsed:I = 0x22

.field static final blacklist TRANSACTION_getUsageSource:I = 0x20

.field static final greylist-max-o TRANSACTION_isAppInactive:I = 0xb

.field static final blacklist TRANSACTION_isAppStandbyEnabled:I = 0xa

.field static final blacklist TRANSACTION_isPackageExemptedFromBroadcastResponseStats:I = 0x26

.field static final greylist-max-o TRANSACTION_onCarrierPrivilegedAppsChanged:I = 0xc

.field static final blacklist TRANSACTION_queryBroadcastResponseStats:I = 0x23

.field static final greylist-max-o TRANSACTION_queryConfigurationStats:I = 0x2

.field static final greylist-max-o TRANSACTION_queryEventStats:I = 0x3

.field static final greylist-max-o TRANSACTION_queryEvents:I = 0x4

.field static final greylist-max-o TRANSACTION_queryEventsForPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_queryEventsForPackageForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_queryEventsForUser:I = 0x6

.field static final blacklist TRANSACTION_queryEventsWithFilter:I = 0x8

.field static final greylist-max-o TRANSACTION_queryUsageStats:I = 0x1

.field static final blacklist TRANSACTION_registerAppUsageLimitObserver:I = 0x19

.field static final greylist-max-o TRANSACTION_registerAppUsageObserver:I = 0x15

.field static final blacklist TRANSACTION_registerUsageSessionObserver:I = 0x17

.field static final greylist-max-o TRANSACTION_reportChooserSelection:I = 0xd

.field static final blacklist TRANSACTION_reportPastUsageStart:I = 0x1c

.field static final blacklist TRANSACTION_reportUsageStart:I = 0x1b

.field static final blacklist TRANSACTION_reportUsageStop:I = 0x1d

.field static final blacklist TRANSACTION_reportUserInteraction:I = 0x1e

.field static final blacklist TRANSACTION_reportUserInteractionWithBundle:I = 0x1f

.field static final greylist-max-o TRANSACTION_setAppInactive:I = 0x9

.field static final greylist-max-o TRANSACTION_setAppStandbyBucket:I = 0xf

.field static final greylist-max-o TRANSACTION_setAppStandbyBuckets:I = 0x11

.field static final blacklist TRANSACTION_setEstimatedLaunchTime:I = 0x13

.field static final blacklist TRANSACTION_setEstimatedLaunchTimes:I = 0x14

.field static final blacklist TRANSACTION_unregisterAppUsageLimitObserver:I = 0x1a

.field static final greylist-max-o TRANSACTION_unregisterAppUsageObserver:I = 0x16

.field static final blacklist TRANSACTION_unregisterUsageSessionObserver:I = 0x18


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    nop

    .line 177
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 178
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 166
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 167
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_d

    .line 171
    iput-object p1, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 172
    return-void

    .line 169
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_4
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 189
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_14

    .line 190
    move-object v1, v0

    check-cast v1, Landroid/app/usage/IUsageStatsManager;

    return-object v1

    .line 192
    :cond_14
    new-instance v1, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 201
    packed-switch p0, :pswitch_data_9a

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 357
    :pswitch_5
    const-string v0, "getAppStandbyConstant"

    return-object v0

    .line 353
    :pswitch_8
    const-string/jumbo v0, "isPackageExemptedFromBroadcastResponseStats"

    return-object v0

    .line 349
    :pswitch_c
    const-string v0, "clearBroadcastEvents"

    return-object v0

    .line 345
    :pswitch_f
    const-string v0, "clearBroadcastResponseStats"

    return-object v0

    .line 341
    :pswitch_12
    const-string/jumbo v0, "queryBroadcastResponseStats"

    return-object v0

    .line 337
    :pswitch_16
    const-string v0, "getLastTimeAnyComponentUsed"

    return-object v0

    .line 333
    :pswitch_19
    const-string v0, "forceUsageSourceSettingRead"

    return-object v0

    .line 329
    :pswitch_1c
    const-string/jumbo v0, "getUsageSource"

    return-object v0

    .line 325
    :pswitch_20
    const-string/jumbo v0, "reportUserInteractionWithBundle"

    return-object v0

    .line 321
    :pswitch_24
    const-string/jumbo v0, "reportUserInteraction"

    return-object v0

    .line 317
    :pswitch_28
    const-string/jumbo v0, "reportUsageStop"

    return-object v0

    .line 313
    :pswitch_2c
    const-string/jumbo v0, "reportPastUsageStart"

    return-object v0

    .line 309
    :pswitch_30
    const-string/jumbo v0, "reportUsageStart"

    return-object v0

    .line 305
    :pswitch_34
    const-string/jumbo v0, "unregisterAppUsageLimitObserver"

    return-object v0

    .line 301
    :pswitch_38
    const-string/jumbo v0, "registerAppUsageLimitObserver"

    return-object v0

    .line 297
    :pswitch_3c
    const-string/jumbo v0, "unregisterUsageSessionObserver"

    return-object v0

    .line 293
    :pswitch_40
    const-string/jumbo v0, "registerUsageSessionObserver"

    return-object v0

    .line 289
    :pswitch_44
    const-string/jumbo v0, "unregisterAppUsageObserver"

    return-object v0

    .line 285
    :pswitch_48
    const-string/jumbo v0, "registerAppUsageObserver"

    return-object v0

    .line 281
    :pswitch_4c
    const-string/jumbo v0, "setEstimatedLaunchTimes"

    return-object v0

    .line 277
    :pswitch_50
    const-string/jumbo v0, "setEstimatedLaunchTime"

    return-object v0

    .line 273
    :pswitch_54
    const-string v0, "getAppMinStandbyBucket"

    return-object v0

    .line 269
    :pswitch_57
    const-string/jumbo v0, "setAppStandbyBuckets"

    return-object v0

    .line 265
    :pswitch_5b
    const-string v0, "getAppStandbyBuckets"

    return-object v0

    .line 261
    :pswitch_5e
    const-string/jumbo v0, "setAppStandbyBucket"

    return-object v0

    .line 257
    :pswitch_62
    const-string v0, "getAppStandbyBucket"

    return-object v0

    .line 253
    :pswitch_65
    const-string/jumbo v0, "reportChooserSelection"

    return-object v0

    .line 249
    :pswitch_69
    const-string/jumbo v0, "onCarrierPrivilegedAppsChanged"

    return-object v0

    .line 245
    :pswitch_6d
    const-string/jumbo v0, "isAppInactive"

    return-object v0

    .line 241
    :pswitch_71
    const-string/jumbo v0, "isAppStandbyEnabled"

    return-object v0

    .line 237
    :pswitch_75
    const-string/jumbo v0, "setAppInactive"

    return-object v0

    .line 233
    :pswitch_79
    const-string/jumbo v0, "queryEventsWithFilter"

    return-object v0

    .line 229
    :pswitch_7d
    const-string/jumbo v0, "queryEventsForPackageForUser"

    return-object v0

    .line 225
    :pswitch_81
    const-string/jumbo v0, "queryEventsForUser"

    return-object v0

    .line 221
    :pswitch_85
    const-string/jumbo v0, "queryEventsForPackage"

    return-object v0

    .line 217
    :pswitch_89
    const-string/jumbo v0, "queryEvents"

    return-object v0

    .line 213
    :pswitch_8d
    const-string/jumbo v0, "queryEventStats"

    return-object v0

    .line 209
    :pswitch_91
    const-string/jumbo v0, "queryConfigurationStats"

    return-object v0

    .line 205
    :pswitch_95
    const-string/jumbo v0, "queryUsageStats"

    return-object v0

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_95
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 196
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1691
    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 368
    invoke-static {p1}, Landroid/app/usage/IUsageStatsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.usage.IUsageStatsManager"

    .line 373
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v1, 0xffffff

    if-gt v10, v1, :cond_13

    .line 374
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    :cond_13
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 377
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    return v14

    .line 380
    :cond_1c
    packed-switch v10, :pswitch_data_3fc

    .line 897
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 888
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    goto/16 :goto_3fb

    .line 876
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_37
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 879
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;I)Z

    move-result v3

    .line 881
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 883
    goto/16 :goto_3fb

    .line 865
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_4e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 867
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 868
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastEvents(Ljava/lang/String;I)V

    .line 870
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_3fb

    .line 850
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_61
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 852
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 854
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 857
    .local v5, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V

    .line 859
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_3fb

    .line 834
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    :pswitch_7d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 836
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 838
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 840
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 841
    .restart local v5    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object v6

    .line 843
    .local v6, "_result":Landroid/app/usage/BroadcastResponseStatsList;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 845
    goto/16 :goto_3fb

    .line 822
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/app/usage/BroadcastResponseStatsList;
    :pswitch_9d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 824
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 827
    .local v3, "_result":J
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v12, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 829
    goto/16 :goto_3fb

    .line 815
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_b4
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->forceUsageSourceSettingRead()V

    .line 816
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    goto/16 :goto_3fb

    .line 808
    :pswitch_bc
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->getUsageSource()I

    move-result v1

    .line 809
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    goto/16 :goto_3fb

    .line 796
    .end local v1    # "_result":I
    :pswitch_c8
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 800
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 801
    .local v3, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUserInteractionWithBundle(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 803
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_3fb

    .line 785
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_e3
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUserInteraction(Ljava/lang/String;I)V

    .line 790
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_3fb

    .line 772
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_f6
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 774
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_3fb

    .line 757
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_10d
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 759
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 761
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 763
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 764
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 766
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_3fb

    .line 744
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_129
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 748
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_3fb

    .line 733
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_140
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 736
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V

    .line 738
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_3fb

    .line 714
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_153
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 720
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 722
    .local v5, "_arg3":J
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 724
    .local v7, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 725
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_3fb

    .line 703
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Ljava/lang/String;
    :pswitch_17b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageSessionObserver(ILjava/lang/String;)V

    .line 708
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_3fb

    .line 682
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_18e
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 688
    .restart local v3    # "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 690
    .restart local v5    # "_arg3":J
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 692
    .restart local v7    # "_arg4":Landroid/app/PendingIntent;
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 694
    .local v8, "_arg5":Landroid/app/PendingIntent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 695
    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_3fb

    .line 671
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    .end local v7    # "_arg4":Landroid/app/PendingIntent;
    .end local v8    # "_arg5":Landroid/app/PendingIntent;
    .end local v9    # "_arg6":Ljava/lang/String;
    :pswitch_1be
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageObserver(ILjava/lang/String;)V

    .line 676
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_3fb

    .line 654
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1d1
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 660
    .restart local v3    # "_arg2":J
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 662
    .local v5, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_3fb

    .line 643
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Landroid/app/PendingIntent;
    .end local v6    # "_arg4":Ljava/lang/String;
    :pswitch_1f5
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 645
    .local v1, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V

    .line 648
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_3fb

    .line 630
    .end local v1    # "_arg0":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg1":I
    :pswitch_20c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 634
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 635
    .local v4, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTime(Ljava/lang/String;JI)V

    .line 637
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_3fb

    .line 616
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_223
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 618
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 621
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 623
    .local v4, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    goto/16 :goto_3fb

    .line 605
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_23e
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 607
    .local v1, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 608
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 610
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_3fb

    .line 593
    .end local v1    # "_arg0":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg1":I
    :pswitch_255
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 598
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    goto/16 :goto_3fb

    .line 580
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_26c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 585
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket(Ljava/lang/String;II)V

    .line 587
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_3fb

    .line 566
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_283
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 568
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 573
    .restart local v4    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    goto/16 :goto_3fb

    .line 549
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_29e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 551
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_3fb

    .line 542
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_2be
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->onCarrierPrivilegedAppsChanged()V

    .line 543
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_3fb

    .line 529
    :pswitch_2c6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 533
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 536
    .local v4, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 538
    goto/16 :goto_3fb

    .line 521
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2e1
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppStandbyEnabled()Z

    move-result v1

    .line 522
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    goto/16 :goto_3fb

    .line 509
    .end local v1    # "_result":Z
    :pswitch_2ed
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 513
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    .line 516
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    goto/16 :goto_3fb

    .line 497
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_304
    sget-object v1, Landroid/app/usage/UsageEventsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEventsQuery;

    .line 499
    .local v1, "_arg0":Landroid/app/usage/UsageEventsQuery;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsWithFilter(Landroid/app/usage/UsageEventsQuery;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v3

    .line 502
    .local v3, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 504
    goto/16 :goto_3fb

    .line 479
    .end local v1    # "_arg0":Landroid/app/usage/UsageEventsQuery;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/usage/UsageEvents;
    :pswitch_31f
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 481
    .local v1, "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 483
    .local v3, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 485
    .local v5, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v8

    .line 490
    .local v8, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v12, v8, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 492
    goto/16 :goto_3fb

    .line 463
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_result":Landroid/app/usage/UsageEvents;
    :pswitch_343
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 465
    .restart local v1    # "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 467
    .restart local v3    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    .restart local v5    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 470
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v7

    .line 472
    .local v7, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v12, v7, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    goto/16 :goto_3fb

    .line 449
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":Landroid/app/usage/UsageEvents;
    :pswitch_363
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 451
    .restart local v1    # "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 453
    .restart local v3    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v6

    .line 456
    .local v6, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 458
    goto/16 :goto_3fb

    .line 435
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/app/usage/UsageEvents;
    :pswitch_37f
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 437
    .restart local v1    # "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 439
    .restart local v3    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 440
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v6

    .line 442
    .restart local v6    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 444
    goto :goto_3fb

    .line 419
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/app/usage/UsageEvents;
    :pswitch_39a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 423
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 425
    .local v4, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 428
    .local v7, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {v12, v7, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    goto :goto_3fb

    .line 403
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_3b9
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 407
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 409
    .restart local v4    # "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 410
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 412
    .restart local v7    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v12, v7, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 414
    goto :goto_3fb

    .line 385
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_3d8
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 389
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 393
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 394
    .local v7, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .line 396
    .local v8, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v12, v8, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 398
    nop

    .line 900
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":I
    .end local v8    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_3fb
    return v14

    :pswitch_data_3fc
    .packed-switch 0x1
        :pswitch_3d8
        :pswitch_3b9
        :pswitch_39a
        :pswitch_37f
        :pswitch_363
        :pswitch_343
        :pswitch_31f
        :pswitch_304
        :pswitch_2ed
        :pswitch_2e1
        :pswitch_2c6
        :pswitch_2be
        :pswitch_29e
        :pswitch_283
        :pswitch_26c
        :pswitch_255
        :pswitch_23e
        :pswitch_223
        :pswitch_20c
        :pswitch_1f5
        :pswitch_1d1
        :pswitch_1be
        :pswitch_18e
        :pswitch_17b
        :pswitch_153
        :pswitch_140
        :pswitch_129
        :pswitch_10d
        :pswitch_f6
        :pswitch_e3
        :pswitch_c8
        :pswitch_bc
        :pswitch_b4
        :pswitch_9d
        :pswitch_7d
        :pswitch_61
        :pswitch_4e
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist setAppStandbyBucket_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1651
    return-void
.end method

.method protected blacklist setAppStandbyBuckets_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1657
    return-void
.end method

.method protected blacklist setEstimatedLaunchTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1662
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1663
    return-void
.end method

.method protected blacklist setEstimatedLaunchTimes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1668
    return-void
.end method
