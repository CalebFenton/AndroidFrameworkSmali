.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;,
        Landroid/app/usage/NetworkStatsManager$UsageCallback;
    }
.end annotation


# static fields
.field public static final greylist-max-o CALLBACK_LIMIT_REACHED:I = 0x0

.field public static final greylist-max-o CALLBACK_RELEASED:I = 0x1

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o FLAG_AUGMENT_WITH_SUBSCRIPTION_PLAN:I = 0x4

.field public static final greylist-max-o FLAG_POLL_FORCE:I = 0x2

.field public static final greylist-max-o FLAG_POLL_ON_OPEN:I = 0x1

.field public static final greylist-max-o MIN_THRESHOLD_BYTES:J = 0x200000L

.field public static final blacklist NETWORK_TYPE_5G_NSA:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist PREFIX_DEV:Ljava/lang/String; = "dev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mFlags:I

.field private final greylist-max-o mService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkStatsService;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 167
    invoke-virtual {p0, v0}, Landroid/app/usage/NetworkStatsManager;->setAugmentWithSubscriptionPlan(Z)V

    .line 168
    return-void
.end method

.method private static greylist-max-o createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 5
    .param p0, "networkType"    # I
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 1045
    packed-switch p0, :pswitch_data_7e

    .line 1061
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create template for network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscriberId \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :pswitch_30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_41

    .line 1056
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_52

    .line 1058
    :cond_41
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    :goto_52
    nop

    .line 1059
    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_7c

    .line 1047
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    :pswitch_54
    const/4 v0, 0x1

    if-nez p1, :cond_65

    .line 1049
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_7a

    .line 1052
    :cond_65
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1051
    invoke-virtual {v1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    .line 1052
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    :goto_7a
    nop

    .line 1053
    .restart local v0    # "template":Landroid/net/NetworkTemplate;
    nop

    .line 1065
    :goto_7c
    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_54
        :pswitch_30
    .end packed-switch
.end method

.method public static blacklist getCollapsedRatType(I)I
    .registers 2
    .param p0, "ratType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1234
    packed-switch p0, :pswitch_data_12

    .line 1263
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 1257
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 1255
    :pswitch_8
    const/16 v0, 0xd

    return v0

    .line 1252
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 1241
    :pswitch_d
    const/16 v0, 0x10

    return v0

    .line 1261
    :pswitch_10
    const/4 v0, -0x2

    return v0

    :pswitch_data_12
    .packed-switch -0x2
        :pswitch_10
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$registerUsageCallback$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 914
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$registerUsageCallback$1(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 914
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public blacklist forceUpdate()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1186
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1189
    nop

    .line 1190
    return-void

    .line 1187
    :catch_7
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBinder()Landroid/net/INetworkStatsService;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method public blacklist getMobileUidStats()Landroid/net/NetworkStats;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 771
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getUidStatsForTransport(I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 772
    :catch_8
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWifiUidStats()Landroid/net/NetworkStats;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 797
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getUidStatsForTransport(I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 798
    :catch_8
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist noteUidForeground(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1151
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkStatsService;->noteUidForeground(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1154
    nop

    .line 1155
    return-void

    .line 1152
    :catch_7
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyNetworkStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p3, "activeIface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/NetworkStateSnapshot;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/UnderlyingNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .line 1100
    .local p1, "defaultNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    .local p2, "networkStateSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkStateSnapshot;>;"
    .local p4, "underlyingNetworkInfos":Ljava/util/List;, "Ljava/util/List<Landroid/net/UnderlyingNetworkInfo;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/net/Network;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    new-array v3, v1, [Landroid/net/NetworkStateSnapshot;

    .line 1104
    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/NetworkStateSnapshot;

    new-array v1, v1, [Landroid/net/UnderlyingNetworkInfo;

    .line 1105
    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UnderlyingNetworkInfo;

    .line 1103
    invoke-interface {v0, v2, v3, p3, v1}, Landroid/net/INetworkStatsService;->notifyNetworkStatus([Landroid/net/Network;[Landroid/net/NetworkStateSnapshot;Ljava/lang/String;[Landroid/net/UnderlyingNetworkInfo;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29

    .line 1108
    nop

    .line 1109
    return-void

    .line 1106
    :catch_29
    move-exception v0

    .line 1107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .registers 17
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    :try_start_0
    invoke-static/range {p1 .. p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_17

    move-object v3, v0

    .line 744
    .local v3, "template":Landroid/net/NetworkTemplate;
    nop

    .line 747
    new-instance v1, Landroid/app/usage/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v9, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 748
    .local v1, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    .line 749
    return-object v1

    .line 741
    .end local v1    # "result":Landroid/app/usage/NetworkStats;
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    :catch_17
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist queryDetailsForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 496
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :try_start_3
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v8, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_18

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .local v2, "template":Landroid/net/NetworkTemplate;
    .local v4, "startTime":J
    .local v6, "endTime":J
    :try_start_e
    invoke-direct/range {v0 .. v8}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 500
    .local v0, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startHistoryDeviceEnumeration()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    .line 501
    return-object v0

    .line 502
    .end local v0    # "result":Landroid/app/usage/NetworkStats;
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "startTime":J
    .end local v6    # "endTime":J
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "startTime":J
    .restart local p4    # "endTime":J
    :catch_18
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .line 503
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .restart local v2    # "template":Landroid/net/NetworkTemplate;
    .restart local v4    # "startTime":J
    .restart local v6    # "endTime":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 506
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .registers 18
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 540
    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(ILjava/lang/String;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v8

    return-object v8
.end method

.method public blacklist queryDetailsForUid(Landroid/net/NetworkTemplate;JJI)Landroid/app/usage/NetworkStats;
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 548
    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .end local p6    # "uid":I
    .local v1, "template":Landroid/net/NetworkTemplate;
    .local v2, "startTime":J
    .local v4, "endTime":J
    .local v6, "uid":I
    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;
    .registers 19
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .param p8, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 596
    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(ILjava/lang/String;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v9

    return-object v9
.end method

.method public whitelist queryDetailsForUidTagState(ILjava/lang/String;JJIII)Landroid/app/usage/NetworkStats;
    .registers 20
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .param p8, "tag"    # I
    .param p9, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 646
    invoke-static/range {p1 .. p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 648
    .local v1, "template":Landroid/net/NetworkTemplate;
    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v9

    return-object v9
.end method

.method public blacklist queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;
    .registers 22
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "uid"    # I
    .param p7, "tag"    # I
    .param p8, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 684
    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :try_start_9
    new-instance v4, Landroid/app/usage/NetworkStats;

    iget-object v5, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v12, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-object v6, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v4 .. v12}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 688
    .local v4, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v4, v1, v2, v3}, Landroid/app/usage/NetworkStats;->startHistoryUidEnumeration(III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 689
    return-object v4

    .line 690
    .end local v4    # "result":Landroid/app/usage/NetworkStats;
    :catch_1c
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while querying stats for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkStatsManager"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .registers 14
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_e

    move-object v2, v0

    .line 399
    .local v2, "template":Landroid/net/NetworkTemplate;
    nop

    .line 401
    move-object v1, p0

    move-wide v3, p3

    move-wide v5, p5

    .end local p3    # "startTime":J
    .end local p5    # "endTime":J
    .local v3, "startTime":J
    .local v5, "endTime":J
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p3

    return-object p3

    .line 396
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v3    # "startTime":J
    .end local v5    # "endTime":J
    .restart local p3    # "startTime":J
    .restart local p5    # "endTime":J
    :catch_e
    move-exception v0

    move-wide v3, p3

    move-wide v5, p5

    move-object p3, v0

    .line 398
    .end local p5    # "endTime":J
    .restart local v3    # "startTime":J
    .restart local v5    # "endTime":J
    .local p3, "e":Ljava/lang/IllegalArgumentException;
    const/4 p4, 0x0

    return-object p4
.end method

.method public blacklist querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 426
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :try_start_3
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v8, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_18

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .local v2, "template":Landroid/net/NetworkTemplate;
    .local v4, "startTime":J
    .local v6, "endTime":J
    :try_start_e
    invoke-direct/range {v0 .. v8}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 430
    .local v0, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    .line 431
    return-object v0

    .line 432
    .end local v0    # "result":Landroid/app/usage/NetworkStats;
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "startTime":J
    .end local v6    # "endTime":J
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "startTime":J
    .restart local p4    # "endTime":J
    :catch_18
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .line 433
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .restart local v2    # "template":Landroid/net/NetworkTemplate;
    .restart local v4    # "startTime":J
    .restart local v6    # "endTime":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 435
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .registers 14
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_e

    move-object v2, v0

    .line 305
    .local v2, "template":Landroid/net/NetworkTemplate;
    nop

    .line 307
    move-object v1, p0

    move-wide v3, p3

    move-wide v5, p5

    .end local p3    # "startTime":J
    .end local p5    # "endTime":J
    .local v3, "startTime":J
    .local v5, "endTime":J
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p3

    return-object p3

    .line 302
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v3    # "startTime":J
    .end local v5    # "endTime":J
    .restart local p3    # "startTime":J
    .restart local p5    # "endTime":J
    :catch_e
    move-exception v0

    move-wide v3, p3

    move-wide v5, p5

    move-object p3, v0

    .line 304
    .end local p5    # "endTime":J
    .restart local v3    # "startTime":J
    .restart local v5    # "endTime":J
    .local p3, "e":Ljava/lang/IllegalArgumentException;
    const/4 p4, 0x0

    return-object p4
.end method

.method public greylist-max-o querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :try_start_3
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v8, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_1c

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .local v2, "template":Landroid/net/NetworkTemplate;
    .local v4, "startTime":J
    .local v6, "endTime":J
    :try_start_e
    invoke-direct/range {v0 .. v8}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 254
    .local v0, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p1

    .line 255
    .local p1, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    .line 256
    return-object p1

    .line 257
    .end local v0    # "stats":Landroid/app/usage/NetworkStats;
    .end local p1    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "startTime":J
    .end local v6    # "endTime":J
    .local p1, "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "startTime":J
    .restart local p4    # "endTime":J
    :catch_1c
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .line 258
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .restart local v2    # "template":Landroid/net/NetworkTemplate;
    .restart local v4    # "startTime":J
    .restart local v6    # "endTime":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 260
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .registers 17
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    :try_start_0
    invoke-static/range {p1 .. p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_1e

    move-object v3, v0

    .line 350
    .local v3, "template":Landroid/net/NetworkTemplate;
    nop

    .line 353
    new-instance v1, Landroid/app/usage/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v9, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 354
    .local v1, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    .line 356
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    .line 357
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0

    .line 347
    .end local v1    # "stats":Landroid/app/usage/NetworkStats;
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    :catch_1e
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :try_start_3
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    iget-object v8, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_18

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .local v2, "template":Landroid/net/NetworkTemplate;
    .local v4, "startTime":J
    .local v6, "endTime":J
    :try_start_e
    invoke-direct/range {v0 .. v8}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V

    .line 464
    .local v0, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startTaggedSummaryEnumeration()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    .line 465
    return-object v0

    .line 466
    .end local v0    # "result":Landroid/app/usage/NetworkStats;
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "startTime":J
    .end local v6    # "endTime":J
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "startTime":J
    .restart local p4    # "endTime":J
    :catch_18
    move-exception v0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object p1, v0

    .line 467
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    .restart local v2    # "template":Landroid/net/NetworkTemplate;
    .restart local v4    # "startTime":J
    .restart local v6    # "endTime":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 469
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/NetworkStatsProvider;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/net/netstats/provider/NetworkStatsProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1013
    :try_start_0
    invoke-virtual {p2}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinder()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1016
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    .line 1017
    invoke-virtual {p2}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderBinder()Landroid/net/netstats/provider/INetworkStatsProvider;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetworkStatsService;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;)Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    .line 1018
    .local v0, "cbBinder":Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    invoke-virtual {p2, v0}, Landroid/net/netstats/provider/NetworkStatsProvider;->setProviderCallbackBinder(Landroid/net/netstats/provider/INetworkStatsProviderCallback;)V

    .line 1021
    .end local v0    # "cbBinder":Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    goto :goto_20

    .line 1014
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/usage/NetworkStatsManager;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "provider":Landroid/net/netstats/provider/NetworkStatsProvider;
    throw v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 1019
    .restart local p0    # "this":Landroid/app/usage/NetworkStatsManager;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "provider":Landroid/net/netstats/provider/NetworkStatsProvider;
    :catch_1c
    move-exception v0

    .line 1020
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1022
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public whitelist registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 13
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "thresholdBytes"    # J
    .param p5, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 874
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "networkType":I
    .end local p2    # "subscriberId":Ljava/lang/String;
    .end local p3    # "thresholdBytes":J
    .end local p5    # "callback":Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .local v1, "networkType":I
    .local v2, "subscriberId":Ljava/lang/String;
    .local v3, "thresholdBytes":J
    .local v5, "callback":Landroid/app/usage/NetworkStatsManager$UsageCallback;
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    .line 876
    return-void
.end method

.method public whitelist registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "thresholdBytes"    # J
    .param p5, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 905
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 914
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez p6, :cond_c

    new-instance v0, Landroid/app/usage/NetworkStatsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/usage/NetworkStatsManager$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/app/usage/NetworkStatsManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p6}, Landroid/app/usage/NetworkStatsManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    :goto_11
    move-object v4, v0

    .line 916
    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v0, p0

    move-wide v2, p3

    move-object v5, p5

    .end local p3    # "thresholdBytes":J
    .end local p5    # "callback":Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .local v2, "thresholdBytes":J
    .local v5, "callback":Landroid/app/usage/NetworkStatsManager$UsageCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 917
    return-void
.end method

.method public blacklist registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "thresholdBytes"    # J
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 827
    const-string v0, "NetworkTemplate cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 828
    const-string v0, "UsageCallback cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 829
    const-string v0, "Executor cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 831
    new-instance v0, Landroid/net/DataUsageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    .line 834
    .local v0, "request":Landroid/net/DataUsageRequest;
    :try_start_15
    new-instance v1, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;

    invoke-direct {v1, p4, p5}, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 836
    .local v1, "callbackWrapper":Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;
    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 837
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-interface {v2, v3, v0, v1}, Landroid/net/INetworkStatsService;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/net/connectivity/android/net/netstats/IUsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v2

    invoke-static {p5, v2}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-$$Nest$fputrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)V

    .line 840
    invoke-static {p5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-$$Nest$fgetrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v2

    if-nez v2, :cond_36

    .line 841
    const-string v2, "NetworkStatsManager"

    const-string v3, "Request from callback is null; should not happen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_36} :catch_38

    .line 846
    .end local v1    # "callbackWrapper":Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;
    :cond_36
    nop

    .line 847
    return-void

    .line 843
    :catch_38
    move-exception v1

    .line 845
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setAugmentWithSubscriptionPlan(Z)V
    .registers 3
    .param p1, "augmentWithSubscriptionPlan"    # Z

    .line 215
    if-eqz p1, :cond_9

    .line 216
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_f

    .line 218
    :cond_9
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 220
    :goto_f
    return-void
.end method

.method public blacklist setDefaultGlobalAlert(J)V
    .registers 5
    .param p1, "alertBytes"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1169
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1172
    nop

    .line 1173
    return-void

    .line 1170
    :catch_7
    move-exception v0

    .line 1171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setPollForce(Z)V
    .registers 3
    .param p1, "pollForce"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 206
    if-eqz p1, :cond_9

    .line 207
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_f

    .line 209
    :cond_9
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 211
    :goto_f
    return-void
.end method

.method public greylist-max-o setPollOnOpen(Z)V
    .registers 3
    .param p1, "pollOnOpen"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 191
    if-eqz p1, :cond_9

    .line 192
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_f

    .line 194
    :cond_9
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 196
    :goto_f
    return-void
.end method

.method public blacklist setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warning"    # J
    .param p4, "limit"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1213
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_d

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "warning":J
    .end local p4    # "limit":J
    .local v1, "iface":Ljava/lang/String;
    .local v2, "warning":J
    .local v4, "limit":J
    :try_start_5
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 1216
    nop

    .line 1217
    return-void

    .line 1214
    :catch_a
    move-exception v0

    move-object p1, v0

    goto :goto_12

    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "warning":J
    .end local v4    # "limit":J
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "warning":J
    .restart local p4    # "limit":J
    :catch_d
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object p1, v0

    .line 1215
    .end local p2    # "warning":J
    .end local p4    # "limit":J
    .restart local v1    # "iface":Ljava/lang/String;
    .restart local v2    # "warning":J
    .restart local v4    # "limit":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_12
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist unregisterNetworkStatsProvider(Landroid/net/netstats/provider/NetworkStatsProvider;)V
    .registers 3
    .param p1, "provider"    # Landroid/net/netstats/provider/NetworkStatsProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1037
    :try_start_0
    invoke-virtual {p1}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->unregister()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1040
    goto :goto_c

    .line 1038
    :catch_8
    move-exception v0

    .line 1039
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1041
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 925
    if-eqz p1, :cond_21

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-$$Nest$fgetrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-$$Nest$fgetrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v0

    iget v0, v0, Landroid/net/DataUsageRequest;->requestId:I

    if-eqz v0, :cond_21

    .line 930
    :try_start_10
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-$$Nest$fgetrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 934
    nop

    .line 935
    return-void

    .line 931
    :catch_1b
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UsageCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
