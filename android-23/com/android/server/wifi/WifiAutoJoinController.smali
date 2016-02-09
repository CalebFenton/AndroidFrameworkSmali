.class public Lcom/android/server/wifi/WifiAutoJoinController;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"


# static fields
.field private static final ASSOC_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTO_JOIN_EXTENDED_ROAMING:I = 0x2

.field public static final AUTO_JOIN_IDLE:I = 0x0

.field public static final AUTO_JOIN_OUT_OF_NETWORK_ROAMING:I = 0x3

.field public static final AUTO_JOIN_ROAMING:I = 0x1

.field private static DBG:Z = false

.field private static final DEFAULT_EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS:J = 0xea60L

.field public static final HIGH_THRESHOLD_MODIFIER:I = 0x5

.field public static final MAX_RSSI_DELTA:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WifiAutoJoinController "

.field private static VDBG:Z = false

.field private static final loseBlackListHardMilli:J = 0x1b77400L

.field private static final loseBlackListSoftMilli:J = 0x1b7740L

.field public static mScanResultAutoJoinAge:I

.field public static mScanResultMaximumAge:I

.field private static final mStaStaSupported:Z


# instance fields
.field didBailDueToWeakRssi:Z

.field didOverride:Z

.field private mAllowUntrustedConnections:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigurationKey:Ljava/lang/String;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final scanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private scoreManager:Landroid/net/NetworkScoreManager;

.field weakRssiBailCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 59
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@3
    .line 60
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@5
    .line 63
    const v0, 0x9c40

    #@8
    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    #@a
    .line 64
    const/16 v0, 0x1388

    #@c
    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    #@e
    .line 1294
    const/4 v0, 0x4

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    .line 1295
    const-string/jumbo v1, "ASSOCIATING"

    #@14
    aput-object v1, v0, v2

    #@16
    .line 1296
    const-string/jumbo v1, "ASSOCIATED"

    #@19
    const/4 v2, 0x1

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 1297
    const-string/jumbo v1, "FOUR_WAY_HANDSHAKE"

    #@1f
    const/4 v2, 0x2

    #@20
    aput-object v1, v0, v2

    #@22
    .line 1298
    const-string/jumbo v1, "GROUP_KEY_HANDSHAKE"

    #@25
    const/4 v2, 0x3

    #@26
    aput-object v1, v0, v2

    #@28
    .line 1294
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    #@2e
    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "s"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "st"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "n"    # Lcom/android/server/wifi/WifiNative;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 66
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    #@8
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@f
    .line 75
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    #@11
    .line 78
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    #@13
    .line 105
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    #@15
    .line 110
    iput v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@17
    .line 114
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    #@19
    .line 115
    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    .line 116
    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@1d
    .line 117
    iput-object p5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1f
    .line 118
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@21
    .line 119
    iput-object p4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@23
    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    #@25
    const-string/jumbo v1, "network_score"

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/net/NetworkScoreManager;

    #@2e
    .line 120
    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    #@30
    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    #@32
    if-nez v0, :cond_0

    #@34
    .line 123
    const-string/jumbo v0, "Registered scoreManager NULL  service network_score"

    #@37
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@3a
    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 126
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    #@42
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    #@45
    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@47
    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    #@49
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@4b
    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    #@4e
    .line 113
    :goto_0
    return-void

    #@4f
    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v1, "No network score service: Couldnt register as a WiFi score Manager, type="

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 131
    const-string/jumbo v1, " service "

    #@66
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 131
    const-string/jumbo v1, "network_score"

    #@6d
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@78
    .line 132
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@7a
    goto :goto_0
.end method

.method private ageScanResultsOut(I)V
    .locals 10
    .param p1, "delay"    # I

    #@0
    .prologue
    .line 150
    if-gtz p1, :cond_0

    #@2
    .line 151
    sget p1, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    #@4
    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 154
    .local v2, "milli":J
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v6, "ageScanResultsOut delay "

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    const-string/jumbo v6, " size "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 156
    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@29
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@2c
    move-result v6

    #@2d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v6

    #@31
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 156
    const-string/jumbo v6, " now "

    #@38
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 156
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v6

    #@40
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@4b
    .line 159
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@4d
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@50
    move-result-object v5

    #@51
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v1

    #@55
    .line 160
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_3

    #@5b
    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Ljava/util/Map$Entry;

    #@61
    .line 162
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    #@67
    .line 163
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@6a
    move-result-wide v6

    #@6b
    int-to-long v8, p1

    #@6c
    add-long/2addr v6, v8

    #@6d
    cmp-long v5, v6, v2

    #@6f
    if-gez v5, :cond_2

    #@71
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@74
    goto :goto_0

    #@75
    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    return-void
.end method

.method private compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "lastSelectedConfiguration"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 359
    if-nez p1, :cond_0

    #@3
    .line 360
    const/4 v2, -0x3

    #@4
    return v2

    #@5
    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@a
    move-result-object v0

    #@b
    .line 363
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    #@d
    .line 366
    const/16 v2, 0x3e8

    #@f
    return v2

    #@10
    .line 369
    :cond_1
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 370
    const/4 v2, -0x2

    #@1f
    return v2

    #@20
    .line 373
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "compareNetwork will compare "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 375
    const-string/jumbo v3, " with current "

    #@3b
    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 375
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@4e
    .line 377
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    #@51
    move-result v1

    #@52
    .line 384
    .local v1, "order":I
    if-eqz p2, :cond_5

    #@54
    .line 385
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v2

    #@5c
    .line 384
    if-eqz v2, :cond_5

    #@5e
    .line 390
    add-int/lit8 v1, v1, -0x64

    #@60
    .line 391
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "     ...and prefers -100 "

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    .line 393
    const-string/jumbo v3, " over "

    #@7b
    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    .line 393
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    .line 394
    const-string/jumbo v3, " because it is the last selected -> "

    #@8a
    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@9d
    .line 412
    :cond_4
    :goto_0
    return v1

    #@9e
    .line 397
    :cond_5
    if-eqz p2, :cond_4

    #@a0
    .line 398
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v2

    #@a8
    .line 397
    if-eqz v2, :cond_4

    #@aa
    .line 403
    add-int/lit8 v1, v1, 0x64

    #@ac
    .line 404
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@ae
    if-eqz v2, :cond_4

    #@b0
    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v3, "     ...and prefers +100 "

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    .line 406
    const-string/jumbo v3, " over "

    #@c7
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v2

    #@cb
    .line 406
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v2

    #@d3
    .line 407
    const-string/jumbo v3, " because it is the last selected -> "

    #@d6
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@e9
    goto :goto_0
.end method

.method private getNetID(Ljava/lang/String;)I
    .locals 11
    .param p1, "wpaStatus"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 1301
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@3
    if-eqz v8, :cond_0

    #@5
    .line 1302
    new-instance v8, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v9, "attemptAutoJoin() status="

    #@d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v8

    #@11
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@1c
    .line 1306
    :cond_0
    const/4 v1, -0x1

    #@1d
    .line 1307
    .local v1, "id":I
    const/4 v7, 0x0

    #@1e
    .line 1308
    .local v7, "state":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    #@20
    new-instance v8, Ljava/io/StringReader;

    #@22
    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@25
    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@28
    .line 1310
    .end local v7    # "state":Ljava/lang/String;
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@2e
    .line 1311
    const/16 v8, 0x3d

    #@30
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v6

    #@34
    .line 1312
    .local v6, "split":I
    if-ltz v6, :cond_1

    #@36
    .line 1316
    const/4 v8, 0x0

    #@37
    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 1317
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "id"

    #@3e
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_3

    #@44
    .line 1319
    add-int/lit8 v8, v6, 0x1

    #@46
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4d
    move-result v1

    #@4e
    .line 1320
    if-eqz v7, :cond_1

    #@50
    .line 1335
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    :cond_2
    :goto_0
    return v1

    #@51
    .line 1323
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "split":I
    :catch_0
    move-exception v5

    #@52
    .line 1324
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    return v10

    #@53
    .line 1326
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_2
    const-string/jumbo v8, "wpa_state"

    #@56
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v8

    #@5a
    if-eqz v8, :cond_1

    #@5c
    .line 1327
    add-int/lit8 v8, v6, 0x1

    #@5e
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 1328
    .local v7, "state":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    #@64
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_4

    #@6a
    .line 1329
    return v10

    #@6b
    .line 1330
    :cond_4
    if-ltz v1, :cond_1

    #@6d
    goto :goto_0

    #@6e
    .line 1336
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    .end local v7    # "state":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@6f
    .line 1337
    .local v2, "ioe":Ljava/io/IOException;
    return v10
.end method

.method private haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1227
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v9

    #@6
    .line 1228
    const-string/jumbo v10, "wifi_ephemeral_out_of_range_timeout_ms"

    #@9
    .line 1229
    const-wide/32 v12, 0xea60

    #@c
    .line 1226
    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@f
    move-result-wide v4

    #@10
    .line 1236
    .local v4, "ephemeralOutOfRangeTimeoutMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    #@15
    move-result-object v1

    #@16
    .line 1237
    .local v1, "currentScanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_2

    #@18
    .line 1238
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@1a
    invoke-virtual {v9, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    #@1d
    move-result v0

    #@1e
    .line 1239
    :goto_0
    const-wide/16 v10, 0x0

    #@20
    cmp-long v9, v4, v10

    #@22
    if-lez v9, :cond_0

    #@24
    if-eqz v0, :cond_4

    #@26
    .line 1240
    :cond_0
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@28
    if-eqz v9, :cond_1

    #@2a
    .line 1241
    if-eqz v0, :cond_3

    #@2c
    .line 1242
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v10, "Current network has a score curve, keeping network: "

    #@34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@43
    .line 1248
    :cond_1
    :goto_1
    return v0

    #@44
    .line 1237
    :cond_2
    const/4 v0, 0x0

    #@45
    .local v0, "currentNetworkHasScoreCurve":Z
    goto :goto_0

    #@46
    .line 1245
    .end local v0    # "currentNetworkHasScoreCurve":Z
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v10, "Current network has no score curve, giving up: "

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@5f
    goto :goto_1

    #@60
    .line 1251
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@62
    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@65
    move-result-object v9

    #@66
    if-eqz v9, :cond_5

    #@68
    .line 1252
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@6a
    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->isEmpty()Z

    #@71
    move-result v9

    #@72
    .line 1251
    if-eqz v9, :cond_6

    #@74
    .line 1253
    :cond_5
    const/4 v9, 0x0

    #@75
    return v9

    #@76
    .line 1256
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@79
    move-result-wide v2

    #@7a
    .line 1257
    .local v2, "currentTimeMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7c
    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@7f
    move-result-object v9

    #@80
    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@83
    move-result-object v9

    #@84
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@87
    move-result-object v8

    #@88
    .local v8, "sd$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@8b
    move-result v9

    #@8c
    if-eqz v9, :cond_9

    #@8e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v7

    #@92
    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    #@94
    .line 1258
    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@97
    move-result-object v6

    #@98
    .line 1259
    .local v6, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@9b
    move-result-wide v10

    #@9c
    cmp-long v9, v2, v10

    #@9e
    if-lez v9, :cond_7

    #@a0
    .line 1260
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@a3
    move-result-wide v10

    #@a4
    sub-long v10, v2, v10

    #@a6
    cmp-long v9, v10, v4

    #@a8
    if-gez v9, :cond_7

    #@aa
    .line 1261
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@ac
    invoke-virtual {v9, v6}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    #@af
    move-result v9

    #@b0
    .line 1259
    if-eqz v9, :cond_7

    #@b2
    .line 1262
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@b4
    if-eqz v9, :cond_8

    #@b6
    .line 1263
    new-instance v9, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v10, "Found scored BSSID, keeping network: "

    #@be
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v9

    #@c2
    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@cf
    .line 1265
    :cond_8
    const/4 v9, 0x1

    #@d0
    return v9

    #@d1
    .line 1269
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_9
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@d3
    if-eqz v9, :cond_a

    #@d5
    .line 1270
    new-instance v9, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v10, "No recently scored BSSID found, giving up connection: "

    #@dd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v9

    #@e1
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@ee
    .line 1272
    :cond_a
    const/4 v9, 0x0

    #@ef
    return v9
.end method

.method private isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1220
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@3
    const-string/jumbo v2, "WEP"

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1221
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "PSK"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1220
    :cond_0
    :goto_0
    return v0

    #@18
    .line 1222
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1a
    const-string/jumbo v2, "EAP"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_0

    #@23
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method private logDenial(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1921
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1922
    return-void

    #@5
    .line 1924
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@1d
    .line 1920
    return-void
.end method

.method private setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "supplicantNetId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1343
    if-eqz p1, :cond_4

    #@5
    .line 1344
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@7
    if-eq p2, v2, :cond_0

    #@9
    .line 1347
    if-eq p2, v3, :cond_0

    #@b
    .line 1348
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "attemptAutoJoin() ERROR wpa_supplicant out of sync nid="

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1350
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1350
    const-string/jumbo v2, " WifiStateMachine="

    #@26
    .line 1349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1351
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@3b
    .line 1352
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    #@40
    .line 1353
    return v1

    #@41
    .line 1354
    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@43
    if-eqz v2, :cond_1

    #@45
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 1355
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_2

    #@4f
    .line 1365
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    #@55
    .line 1366
    return v0

    #@56
    .line 1360
    :cond_2
    const-string/jumbo v2, "attemptAutoJoin() disconnecting from unwanted ephemeral network"

    #@59
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@5c
    .line 1361
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5e
    .line 1362
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    #@60
    if-eqz v3, :cond_3

    #@62
    .line 1361
    :goto_0
    const/16 v3, 0x3f2

    #@64
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand(II)V

    #@67
    .line 1363
    return v1

    #@68
    :cond_3
    move v0, v1

    #@69
    .line 1362
    goto :goto_0

    #@6a
    .line 1370
    :cond_4
    if-ne p2, v3, :cond_5

    #@6c
    :goto_1
    return v0

    #@6d
    :cond_5
    move v0, v1

    #@6e
    goto :goto_1
.end method

.method private updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "now"    # J

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 1377
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@5
    if-eq v2, v8, :cond_0

    #@7
    .line 1378
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@9
    .line 1379
    const/4 v3, 0x4

    #@a
    .line 1378
    if-ne v2, v3, :cond_5

    #@c
    .line 1382
    :cond_0
    :goto_0
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1383
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@16
    cmp-long v2, v2, p2

    #@18
    if-lez v2, :cond_2

    #@1a
    .line 1385
    :cond_1
    iput-wide p2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@1c
    .line 1387
    :cond_2
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@1e
    sub-long v2, p2, v2

    #@20
    .line 1388
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@22
    iget v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    #@24
    int-to-long v4, v4

    #@25
    .line 1387
    cmp-long v2, v2, v4

    #@27
    if-lez v2, :cond_6

    #@29
    .line 1390
    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@2b
    .line 1393
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@2d
    .line 1394
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@2f
    .line 1395
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@31
    .line 1396
    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@34
    .line 1398
    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@36
    .line 1410
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@38
    if-eqz v2, :cond_4

    #@3a
    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "attemptAutoJoin skip candidate due to auto join status "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 1412
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@48
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 1412
    const-string/jumbo v3, " key "

    #@53
    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 1413
    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    .line 1414
    const-string/jumbo v3, " reason "

    #@62
    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    .line 1414
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@68
    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@73
    .line 1374
    :cond_4
    return-void

    #@74
    .line 1380
    :cond_5
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@76
    .line 1381
    const/4 v3, 0x3

    #@77
    .line 1380
    if-ne v2, v3, :cond_3

    #@79
    goto :goto_0

    #@7a
    .line 1400
    :cond_6
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@7c
    if-eqz v2, :cond_3

    #@7e
    .line 1401
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@80
    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    #@82
    int-to-long v2, v2

    #@83
    .line 1402
    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@85
    sub-long v4, p2, v4

    #@87
    .line 1401
    sub-long v0, v2, v4

    #@89
    .line 1403
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v3, "attemptautoJoin "

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    .line 1404
    const-string/jumbo v3, " dont unblacklist yet, waiting for "

    #@a0
    .line 1403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    .line 1405
    const-string/jumbo v3, " ms"

    #@ab
    .line 1403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@b6
    goto :goto_1
.end method


# virtual methods
.method addToScanCache(Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 220
    .local p1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v8, 0x0

    #@1
    .line 221
    .local v8, "numScanResultsKnown":I
    const/4 v2, 0x0

    #@2
    .line 222
    .local v2, "associatedConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    #@3
    .line 223
    .local v4, "didAssociate":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v6

    #@7
    .line 225
    .local v6, "now":J
    new-instance v13, Ljava/util/ArrayList;

    #@9
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 227
    .local v13, "unknownScanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v11

    #@10
    .end local v4    # "didAssociate":Z
    .local v11, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v14

    #@14
    if-eqz v14, :cond_8

    #@16
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v10

    #@1a
    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    #@1c
    .line 228
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@1f
    move-result-object v9

    #@20
    .line 229
    .local v9, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@22
    if-eqz v14, :cond_0

    #@24
    .line 231
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@26
    if-eqz v14, :cond_1

    #@28
    .line 232
    new-instance v14, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v15, " addToScanCache "

    #@30
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v14

    #@34
    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@36
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v14

    #@3a
    const-string/jumbo v15, " "

    #@3d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v14

    #@41
    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@43
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v14

    #@47
    .line 233
    const-string/jumbo v15, " tsf="

    #@4a
    .line 232
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v14

    #@4e
    .line 233
    iget-wide v0, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    #@50
    move-wide/from16 v16, v0

    #@52
    .line 232
    move-wide/from16 v0, v16

    #@54
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v14

    #@58
    .line 234
    const-string/jumbo v15, " now= "

    #@5b
    .line 232
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v14

    #@5f
    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@62
    move-result-object v14

    #@63
    .line 234
    const-string/jumbo v15, " uptime="

    #@66
    .line 232
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v14

    #@6a
    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6d
    move-result-wide v16

    #@6e
    .line 232
    move-wide/from16 v0, v16

    #@70
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@73
    move-result-object v14

    #@74
    .line 235
    const-string/jumbo v15, " elapsed="

    #@77
    .line 232
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v14

    #@7b
    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7e
    move-result-wide v16

    #@7f
    .line 232
    move-wide/from16 v0, v16

    #@81
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@84
    move-result-object v14

    #@85
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v14

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@8e
    .line 239
    :cond_1
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    #@91
    .line 241
    move-object/from16 v0, p0

    #@93
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V

    #@96
    .line 243
    move-object/from16 v0, p0

    #@98
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@9a
    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    #@9d
    move-result v14

    #@9e
    if-nez v14, :cond_4

    #@a0
    .line 244
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v9, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V

    #@a5
    .line 257
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@a7
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@a9
    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@ab
    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 259
    move-object/from16 v0, p0

    #@b0
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@b2
    invoke-virtual {v14, v10}, Lcom/android/server/wifi/WifiConfigStore;->updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z

    #@b5
    move-result v4

    #@b6
    .line 262
    .local v4, "didAssociate":Z
    if-nez v4, :cond_6

    #@b8
    .line 265
    const/4 v14, 0x1

    #@b9
    iput-boolean v14, v9, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@bb
    .line 272
    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    #@bd
    .line 273
    add-int/lit8 v8, v8, 0x1

    #@bf
    .line 274
    iget v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@c1
    add-int/lit8 v14, v14, 0x1

    #@c3
    iput v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@c5
    goto/16 :goto_0

    #@c7
    .line 246
    .end local v4    # "didAssociate":Z
    :cond_4
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@c9
    if-eqz v14, :cond_2

    #@cb
    .line 247
    const-string/jumbo v3, ""

    #@ce
    .line 248
    .local v3, "cap":Ljava/lang/String;
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@d0
    if-eqz v14, :cond_5

    #@d2
    .line 249
    iget-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@d4
    .line 250
    :cond_5
    move-object/from16 v0, p0

    #@d6
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@d8
    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    #@db
    move-result v12

    #@dc
    .line 251
    .local v12, "score":I
    new-instance v14, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@e3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v14

    #@e7
    const-string/jumbo v15, " "

    #@ea
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v14

    #@ee
    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v14

    #@f4
    const-string/jumbo v15, " rssi="

    #@f7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v14

    #@fb
    .line 252
    iget v15, v9, Landroid/net/wifi/ScanResult;->level:I

    #@fd
    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v14

    #@101
    .line 252
    const-string/jumbo v15, " cap "

    #@104
    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v14

    #@108
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v14

    #@10c
    .line 252
    const-string/jumbo v15, " is scored : "

    #@10f
    .line 251
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v14

    #@113
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v14

    #@117
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v14

    #@11b
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@120
    goto :goto_1

    #@121
    .line 268
    .end local v3    # "cap":Ljava/lang/String;
    .end local v12    # "score":I
    .restart local v4    # "didAssociate":Z
    :cond_6
    iget-wide v14, v9, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@123
    sub-long v14, v6, v14

    #@125
    const-wide/32 v16, 0x1b77400

    #@128
    cmp-long v14, v14, v16

    #@12a
    if-lez v14, :cond_3

    #@12c
    .line 269
    const/4 v14, 0x0

    #@12d
    invoke-virtual {v9, v14}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    #@130
    goto :goto_2

    #@131
    .line 276
    :cond_7
    const/4 v14, 0x0

    #@132
    iput v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@134
    goto/16 :goto_0

    #@136
    .line 280
    .end local v4    # "didAssociate":Z
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@139
    move-result v14

    #@13a
    if-eqz v14, :cond_9

    #@13c
    .line 282
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@13f
    move-result v14

    #@140
    new-array v14, v14, [Landroid/net/NetworkKey;

    #@142
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@145
    move-result-object v5

    #@146
    check-cast v5, [Landroid/net/NetworkKey;

    #@148
    .line 284
    .local v5, "newKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    #@14a
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    #@14c
    invoke-virtual {v14, v5}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    #@14f
    .line 286
    .end local v5    # "newKeys":[Landroid/net/NetworkKey;
    :cond_9
    return v8
.end method

.method addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    .local p2, "unknownScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    :try_start_0
    new-instance v3, Landroid/net/WifiKey;

    #@2
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v5, "\""

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v4

    #@e
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "\""

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@21
    invoke-direct {v3, v4, v5}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 205
    :goto_0
    if-eqz v3, :cond_0

    #@26
    .line 206
    new-instance v2, Landroid/net/NetworkKey;

    #@28
    invoke-direct {v2, v3}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    #@2b
    .line 208
    .local v2, "nkey":Landroid/net/NetworkKey;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 210
    .end local v2    # "nkey":Landroid/net/NetworkKey;
    :cond_0
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@30
    if-eqz v4, :cond_2

    #@32
    .line 211
    const-string/jumbo v0, ""

    #@35
    .line 212
    .local v0, "cap":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 213
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@3b
    .line 214
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    const-string/jumbo v5, " "

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, " rssi="

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    .line 215
    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    #@5c
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 215
    const-string/jumbo v5, " cap "

    #@63
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 215
    const-string/jumbo v5, " tsf "

    #@6e
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 215
    iget-wide v6, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    #@74
    .line 214
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    .line 215
    const-string/jumbo v5, " is not scored"

    #@7b
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@86
    .line 195
    .end local v0    # "cap":Ljava/lang/String;
    :cond_2
    return-void

    #@87
    .line 200
    :catch_0
    move-exception v1

    #@88
    .line 201
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v5, "AutoJoinController: received badly encoded SSID=["

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    .line 202
    const-string/jumbo v5, "] ->skipping this network"

    #@9d
    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@a8
    .line 203
    const/4 v3, 0x0

    #@a9
    .local v3, "wkey":Landroid/net/WifiKey;
    goto/16 :goto_0
.end method

.method attemptAutoJoin()Z
    .locals 48

    #@0
    .prologue
    .line 1437
    const/16 v19, 0x0

    #@2
    .line 1438
    .local v19, "found":Z
    const/16 v44, 0x0

    #@4
    move/from16 v0, v44

    #@6
    move-object/from16 v1, p0

    #@8
    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    #@a
    .line 1439
    const/16 v44, 0x0

    #@c
    move/from16 v0, v44

    #@e
    move-object/from16 v1, p0

    #@10
    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    #@12
    .line 1440
    const/16 v28, 0x0

    #@14
    .line 1441
    .local v28, "networkSwitchType":I
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    #@16
    .line 1443
    .local v6, "age":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v30

    #@1a
    .line 1445
    .local v30, "now":J
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@1e
    move-object/from16 v44, v0

    #@20
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    #@23
    move-result-object v23

    #@24
    .line 1446
    .local v23, "lastSelectedConfiguration":Ljava/lang/String;
    if-eqz v23, :cond_0

    #@26
    .line 1447
    const/16 v6, 0x36b0

    #@28
    .line 1451
    :cond_0
    const/16 v44, 0x0

    #@2a
    move-object/from16 v0, v44

    #@2c
    move-object/from16 v1, p0

    #@2e
    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    #@30
    .line 1452
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    move-object/from16 v44, v0

    #@36
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@39
    move-result-object v15

    #@3a
    .line 1454
    .local v15, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    #@3b
    .line 1457
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@3f
    move-object/from16 v44, v0

    #@41
    const/16 v45, 0x0

    #@43
    move-object/from16 v0, v44

    #@45
    move/from16 v1, v45

    #@47
    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    #@4a
    move-result-object v26

    #@4b
    .line 1458
    .local v26, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v26, :cond_2

    #@4d
    .line 1459
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@4f
    if-eqz v44, :cond_1

    #@51
    new-instance v44, Ljava/lang/StringBuilder;

    #@53
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v45, "attemptAutoJoin nothing known="

    #@59
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v44

    #@5d
    .line 1460
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@61
    move-object/from16 v45, v0

    #@63
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    #@66
    move-result v45

    #@67
    .line 1459
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v44

    #@6b
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v44

    #@6f
    move-object/from16 v0, p0

    #@71
    move-object/from16 v1, v44

    #@73
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@76
    .line 1461
    :cond_1
    const/16 v44, 0x0

    #@78
    return v44

    #@79
    .line 1465
    :cond_2
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7d
    move-object/from16 v44, v0

    #@7f
    const/16 v45, 0x1

    #@81
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    #@84
    move-result-object v44

    #@85
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, v44

    #@89
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->getNetID(Ljava/lang/String;)I

    #@8c
    move-result v42

    #@8d
    .line 1467
    .local v42, "supplicantNetId":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@8f
    if-eqz v44, :cond_5

    #@91
    .line 1468
    const-string/jumbo v9, ""

    #@94
    .line 1469
    .local v9, "conf":Ljava/lang/String;
    const-string/jumbo v22, ""

    #@97
    .line 1470
    .local v22, "last":Ljava/lang/String;
    if-eqz v15, :cond_3

    #@99
    .line 1471
    new-instance v44, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v45, " current="

    #@a1
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v44

    #@a5
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@a8
    move-result-object v45

    #@a9
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v44

    #@ad
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    .line 1473
    :cond_3
    if-eqz v23, :cond_4

    #@b3
    .line 1474
    new-instance v44, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v45, " last="

    #@bb
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v44

    #@bf
    move-object/from16 v0, v44

    #@c1
    move-object/from16 v1, v23

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v44

    #@c7
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v22

    #@cb
    .line 1476
    :cond_4
    new-instance v44, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v45, "attemptAutoJoin() num recent config "

    #@d3
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v44

    #@d7
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@da
    move-result v45

    #@db
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@de
    move-result-object v45

    #@df
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v44

    #@e3
    move-object/from16 v0, v44

    #@e5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v44

    #@e9
    move-object/from16 v0, v44

    #@eb
    move-object/from16 v1, v22

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v44

    #@f1
    .line 1478
    const-string/jumbo v45, " ---> suppNetId="

    #@f4
    .line 1476
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v44

    #@f8
    .line 1478
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@fb
    move-result-object v45

    #@fc
    .line 1476
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v44

    #@100
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v44

    #@104
    move-object/from16 v0, p0

    #@106
    move-object/from16 v1, v44

    #@108
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@10b
    .line 1481
    .end local v9    # "conf":Ljava/lang/String;
    .end local v22    # "last":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@10d
    move/from16 v1, v42

    #@10f
    invoke-direct {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z

    #@112
    move-result v44

    #@113
    if-nez v44, :cond_6

    #@115
    .line 1482
    const/16 v44, 0x0

    #@117
    return v44

    #@118
    .line 1485
    :cond_6
    const/16 v16, -0x1

    #@11a
    .line 1486
    .local v16, "currentNetId":I
    if-eqz v15, :cond_7

    #@11c
    .line 1489
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@11e
    move/from16 v16, v0

    #@120
    .line 1497
    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@123
    move-result-object v11

    #@124
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .local v11, "config$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@127
    move-result v44

    #@128
    if-eqz v44, :cond_23

    #@12a
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12d
    move-result-object v10

    #@12e
    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    #@130
    .line 1498
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@132
    move-object/from16 v44, v0

    #@134
    if-eqz v44, :cond_8

    #@136
    .line 1502
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@138
    move/from16 v44, v0

    #@13a
    const/16 v45, 0x80

    #@13c
    move/from16 v0, v44

    #@13e
    move/from16 v1, v45

    #@140
    if-lt v0, v1, :cond_9

    #@142
    .line 1503
    move-object/from16 v0, p0

    #@144
    move-wide/from16 v1, v30

    #@146
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V

    #@149
    goto :goto_0

    #@14a
    .line 1507
    :cond_9
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@14c
    move/from16 v44, v0

    #@14e
    const/16 v45, 0x3

    #@150
    move/from16 v0, v44

    #@152
    move/from16 v1, v45

    #@154
    if-eq v0, v1, :cond_a

    #@156
    .line 1508
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@158
    move/from16 v44, v0

    #@15a
    const/16 v45, 0x2

    #@15c
    move/from16 v0, v44

    #@15e
    move/from16 v1, v45

    #@160
    if-ne v0, v1, :cond_b

    #@162
    .line 1509
    :cond_a
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@164
    if-eqz v44, :cond_8

    #@166
    .line 1510
    new-instance v44, Ljava/lang/StringBuilder;

    #@168
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    const-string/jumbo v45, "attemptAutoJoin skip candidate due to user approval status "

    #@16e
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v44

    #@172
    .line 1511
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@174
    move/from16 v45, v0

    #@176
    invoke-static/range {v45 .. v45}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    #@179
    move-result-object v45

    #@17a
    .line 1510
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v44

    #@17e
    .line 1511
    const-string/jumbo v45, " key "

    #@181
    .line 1510
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v44

    #@185
    .line 1512
    const/16 v45, 0x1

    #@187
    move/from16 v0, v45

    #@189
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@18c
    move-result-object v45

    #@18d
    .line 1510
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v44

    #@191
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v44

    #@195
    move-object/from16 v0, p0

    #@197
    move-object/from16 v1, v44

    #@199
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@19c
    goto :goto_0

    #@19d
    .line 1518
    :cond_b
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@19f
    move-wide/from16 v44, v0

    #@1a1
    const-wide/16 v46, 0x0

    #@1a3
    cmp-long v44, v44, v46

    #@1a5
    if-lez v44, :cond_c

    #@1a7
    .line 1519
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@1a9
    move-wide/from16 v44, v0

    #@1ab
    cmp-long v44, v30, v44

    #@1ad
    if-gez v44, :cond_e

    #@1af
    .line 1525
    const/16 v44, 0x0

    #@1b1
    move/from16 v0, v44

    #@1b3
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@1b6
    .line 1537
    :cond_c
    :goto_1
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@1b8
    move-object/from16 v44, v0

    #@1ba
    if-eqz v44, :cond_8

    #@1bc
    .line 1542
    move-object/from16 v0, p0

    #@1be
    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    #@1c1
    move-result v44

    #@1c2
    if-eqz v44, :cond_10

    #@1c4
    .line 1543
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@1c6
    if-eqz v44, :cond_d

    #@1c8
    .line 1544
    new-instance v44, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v45, "attemptAutoJoin do not unblacklist due to low visibility "

    #@1d0
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v44

    #@1d4
    .line 1545
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1d7
    move-result-object v45

    #@1d8
    .line 1544
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v44

    #@1dc
    .line 1545
    const-string/jumbo v45, " status="

    #@1df
    .line 1544
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v44

    #@1e3
    .line 1545
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@1e5
    move/from16 v45, v0

    #@1e7
    .line 1544
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v44

    #@1eb
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v44

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    move-object/from16 v1, v44

    #@1f3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@1f6
    .line 1563
    :cond_d
    :goto_2
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@1f8
    move/from16 v44, v0

    #@1fa
    .line 1564
    const/16 v45, 0x1

    #@1fc
    .line 1563
    move/from16 v0, v44

    #@1fe
    move/from16 v1, v45

    #@200
    if-lt v0, v1, :cond_12

    #@202
    .line 1566
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@204
    if-eqz v44, :cond_8

    #@206
    .line 1567
    new-instance v44, Ljava/lang/StringBuilder;

    #@208
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@20b
    const-string/jumbo v45, "attemptAutoJoin skip blacklisted -> status="

    #@20e
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v44

    #@212
    .line 1568
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@215
    move-result-object v45

    #@216
    .line 1567
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v44

    #@21a
    .line 1568
    const-string/jumbo v45, " status="

    #@21d
    .line 1567
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v44

    #@221
    .line 1568
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@223
    move/from16 v45, v0

    #@225
    .line 1567
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@228
    move-result-object v44

    #@229
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22c
    move-result-object v44

    #@22d
    move-object/from16 v0, p0

    #@22f
    move-object/from16 v1, v44

    #@231
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@234
    goto/16 :goto_0

    #@236
    .line 1527
    :cond_e
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@238
    move-wide/from16 v44, v0

    #@23a
    sub-long v44, v30, v44

    #@23c
    const-wide/32 v46, 0x1b77400

    #@23f
    cmp-long v44, v44, v46

    #@241
    if-lez v44, :cond_f

    #@243
    .line 1529
    const/16 v44, 0x0

    #@245
    move/from16 v0, v44

    #@247
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@24a
    goto/16 :goto_1

    #@24c
    .line 1530
    :cond_f
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@24e
    move-wide/from16 v44, v0

    #@250
    sub-long v44, v30, v44

    #@252
    const-wide/32 v46, 0x1b7740

    #@255
    cmp-long v44, v44, v46

    #@257
    if-lez v44, :cond_c

    #@259
    .line 1532
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@25b
    move/from16 v44, v0

    #@25d
    add-int/lit8 v44, v44, -0x8

    #@25f
    move/from16 v0, v44

    #@261
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@264
    goto/16 :goto_1

    #@266
    .line 1547
    :cond_10
    move-object/from16 v0, p0

    #@268
    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    #@26b
    move-result v44

    #@26c
    if-eqz v44, :cond_11

    #@26e
    .line 1550
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@270
    move/from16 v44, v0

    #@272
    add-int/lit8 v44, v44, -0x1

    #@274
    move/from16 v0, v44

    #@276
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@279
    .line 1551
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@27b
    if-eqz v44, :cond_d

    #@27d
    .line 1552
    new-instance v44, Ljava/lang/StringBuilder;

    #@27f
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@282
    const-string/jumbo v45, "attemptAutoJoin good candidate seen, bumped soft -> status="

    #@285
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v44

    #@289
    .line 1553
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@28c
    move-result-object v45

    #@28d
    .line 1552
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v44

    #@291
    .line 1553
    const-string/jumbo v45, " status="

    #@294
    .line 1552
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v44

    #@298
    .line 1553
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@29a
    move/from16 v45, v0

    #@29c
    .line 1552
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v44

    #@2a0
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a3
    move-result-object v44

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    move-object/from16 v1, v44

    #@2a8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@2ab
    goto/16 :goto_2

    #@2ad
    .line 1556
    :cond_11
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@2af
    move/from16 v44, v0

    #@2b1
    add-int/lit8 v44, v44, -0x3

    #@2b3
    move/from16 v0, v44

    #@2b5
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@2b8
    .line 1557
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@2ba
    if-eqz v44, :cond_d

    #@2bc
    .line 1558
    new-instance v44, Ljava/lang/StringBuilder;

    #@2be
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@2c1
    const-string/jumbo v45, "attemptAutoJoin good candidate seen, bumped hard -> status="

    #@2c4
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v44

    #@2c8
    .line 1559
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2cb
    move-result-object v45

    #@2cc
    .line 1558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v44

    #@2d0
    .line 1559
    const-string/jumbo v45, " status="

    #@2d3
    .line 1558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v44

    #@2d7
    .line 1559
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@2d9
    move/from16 v45, v0

    #@2db
    .line 1558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v44

    #@2df
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e2
    move-result-object v44

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    move-object/from16 v1, v44

    #@2e7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@2ea
    goto/16 :goto_2

    #@2ec
    .line 1572
    :cond_12
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2ee
    move/from16 v44, v0

    #@2f0
    move/from16 v0, v44

    #@2f2
    move/from16 v1, v16

    #@2f4
    if-ne v0, v1, :cond_13

    #@2f6
    .line 1573
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@2f8
    if-eqz v44, :cond_8

    #@2fa
    .line 1574
    new-instance v44, Ljava/lang/StringBuilder;

    #@2fc
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@2ff
    const-string/jumbo v45, "attemptAutoJoin skip current candidate  "

    #@302
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v44

    #@306
    .line 1575
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@309
    move-result-object v45

    #@30a
    .line 1574
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v44

    #@30e
    .line 1576
    const-string/jumbo v45, " key "

    #@311
    .line 1574
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v44

    #@315
    .line 1576
    const/16 v45, 0x1

    #@317
    move/from16 v0, v45

    #@319
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@31c
    move-result-object v45

    #@31d
    .line 1574
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v44

    #@321
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v44

    #@325
    move-object/from16 v0, p0

    #@327
    move-object/from16 v1, v44

    #@329
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@32c
    goto/16 :goto_0

    #@32e
    .line 1581
    :cond_13
    const/16 v21, 0x0

    #@330
    .line 1582
    .local v21, "isLastSelected":Z
    if-eqz v23, :cond_14

    #@332
    .line 1583
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@335
    move-result-object v44

    #@336
    move-object/from16 v0, v44

    #@338
    move-object/from16 v1, v23

    #@33a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33d
    move-result v44

    #@33e
    .line 1582
    if-eqz v44, :cond_14

    #@340
    .line 1584
    const/16 v21, 0x1

    #@342
    .line 1587
    :cond_14
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@344
    move-wide/from16 v44, v0

    #@346
    const-wide/16 v46, 0x0

    #@348
    cmp-long v44, v44, v46

    #@34a
    if-eqz v44, :cond_15

    #@34c
    .line 1588
    if-eqz v15, :cond_15

    #@34e
    .line 1589
    if-eqz v23, :cond_17

    #@350
    .line 1590
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@353
    move-result-object v44

    #@354
    move-object/from16 v0, v44

    #@356
    move-object/from16 v1, v23

    #@358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35b
    move-result v44

    #@35c
    if-eqz v44, :cond_17

    #@35e
    .line 1609
    :cond_15
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@360
    move/from16 v44, v0

    #@362
    move-object/from16 v0, p0

    #@364
    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@366
    move/from16 v45, v0

    #@368
    add-int v7, v44, v45

    #@36a
    .line 1611
    .local v7, "boost":I
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@36e
    move-object/from16 v44, v0

    #@370
    move-object/from16 v0, v44

    #@372
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@374
    move-object/from16 v44, v0

    #@376
    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@379
    move-result v44

    #@37a
    sub-int v44, v44, v7

    #@37c
    .line 1612
    move-object/from16 v0, p0

    #@37e
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@380
    move-object/from16 v45, v0

    #@382
    move-object/from16 v0, v45

    #@384
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@386
    move-object/from16 v45, v0

    #@388
    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@38b
    move-result v45

    #@38c
    sub-int v45, v45, v7

    #@38e
    .line 1610
    move-object/from16 v0, p0

    #@390
    move/from16 v1, v44

    #@392
    move/from16 v2, v45

    #@394
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z

    #@397
    move-result v44

    #@398
    if-eqz v44, :cond_19

    #@39a
    .line 1614
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@39c
    if-eqz v44, :cond_16

    #@39e
    .line 1615
    new-instance v44, Ljava/lang/StringBuilder;

    #@3a0
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@3a3
    const-string/jumbo v45, "attemptAutoJoin skip due to low visibility "

    #@3a6
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v44

    #@3aa
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3ad
    move-result-object v45

    #@3ae
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b1
    move-result-object v44

    #@3b2
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b5
    move-result-object v44

    #@3b6
    move-object/from16 v0, p0

    #@3b8
    move-object/from16 v1, v44

    #@3ba
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@3bd
    .line 1620
    :cond_16
    if-nez v21, :cond_18

    #@3bf
    .line 1621
    const/16 v44, 0x1

    #@3c1
    move/from16 v0, v44

    #@3c3
    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@3c5
    .line 1622
    const/16 v44, 0x1

    #@3c7
    move/from16 v0, v44

    #@3c9
    move-object/from16 v1, p0

    #@3cb
    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    #@3cd
    goto/16 :goto_0

    #@3cf
    .line 1595
    .end local v7    # "boost":I
    :cond_17
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@3d1
    move-wide/from16 v44, v0

    #@3d3
    cmp-long v44, v30, v44

    #@3d5
    if-lez v44, :cond_15

    #@3d7
    .line 1596
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@3d9
    move-wide/from16 v44, v0

    #@3db
    sub-long v44, v30, v44

    #@3dd
    .line 1597
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@3df
    move-wide/from16 v46, v0

    #@3e1
    .line 1596
    cmp-long v44, v44, v46

    #@3e3
    if-gez v44, :cond_15

    #@3e5
    .line 1598
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@3e7
    if-eqz v44, :cond_8

    #@3e9
    .line 1599
    new-instance v44, Ljava/lang/StringBuilder;

    #@3eb
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@3ee
    const-string/jumbo v45, "compareNetwork not switching to "

    #@3f1
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f4
    move-result-object v44

    #@3f5
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3f8
    move-result-object v45

    #@3f9
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fc
    move-result-object v44

    #@3fd
    .line 1600
    const-string/jumbo v45, " from current "

    #@400
    .line 1599
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@403
    move-result-object v44

    #@404
    .line 1600
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@407
    move-result-object v45

    #@408
    .line 1599
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    move-result-object v44

    #@40c
    .line 1601
    const-string/jumbo v45, " because it is blacklisted due to roam failure, "

    #@40f
    .line 1599
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@412
    move-result-object v44

    #@413
    .line 1602
    const-string/jumbo v45, " blacklist remain time = "

    #@416
    .line 1599
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@419
    move-result-object v44

    #@41a
    .line 1603
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@41c
    move-wide/from16 v46, v0

    #@41e
    sub-long v46, v30, v46

    #@420
    .line 1599
    move-object/from16 v0, v44

    #@422
    move-wide/from16 v1, v46

    #@424
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@427
    move-result-object v44

    #@428
    .line 1603
    const-string/jumbo v45, " ms"

    #@42b
    .line 1599
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42e
    move-result-object v44

    #@42f
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@432
    move-result-object v44

    #@433
    move-object/from16 v0, p0

    #@435
    move-object/from16 v1, v44

    #@437
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@43a
    goto/16 :goto_0

    #@43c
    .line 1626
    .restart local v7    # "boost":I
    :cond_18
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@43e
    move/from16 v44, v0

    #@440
    .line 1627
    sget v45, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    #@442
    .line 1626
    move/from16 v0, v44

    #@444
    move/from16 v1, v45

    #@446
    if-ge v0, v1, :cond_19

    #@448
    .line 1628
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@44a
    move/from16 v44, v0

    #@44c
    .line 1626
    if-eqz v44, :cond_19

    #@44e
    .line 1629
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@450
    move/from16 v44, v0

    #@452
    add-int/lit8 v44, v44, 0x4

    #@454
    move/from16 v0, v44

    #@456
    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@458
    .line 1634
    :cond_19
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@45a
    move/from16 v44, v0

    #@45c
    if-lez v44, :cond_1a

    #@45e
    .line 1635
    if-eqz v21, :cond_1d

    #@460
    .line 1648
    :cond_1a
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@462
    if-eqz v44, :cond_1c

    #@464
    .line 1649
    const-string/jumbo v12, ""

    #@467
    .line 1650
    .local v12, "cur":Ljava/lang/String;
    if-eqz v8, :cond_1b

    #@469
    .line 1651
    new-instance v44, Ljava/lang/StringBuilder;

    #@46b
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@46e
    const-string/jumbo v45, " current candidate "

    #@471
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@474
    move-result-object v44

    #@475
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@478
    move-result-object v45

    #@479
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47c
    move-result-object v44

    #@47d
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@480
    move-result-object v12

    #@481
    .line 1653
    :cond_1b
    new-instance v44, Ljava/lang/StringBuilder;

    #@483
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@486
    const-string/jumbo v45, "attemptAutoJoin trying id="

    #@489
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v44

    #@48d
    .line 1654
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@48f
    move/from16 v45, v0

    #@491
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@494
    move-result-object v45

    #@495
    .line 1653
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@498
    move-result-object v44

    #@499
    .line 1654
    const-string/jumbo v45, " "

    #@49c
    .line 1653
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    move-result-object v44

    #@4a0
    .line 1655
    const/16 v45, 0x1

    #@4a2
    move/from16 v0, v45

    #@4a4
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@4a7
    move-result-object v45

    #@4a8
    .line 1653
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ab
    move-result-object v44

    #@4ac
    .line 1656
    const-string/jumbo v45, " status="

    #@4af
    .line 1653
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b2
    move-result-object v44

    #@4b3
    .line 1656
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@4b5
    move/from16 v45, v0

    #@4b7
    .line 1653
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v44

    #@4bb
    move-object/from16 v0, v44

    #@4bd
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c0
    move-result-object v44

    #@4c1
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c4
    move-result-object v44

    #@4c5
    move-object/from16 v0, p0

    #@4c7
    move-object/from16 v1, v44

    #@4c9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@4cc
    .line 1660
    .end local v12    # "cur":Ljava/lang/String;
    :cond_1c
    if-nez v8, :cond_1e

    #@4ce
    .line 1661
    move-object v8, v10

    #@4cf
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    #@4d1
    .line 1636
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    :cond_1d
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@4d3
    move/from16 v44, v0

    #@4d5
    if-nez v44, :cond_1a

    #@4d7
    .line 1640
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@4d9
    if-eqz v44, :cond_8

    #@4db
    .line 1641
    new-instance v44, Ljava/lang/StringBuilder;

    #@4dd
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@4e0
    const-string/jumbo v45, "attemptAutoJoin skip candidate due to no InternetAccess  "

    #@4e3
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e6
    move-result-object v44

    #@4e7
    .line 1642
    const/16 v45, 0x1

    #@4e9
    move/from16 v0, v45

    #@4eb
    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@4ee
    move-result-object v45

    #@4ef
    .line 1641
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v44

    #@4f3
    .line 1643
    const-string/jumbo v45, " num reports "

    #@4f6
    .line 1641
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f9
    move-result-object v44

    #@4fa
    .line 1643
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@4fc
    move/from16 v45, v0

    #@4fe
    .line 1641
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@501
    move-result-object v44

    #@502
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@505
    move-result-object v44

    #@506
    move-object/from16 v0, p0

    #@508
    move-object/from16 v1, v44

    #@50a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@50d
    goto/16 :goto_0

    #@50f
    .line 1663
    :cond_1e
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@511
    if-eqz v44, :cond_1f

    #@513
    .line 1664
    new-instance v44, Ljava/lang/StringBuilder;

    #@515
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@518
    const-string/jumbo v45, "attemptAutoJoin will compare candidate  "

    #@51b
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51e
    move-result-object v44

    #@51f
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@522
    move-result-object v45

    #@523
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@526
    move-result-object v44

    #@527
    .line 1665
    const-string/jumbo v45, " with "

    #@52a
    .line 1664
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52d
    move-result-object v44

    #@52e
    .line 1665
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@531
    move-result-object v45

    #@532
    .line 1664
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@535
    move-result-object v44

    #@536
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@539
    move-result-object v44

    #@53a
    move-object/from16 v0, p0

    #@53c
    move-object/from16 v1, v44

    #@53e
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@541
    .line 1668
    :cond_1f
    move-object/from16 v0, p0

    #@543
    invoke-virtual {v0, v8, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    #@546
    move-result v29

    #@547
    .line 1669
    .local v29, "order":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@549
    if-eqz v44, :cond_20

    #@54b
    .line 1670
    new-instance v44, Ljava/lang/StringBuilder;

    #@54d
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@550
    const-string/jumbo v45, "attemptAutoJoin compareWifiConfigurations returned "

    #@553
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@556
    move-result-object v44

    #@557
    move-object/from16 v0, v44

    #@559
    move/from16 v1, v29

    #@55b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55e
    move-result-object v44

    #@55f
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@562
    move-result-object v44

    #@563
    move-object/from16 v0, p0

    #@565
    move-object/from16 v1, v44

    #@567
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@56a
    .line 1678
    :cond_20
    if-eqz v23, :cond_22

    #@56c
    .line 1679
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@56f
    move-result-object v44

    #@570
    move-object/from16 v0, v44

    #@572
    move-object/from16 v1, v23

    #@574
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@577
    move-result v44

    #@578
    .line 1678
    if-eqz v44, :cond_22

    #@57a
    .line 1684
    add-int/lit8 v29, v29, -0x64

    #@57c
    .line 1685
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@57e
    if-eqz v44, :cond_21

    #@580
    .line 1686
    new-instance v44, Ljava/lang/StringBuilder;

    #@582
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@585
    const-string/jumbo v45, "     ...and prefers -100 "

    #@588
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58b
    move-result-object v44

    #@58c
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@58f
    move-result-object v45

    #@590
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@593
    move-result-object v44

    #@594
    .line 1687
    const-string/jumbo v45, " over "

    #@597
    .line 1686
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59a
    move-result-object v44

    #@59b
    .line 1687
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@59e
    move-result-object v45

    #@59f
    .line 1686
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a2
    move-result-object v44

    #@5a3
    .line 1688
    const-string/jumbo v45, " because it is the last selected -> "

    #@5a6
    .line 1686
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a9
    move-result-object v44

    #@5aa
    .line 1689
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5ad
    move-result-object v45

    #@5ae
    .line 1686
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b1
    move-result-object v44

    #@5b2
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b5
    move-result-object v44

    #@5b6
    move-object/from16 v0, p0

    #@5b8
    move-object/from16 v1, v44

    #@5ba
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@5bd
    .line 1706
    :cond_21
    :goto_3
    if-lez v29, :cond_8

    #@5bf
    .line 1708
    move-object v8, v10

    #@5c0
    .restart local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    #@5c2
    .line 1691
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    :cond_22
    if-eqz v23, :cond_21

    #@5c4
    .line 1692
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5c7
    move-result-object v44

    #@5c8
    move-object/from16 v0, v44

    #@5ca
    move-object/from16 v1, v23

    #@5cc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5cf
    move-result v44

    #@5d0
    .line 1691
    if-eqz v44, :cond_21

    #@5d2
    .line 1697
    add-int/lit8 v29, v29, 0x64

    #@5d4
    .line 1698
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@5d6
    if-eqz v44, :cond_21

    #@5d8
    .line 1699
    new-instance v44, Ljava/lang/StringBuilder;

    #@5da
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@5dd
    const-string/jumbo v45, "     ...and prefers +100 "

    #@5e0
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e3
    move-result-object v44

    #@5e4
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5e7
    move-result-object v45

    #@5e8
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5eb
    move-result-object v44

    #@5ec
    .line 1700
    const-string/jumbo v45, " over "

    #@5ef
    .line 1699
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f2
    move-result-object v44

    #@5f3
    .line 1700
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5f6
    move-result-object v45

    #@5f7
    .line 1699
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fa
    move-result-object v44

    #@5fb
    .line 1701
    const-string/jumbo v45, " because it is the last selected -> "

    #@5fe
    .line 1699
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@601
    move-result-object v44

    #@602
    .line 1702
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@605
    move-result-object v45

    #@606
    .line 1699
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@609
    move-result-object v44

    #@60a
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60d
    move-result-object v44

    #@60e
    move-object/from16 v0, p0

    #@610
    move-object/from16 v1, v44

    #@612
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@615
    goto :goto_3

    #@616
    .line 1714
    .end local v7    # "boost":I
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "isLastSelected":Z
    .end local v29    # "order":I
    :cond_23
    move-object/from16 v0, p0

    #@618
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@61a
    move-object/from16 v44, v0

    #@61c
    if-eqz v44, :cond_28

    #@61e
    move-object/from16 v0, p0

    #@620
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    #@622
    move/from16 v44, v0

    #@624
    if-eqz v44, :cond_28

    #@626
    .line 1715
    sget v38, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@628
    .line 1716
    .local v38, "rssi5":I
    sget v37, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@62a
    .line 1717
    .local v37, "rssi24":I
    if-eqz v8, :cond_24

    #@62c
    .line 1718
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@62e
    move-object/from16 v44, v0

    #@630
    move-object/from16 v0, v44

    #@632
    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@634
    move/from16 v38, v0

    #@636
    .line 1719
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@638
    move-object/from16 v44, v0

    #@63a
    move-object/from16 v0, v44

    #@63c
    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@63e
    move/from16 v37, v0

    #@640
    .line 1723
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@643
    move-result-wide v32

    #@644
    .line 1724
    .local v32, "nowMs":J
    const/16 v17, -0x2710

    #@646
    .line 1726
    .local v17, "currentScore":I
    const/16 v43, 0x0

    #@648
    .line 1728
    .local v43, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    #@64a
    move/from16 v1, v37

    #@64c
    move/from16 v2, v38

    #@64e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->isBadCandidate(II)Z

    #@651
    move-result v44

    #@652
    if-eqz v44, :cond_27

    #@654
    .line 1729
    move-object/from16 v0, p0

    #@656
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@658
    move-object/from16 v44, v0

    #@65a
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@65d
    move-result-object v44

    #@65e
    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@661
    move-result-object v40

    #@662
    .end local v43    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    .local v40, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_25
    :goto_4
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    #@665
    move-result v44

    #@666
    if-eqz v44, :cond_27

    #@668
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66b
    move-result-object v39

    #@66c
    check-cast v39, Lcom/android/server/wifi/ScanDetail;

    #@66e
    .line 1730
    .local v39, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@671
    move-result-object v35

    #@672
    .line 1733
    .local v35, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v35

    #@674
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@676
    move-object/from16 v44, v0

    #@678
    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@67b
    move-result v44

    #@67c
    if-nez v44, :cond_25

    #@67e
    move-object/from16 v0, v35

    #@680
    iget-boolean v0, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@682
    move/from16 v44, v0

    #@684
    if-eqz v44, :cond_25

    #@686
    .line 1734
    move-object/from16 v0, p0

    #@688
    move-object/from16 v1, v35

    #@68a
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->isOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    #@68d
    move-result v44

    #@68e
    if-eqz v44, :cond_25

    #@690
    .line 1737
    new-instance v44, Ljava/lang/StringBuilder;

    #@692
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@695
    const-string/jumbo v45, "\""

    #@698
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69b
    move-result-object v44

    #@69c
    move-object/from16 v0, v35

    #@69e
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@6a0
    move-object/from16 v45, v0

    #@6a2
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a5
    move-result-object v44

    #@6a6
    const-string/jumbo v45, "\""

    #@6a9
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ac
    move-result-object v44

    #@6ad
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b0
    move-result-object v34

    #@6b1
    .line 1738
    .local v34, "quotedSSID":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6b3
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@6b5
    move-object/from16 v44, v0

    #@6b7
    move-object/from16 v0, v44

    #@6b9
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@6bb
    move-object/from16 v44, v0

    #@6bd
    move-object/from16 v0, v44

    #@6bf
    move-object/from16 v1, v34

    #@6c1
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6c4
    move-result v44

    #@6c5
    if-nez v44, :cond_25

    #@6c7
    .line 1742
    move-object/from16 v0, v35

    #@6c9
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@6cb
    move-wide/from16 v44, v0

    #@6cd
    sub-long v44, v32, v44

    #@6cf
    sget v46, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    #@6d1
    move/from16 v0, v46

    #@6d3
    int-to-long v0, v0

    #@6d4
    move-wide/from16 v46, v0

    #@6d6
    cmp-long v44, v44, v46

    #@6d8
    if-gez v44, :cond_25

    #@6da
    .line 1744
    move-object/from16 v0, p0

    #@6dc
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@6de
    move-object/from16 v44, v0

    #@6e0
    const/16 v45, 0x0

    #@6e2
    const/16 v46, 0x1

    #@6e4
    move-object/from16 v0, v44

    #@6e6
    move-object/from16 v1, v34

    #@6e8
    move/from16 v2, v45

    #@6ea
    move/from16 v3, v46

    #@6ec
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    #@6ef
    .line 1746
    if-eqz v15, :cond_26

    #@6f1
    .line 1747
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@6f3
    move-object/from16 v44, v0

    #@6f5
    move-object/from16 v0, v44

    #@6f7
    move-object/from16 v1, v34

    #@6f9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6fc
    move-result v20

    #@6fd
    .line 1748
    :goto_5
    move-object/from16 v0, p0

    #@6ff
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@701
    move-object/from16 v44, v0

    #@703
    move-object/from16 v0, v44

    #@705
    move-object/from16 v1, v35

    #@707
    move/from16 v2, v20

    #@709
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    #@70c
    move-result v41

    #@70d
    .line 1749
    .local v41, "score":I
    sget v44, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@70f
    move/from16 v0, v41

    #@711
    move/from16 v1, v44

    #@713
    if-eq v0, v1, :cond_25

    #@715
    .line 1750
    move/from16 v0, v41

    #@717
    move/from16 v1, v17

    #@719
    if-le v0, v1, :cond_25

    #@71b
    .line 1752
    move/from16 v17, v41

    #@71d
    .line 1753
    move-object/from16 v43, v39

    #@71f
    .line 1754
    .local v43, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@721
    if-eqz v44, :cond_25

    #@723
    .line 1755
    new-instance v44, Ljava/lang/StringBuilder;

    #@725
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@728
    const-string/jumbo v45, "AutoJoinController: found untrusted candidate "

    #@72b
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72e
    move-result-object v44

    #@72f
    .line 1756
    move-object/from16 v0, v35

    #@731
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@733
    move-object/from16 v45, v0

    #@735
    .line 1755
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@738
    move-result-object v44

    #@739
    .line 1757
    const-string/jumbo v45, " RSSI="

    #@73c
    .line 1755
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73f
    move-result-object v44

    #@740
    .line 1757
    move-object/from16 v0, v35

    #@742
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@744
    move/from16 v45, v0

    #@746
    .line 1755
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@749
    move-result-object v44

    #@74a
    .line 1758
    const-string/jumbo v45, " freq="

    #@74d
    .line 1755
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@750
    move-result-object v44

    #@751
    .line 1758
    move-object/from16 v0, v35

    #@753
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@755
    move/from16 v45, v0

    #@757
    .line 1755
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75a
    move-result-object v44

    #@75b
    .line 1759
    const-string/jumbo v45, " score="

    #@75e
    .line 1755
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@761
    move-result-object v44

    #@762
    move-object/from16 v0, v44

    #@764
    move/from16 v1, v41

    #@766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@769
    move-result-object v44

    #@76a
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76d
    move-result-object v44

    #@76e
    move-object/from16 v0, p0

    #@770
    move-object/from16 v1, v44

    #@772
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@775
    goto/16 :goto_4

    #@777
    .line 1746
    .end local v41    # "score":I
    .end local v43    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    :cond_26
    const/16 v20, 0x0

    #@779
    .local v20, "isActiveNetwork":Z
    goto :goto_5

    #@77a
    .line 1765
    .end local v20    # "isActiveNetwork":Z
    .end local v34    # "quotedSSID":Ljava/lang/String;
    .end local v35    # "result":Landroid/net/wifi/ScanResult;
    .end local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v40    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_27
    if-eqz v43, :cond_28

    #@77c
    .line 1769
    move-object/from16 v0, p0

    #@77e
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@780
    move-object/from16 v44, v0

    #@782
    move-object/from16 v0, v44

    #@784
    move-object/from16 v1, v43

    #@786
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    #@789
    move-result-object v8

    #@78a
    .line 1770
    .restart local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@78c
    move-object/from16 v44, v0

    #@78e
    const/16 v45, 0x0

    #@790
    invoke-virtual/range {v44 .. v45}, Ljava/util/BitSet;->set(I)V

    #@793
    .line 1771
    const/16 v44, 0x1

    #@795
    move/from16 v0, v44

    #@797
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@799
    .line 1772
    const/16 v44, 0x1

    #@79b
    move/from16 v0, v44

    #@79d
    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@79f
    .line 1777
    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "currentScore":I
    .end local v32    # "nowMs":J
    .end local v37    # "rssi24":I
    .end local v38    # "rssi5":I
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7a2
    move-result-wide v44

    #@7a3
    .line 1778
    move-object/from16 v0, p0

    #@7a5
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7a7
    move-object/from16 v46, v0

    #@7a9
    move-object/from16 v0, v46

    #@7ab
    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    #@7ad
    move-wide/from16 v46, v0

    #@7af
    .line 1777
    sub-long v24, v44, v46

    #@7b1
    .line 1779
    .local v24, "lastUnwanted":J
    if-nez v8, :cond_37

    #@7b3
    .line 1780
    if-nez v23, :cond_37

    #@7b5
    .line 1781
    if-nez v15, :cond_37

    #@7b7
    .line 1782
    move-object/from16 v0, p0

    #@7b9
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    #@7bb
    move/from16 v44, v0

    #@7bd
    .line 1779
    if-eqz v44, :cond_37

    #@7bf
    .line 1783
    move-object/from16 v0, p0

    #@7c1
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7c3
    move-object/from16 v44, v0

    #@7c5
    move-object/from16 v0, v44

    #@7c7
    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    #@7c9
    move-wide/from16 v44, v0

    #@7cb
    const-wide/16 v46, 0x0

    #@7cd
    cmp-long v44, v44, v46

    #@7cf
    if-eqz v44, :cond_29

    #@7d1
    .line 1784
    const-wide/32 v44, 0x240c8400

    #@7d4
    cmp-long v44, v24, v44

    #@7d6
    if-lez v44, :cond_37

    #@7d8
    .line 1794
    :cond_29
    move-object/from16 v0, p0

    #@7da
    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@7dc
    move/from16 v44, v0

    #@7de
    const/16 v45, 0xa

    #@7e0
    move/from16 v0, v44

    #@7e2
    move/from16 v1, v45

    #@7e4
    if-ge v0, v1, :cond_2a

    #@7e6
    .line 1795
    move-object/from16 v0, p0

    #@7e8
    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@7ea
    move/from16 v44, v0

    #@7ec
    add-int/lit8 v44, v44, 0x1

    #@7ee
    move/from16 v0, v44

    #@7f0
    move-object/from16 v1, p0

    #@7f2
    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@7f4
    .line 1805
    :cond_2a
    :goto_6
    move-object/from16 v0, p0

    #@7f6
    move-object/from16 v1, v23

    #@7f8
    invoke-direct {v0, v8, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    #@7fb
    move-result v27

    #@7fc
    .line 1806
    .local v27, "networkDelta":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@7fe
    if-eqz v44, :cond_2d

    #@800
    if-eqz v8, :cond_2d

    #@802
    .line 1807
    const-string/jumbo v18, ""

    #@805
    .line 1808
    .local v18, "doSwitch":Ljava/lang/String;
    const-string/jumbo v13, ""

    #@808
    .line 1809
    .local v13, "current":Ljava/lang/String;
    if-gez v27, :cond_2b

    #@80a
    .line 1810
    const-string/jumbo v18, " -> not switching"

    #@80d
    .line 1812
    :cond_2b
    if-eqz v15, :cond_2c

    #@80f
    .line 1813
    new-instance v44, Ljava/lang/StringBuilder;

    #@811
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@814
    const-string/jumbo v45, " with current "

    #@817
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81a
    move-result-object v44

    #@81b
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@81e
    move-result-object v45

    #@81f
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@822
    move-result-object v44

    #@823
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@826
    move-result-object v13

    #@827
    .line 1815
    :cond_2c
    new-instance v44, Ljava/lang/StringBuilder;

    #@829
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@82c
    const-string/jumbo v45, "attemptAutoJoin networkSwitching candidate "

    #@82f
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@832
    move-result-object v44

    #@833
    .line 1816
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@836
    move-result-object v45

    #@837
    .line 1815
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83a
    move-result-object v44

    #@83b
    move-object/from16 v0, v44

    #@83d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@840
    move-result-object v44

    #@841
    .line 1818
    const-string/jumbo v45, " linked="

    #@844
    .line 1815
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@847
    move-result-object v45

    #@848
    .line 1818
    if-eqz v15, :cond_38

    #@84a
    .line 1819
    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@84d
    move-result v44

    #@84e
    .line 1815
    :goto_7
    move-object/from16 v0, v45

    #@850
    move/from16 v1, v44

    #@852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@855
    move-result-object v44

    #@856
    .line 1820
    const-string/jumbo v45, " : delta="

    #@859
    .line 1815
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85c
    move-result-object v44

    #@85d
    .line 1821
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@860
    move-result-object v45

    #@861
    .line 1815
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@864
    move-result-object v44

    #@865
    .line 1821
    const-string/jumbo v45, " "

    #@868
    .line 1815
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86b
    move-result-object v44

    #@86c
    move-object/from16 v0, v44

    #@86e
    move-object/from16 v1, v18

    #@870
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@873
    move-result-object v44

    #@874
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@877
    move-result-object v44

    #@878
    move-object/from16 v0, p0

    #@87a
    move-object/from16 v1, v44

    #@87c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@87f
    .line 1830
    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    #@881
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@883
    move-object/from16 v44, v0

    #@885
    move-object/from16 v0, v44

    #@887
    move/from16 v1, v27

    #@889
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    #@88c
    move-result v44

    #@88d
    if-eqz v44, :cond_34

    #@88f
    .line 1834
    if-eqz v15, :cond_39

    #@891
    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@894
    move-result v44

    #@895
    if-eqz v44, :cond_39

    #@897
    .line 1835
    const/16 v28, 0x2

    #@899
    .line 1839
    :goto_8
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@89b
    if-eqz v44, :cond_2e

    #@89d
    .line 1840
    new-instance v44, Ljava/lang/StringBuilder;

    #@89f
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@8a2
    const-string/jumbo v45, "AutoJoin auto connect with netId "

    #@8a5
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a8
    move-result-object v44

    #@8a9
    .line 1841
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@8ab
    move/from16 v45, v0

    #@8ad
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8b0
    move-result-object v45

    #@8b1
    .line 1840
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b4
    move-result-object v44

    #@8b5
    .line 1842
    const-string/jumbo v45, " to "

    #@8b8
    .line 1840
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8bb
    move-result-object v44

    #@8bc
    .line 1842
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@8bf
    move-result-object v45

    #@8c0
    .line 1840
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c3
    move-result-object v44

    #@8c4
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c7
    move-result-object v44

    #@8c8
    move-object/from16 v0, p0

    #@8ca
    move-object/from16 v1, v44

    #@8cc
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@8cf
    .line 1844
    :cond_2e
    move-object/from16 v0, p0

    #@8d1
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    #@8d3
    move/from16 v44, v0

    #@8d5
    if-eqz v44, :cond_2f

    #@8d7
    .line 1845
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@8d9
    move/from16 v44, v0

    #@8db
    add-int/lit8 v44, v44, 0x1

    #@8dd
    move/from16 v0, v44

    #@8df
    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@8e1
    .line 1847
    :cond_2f
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@8e3
    move/from16 v44, v0

    #@8e5
    add-int/lit8 v44, v44, 0x1

    #@8e7
    move/from16 v0, v44

    #@8e9
    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@8eb
    .line 1848
    move-object/from16 v0, p0

    #@8ed
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@8ef
    move-object/from16 v44, v0

    #@8f1
    move-object/from16 v0, v44

    #@8f3
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    #@8f5
    move/from16 v45, v0

    #@8f7
    add-int/lit8 v45, v45, 0x1

    #@8f9
    move/from16 v0, v45

    #@8fb
    move-object/from16 v1, v44

    #@8fd
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    #@8ff
    .line 1850
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@901
    move/from16 v44, v0

    #@903
    if-eqz v44, :cond_30

    #@905
    .line 1853
    move-object/from16 v0, p0

    #@907
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@909
    move-object/from16 v44, v0

    #@90b
    .line 1854
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@90d
    move-object/from16 v45, v0

    #@90f
    const/16 v46, 0x1

    #@911
    const/16 v47, 0x0

    #@913
    .line 1853
    invoke-virtual/range {v44 .. v47}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    #@916
    .line 1857
    :cond_30
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@918
    move-object/from16 v44, v0

    #@91a
    if-eqz v44, :cond_31

    #@91c
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@91e
    move-object/from16 v44, v0

    #@920
    const-string/jumbo v45, "any"

    #@923
    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@926
    move-result v44

    #@927
    if-eqz v44, :cond_33

    #@929
    .line 1861
    :cond_31
    move-object/from16 v0, p0

    #@92b
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@92d
    move-object/from16 v44, v0

    #@92f
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    #@932
    move-result-object v14

    #@933
    .line 1863
    .local v14, "currentBSSID":Ljava/lang/String;
    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    #@935
    const/16 v45, 0x0

    #@937
    const/16 v46, 0x0

    #@939
    move-object/from16 v0, p0

    #@93b
    move-object/from16 v1, v45

    #@93d
    move/from16 v2, v44

    #@93f
    move-object/from16 v3, v46

    #@941
    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    #@944
    move-result-object v36

    #@945
    .line 1864
    .local v36, "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_32

    #@947
    if-eqz v14, :cond_32

    #@949
    .line 1865
    move-object/from16 v0, v36

    #@94b
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@94d
    move-object/from16 v44, v0

    #@94f
    move-object/from16 v0, v44

    #@951
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@954
    move-result v44

    #@955
    .line 1864
    if-eqz v44, :cond_32

    #@957
    .line 1867
    const/16 v36, 0x0

    #@959
    .line 1869
    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_32
    if-eqz v36, :cond_3a

    #@95b
    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@95e
    move-result v44

    #@95f
    if-eqz v44, :cond_3a

    #@961
    .line 1873
    move-object/from16 v0, v36

    #@963
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@965
    move-object/from16 v44, v0

    #@967
    move-object/from16 v0, v44

    #@969
    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@96b
    .line 1874
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@96d
    if-eqz v44, :cond_33

    #@96f
    .line 1875
    new-instance v44, Ljava/lang/StringBuilder;

    #@971
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@974
    const-string/jumbo v45, "AutoJoinController: lock to 5GHz "

    #@977
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97a
    move-result-object v44

    #@97b
    .line 1876
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@97d
    move-object/from16 v45, v0

    #@97f
    .line 1875
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@982
    move-result-object v44

    #@983
    .line 1877
    const-string/jumbo v45, " RSSI="

    #@986
    .line 1875
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@989
    move-result-object v44

    #@98a
    .line 1877
    move-object/from16 v0, v36

    #@98c
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@98e
    move/from16 v45, v0

    #@990
    .line 1875
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@993
    move-result-object v44

    #@994
    .line 1878
    const-string/jumbo v45, " freq="

    #@997
    .line 1875
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99a
    move-result-object v44

    #@99b
    .line 1878
    move-object/from16 v0, v36

    #@99d
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@99f
    move/from16 v45, v0

    #@9a1
    .line 1875
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a4
    move-result-object v44

    #@9a5
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a8
    move-result-object v44

    #@9a9
    move-object/from16 v0, p0

    #@9ab
    move-object/from16 v1, v44

    #@9ad
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@9b0
    .line 1885
    .end local v14    # "currentBSSID":Ljava/lang/String;
    :cond_33
    :goto_9
    move-object/from16 v0, p0

    #@9b2
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9b4
    move-object/from16 v44, v0

    #@9b6
    .line 1886
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@9b8
    move/from16 v45, v0

    #@9ba
    .line 1885
    const v46, 0x2008f

    #@9bd
    move-object/from16 v0, v44

    #@9bf
    move/from16 v1, v46

    #@9c1
    move/from16 v2, v45

    #@9c3
    move/from16 v3, v28

    #@9c5
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@9c8
    .line 1887
    const/16 v19, 0x1

    #@9ca
    .line 1891
    :cond_34
    if-nez v28, :cond_35

    #@9cc
    move-object/from16 v0, p0

    #@9ce
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@9d0
    move-object/from16 v44, v0

    #@9d2
    move-object/from16 v0, v44

    #@9d4
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9d6
    move-object/from16 v44, v0

    #@9d8
    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@9db
    move-result v44

    #@9dc
    if-eqz v44, :cond_3b

    #@9de
    .line 1916
    :cond_35
    :goto_a
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@9e0
    if-eqz v44, :cond_36

    #@9e2
    new-instance v44, Ljava/lang/StringBuilder;

    #@9e4
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@9e7
    const-string/jumbo v45, "Done attemptAutoJoin status="

    #@9ea
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9ed
    move-result-object v44

    #@9ee
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9f1
    move-result-object v45

    #@9f2
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f5
    move-result-object v44

    #@9f6
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f9
    move-result-object v44

    #@9fa
    move-object/from16 v0, p0

    #@9fc
    move-object/from16 v1, v44

    #@9fe
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@a01
    .line 1917
    :cond_36
    return v19

    #@a02
    .line 1797
    .end local v27    # "networkDelta":I
    :cond_37
    move-object/from16 v0, p0

    #@a04
    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@a06
    move/from16 v44, v0

    #@a08
    if-lez v44, :cond_2a

    #@a0a
    .line 1798
    move-object/from16 v0, p0

    #@a0c
    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@a0e
    move/from16 v44, v0

    #@a10
    add-int/lit8 v44, v44, -0x1

    #@a12
    move/from16 v0, v44

    #@a14
    move-object/from16 v1, p0

    #@a16
    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    #@a18
    goto/16 :goto_6

    #@a1a
    .line 1818
    .restart local v13    # "current":Ljava/lang/String;
    .restart local v18    # "doSwitch":Ljava/lang/String;
    .restart local v27    # "networkDelta":I
    :cond_38
    const/16 v44, 0x0

    #@a1c
    goto/16 :goto_7

    #@a1e
    .line 1837
    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_39
    const/16 v28, 0x3

    #@a20
    goto/16 :goto_8

    #@a22
    .line 1882
    .restart local v14    # "currentBSSID":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v44, "any"

    #@a25
    move-object/from16 v0, v44

    #@a27
    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@a29
    goto :goto_9

    #@a2a
    .line 1892
    .end local v14    # "currentBSSID":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    #@a2c
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a2e
    move-object/from16 v44, v0

    #@a30
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    #@a33
    move-result-object v14

    #@a34
    .line 1895
    .restart local v14    # "currentBSSID":Ljava/lang/String;
    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    #@a36
    const/16 v45, 0x0

    #@a38
    move-object/from16 v0, p0

    #@a3a
    move-object/from16 v1, v45

    #@a3c
    move/from16 v2, v44

    #@a3e
    invoke-virtual {v0, v1, v15, v2, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    #@a41
    move-result-object v36

    #@a42
    .line 1896
    .restart local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_3c

    #@a44
    if-eqz v14, :cond_3c

    #@a46
    .line 1897
    move-object/from16 v0, v36

    #@a48
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@a4a
    move-object/from16 v44, v0

    #@a4c
    move-object/from16 v0, v44

    #@a4e
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a51
    move-result v44

    #@a52
    .line 1896
    if-eqz v44, :cond_3c

    #@a54
    .line 1898
    const/16 v36, 0x0

    #@a56
    .line 1900
    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_3c
    if-eqz v36, :cond_35

    #@a58
    move-object/from16 v0, p0

    #@a5a
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a5c
    move-object/from16 v44, v0

    #@a5e
    const/16 v45, 0x3e7

    #@a60
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    #@a63
    move-result v44

    #@a64
    if-eqz v44, :cond_35

    #@a66
    .line 1901
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@a68
    if-eqz v44, :cond_3d

    #@a6a
    .line 1902
    new-instance v44, Ljava/lang/StringBuilder;

    #@a6c
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@a6f
    const-string/jumbo v45, "AutoJoin auto roam with netId "

    #@a72
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a75
    move-result-object v44

    #@a76
    .line 1903
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@a78
    move/from16 v45, v0

    #@a7a
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a7d
    move-result-object v45

    #@a7e
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a81
    move-result-object v44

    #@a82
    .line 1904
    const-string/jumbo v45, " "

    #@a85
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a88
    move-result-object v44

    #@a89
    .line 1904
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@a8c
    move-result-object v45

    #@a8d
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a90
    move-result-object v44

    #@a91
    .line 1904
    const-string/jumbo v45, " to BSSID="

    #@a94
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a97
    move-result-object v44

    #@a98
    .line 1905
    move-object/from16 v0, v36

    #@a9a
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@a9c
    move-object/from16 v45, v0

    #@a9e
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa1
    move-result-object v44

    #@aa2
    .line 1905
    const-string/jumbo v45, " freq="

    #@aa5
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa8
    move-result-object v44

    #@aa9
    .line 1905
    move-object/from16 v0, v36

    #@aab
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@aad
    move/from16 v45, v0

    #@aaf
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ab2
    move-result-object v44

    #@ab3
    .line 1906
    const-string/jumbo v45, " RSSI="

    #@ab6
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab9
    move-result-object v44

    #@aba
    .line 1906
    move-object/from16 v0, v36

    #@abc
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@abe
    move/from16 v45, v0

    #@ac0
    .line 1902
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac3
    move-result-object v44

    #@ac4
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac7
    move-result-object v44

    #@ac8
    move-object/from16 v0, p0

    #@aca
    move-object/from16 v1, v44

    #@acc
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@acf
    .line 1908
    :cond_3d
    const/16 v28, 0x1

    #@ad1
    .line 1909
    move-object/from16 v0, p0

    #@ad3
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    #@ad5
    move-object/from16 v44, v0

    #@ad7
    move-object/from16 v0, v44

    #@ad9
    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    #@adb
    move/from16 v45, v0

    #@add
    add-int/lit8 v45, v45, 0x1

    #@adf
    move/from16 v0, v45

    #@ae1
    move-object/from16 v1, v44

    #@ae3
    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    #@ae5
    .line 1911
    move-object/from16 v0, p0

    #@ae7
    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@ae9
    move-object/from16 v44, v0

    #@aeb
    .line 1912
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@aed
    move/from16 v45, v0

    #@aef
    .line 1911
    const v46, 0x20091

    #@af2
    .line 1912
    const/16 v47, 0x1

    #@af4
    .line 1911
    move-object/from16 v0, v44

    #@af6
    move/from16 v1, v46

    #@af8
    move/from16 v2, v45

    #@afa
    move/from16 v3, v47

    #@afc
    move-object/from16 v4, v36

    #@afe
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@b01
    .line 1913
    const/16 v19, 0x1

    #@b03
    goto/16 :goto_a
.end method

.method public attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 18
    .param p1, "a"    # Landroid/net/wifi/ScanResult;
    .param p2, "current"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "age"    # I
    .param p4, "currentBSSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1008
    if-nez p2, :cond_1

    #@2
    .line 1009
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@4
    if-eqz v14, :cond_0

    #@6
    .line 1010
    const-string/jumbo v14, "attemptRoam not associated"

    #@9
    move-object/from16 v0, p0

    #@b
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@e
    .line 1012
    :cond_0
    return-object p1

    #@f
    .line 1016
    :cond_1
    move-object/from16 v0, p0

    #@11
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@13
    move-object/from16 v0, p2

    #@15
    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@18
    move-result-object v11

    #@19
    .line 1018
    .local v11, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v11, :cond_3

    #@1b
    .line 1019
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@1d
    if-eqz v14, :cond_2

    #@1f
    .line 1020
    const-string/jumbo v14, "attemptRoam no scan cache"

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@27
    .line 1022
    :cond_2
    return-object p1

    #@28
    .line 1024
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@2b
    move-result v14

    #@2c
    const/4 v15, 0x6

    #@2d
    if-le v14, v15, :cond_5

    #@2f
    .line 1025
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@31
    if-eqz v14, :cond_4

    #@33
    .line 1026
    new-instance v14, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v15, "attemptRoam scan cache size "

    #@3b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v14

    #@3f
    .line 1027
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@42
    move-result v15

    #@43
    .line 1026
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v14

    #@47
    .line 1027
    const-string/jumbo v15, " --> bail"

    #@4a
    .line 1026
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v14

    #@4e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v14

    #@52
    move-object/from16 v0, p0

    #@54
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@57
    .line 1031
    :cond_4
    return-object p1

    #@58
    .line 1034
    :cond_5
    move-object/from16 v0, p2

    #@5a
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@5c
    if-eqz v14, :cond_6

    #@5e
    move-object/from16 v0, p2

    #@60
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@62
    const-string/jumbo v15, "any"

    #@65
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v14

    #@69
    if-eqz v14, :cond_8

    #@6b
    .line 1044
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6e
    move-result-wide v8

    #@6f
    .line 1046
    .local v8, "nowMs":J
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@72
    move-result-object v14

    #@73
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v13

    #@77
    .local v13, "sd$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v14

    #@7b
    if-eqz v14, :cond_14

    #@7d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v12

    #@81
    check-cast v12, Lcom/android/server/wifi/ScanDetail;

    #@83
    .line 1047
    .local v12, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@86
    move-result-object v4

    #@87
    .line 1048
    .local v4, "b":Landroid/net/wifi/ScanResult;
    const/4 v6, 0x0

    #@88
    .line 1049
    .local v6, "bRssiBoost5":I
    const/4 v3, 0x0

    #@89
    .line 1050
    .local v3, "aRssiBoost5":I
    const/4 v5, 0x0

    #@8a
    .line 1051
    .local v5, "bRssiBoost":I
    const/4 v2, 0x0

    #@8b
    .line 1052
    .local v2, "aRssiBoost":I
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@8e
    move-result-wide v14

    #@8f
    const-wide/16 v16, 0x0

    #@91
    cmp-long v14, v14, v16

    #@93
    if-eqz v14, :cond_7

    #@95
    iget-object v14, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@97
    if-eqz v14, :cond_7

    #@99
    .line 1053
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@9c
    move-result-wide v14

    #@9d
    sub-long v14, v8, v14

    #@9f
    move/from16 v0, p3

    #@a1
    int-to-long v0, v0

    #@a2
    move-wide/from16 v16, v0

    #@a4
    cmp-long v14, v14, v16

    #@a6
    if-gtz v14, :cond_7

    #@a8
    .line 1054
    iget v14, v4, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@aa
    if-nez v14, :cond_7

    #@ac
    .line 1055
    iget v14, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@ae
    const/16 v15, 0x8

    #@b0
    if-gt v14, v15, :cond_7

    #@b2
    .line 1060
    if-nez p1, :cond_a

    #@b4
    .line 1061
    move-object/from16 p1, v4

    #@b6
    .line 1062
    goto :goto_0

    #@b7
    .line 1035
    .end local v2    # "aRssiBoost":I
    .end local v3    # "aRssiBoost5":I
    .end local v4    # "b":Landroid/net/wifi/ScanResult;
    .end local v5    # "bRssiBoost":I
    .end local v6    # "bRssiBoost5":I
    .end local v8    # "nowMs":J
    .end local v12    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v13    # "sd$iterator":Ljava/util/Iterator;
    :cond_8
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@b9
    if-eqz v14, :cond_9

    #@bb
    .line 1036
    new-instance v14, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v15, "attemptRoam() BSSID is set "

    #@c3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v14

    #@c7
    .line 1037
    move-object/from16 v0, p2

    #@c9
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@cb
    .line 1036
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v14

    #@cf
    .line 1037
    const-string/jumbo v15, " -> bail"

    #@d2
    .line 1036
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v14

    #@d6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v14

    #@da
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@df
    .line 1039
    :cond_9
    return-object p1

    #@e0
    .line 1065
    .restart local v2    # "aRssiBoost":I
    .restart local v3    # "aRssiBoost5":I
    .restart local v4    # "b":Landroid/net/wifi/ScanResult;
    .restart local v5    # "bRssiBoost":I
    .restart local v6    # "bRssiBoost5":I
    .restart local v8    # "nowMs":J
    .restart local v12    # "sd":Lcom/android/server/wifi/ScanDetail;
    .restart local v13    # "sd$iterator":Ljava/util/Iterator;
    :cond_a
    iget v14, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@e2
    move-object/from16 v0, p1

    #@e4
    iget v15, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@e6
    add-int/lit8 v15, v15, -0x1

    #@e8
    if-ge v14, v15, :cond_b

    #@ea
    .line 1067
    new-instance v14, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v15, "attemptRoam: "

    #@f2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v14

    #@f6
    .line 1068
    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f8
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v14

    #@fc
    .line 1068
    const-string/jumbo v15, " rssi="

    #@ff
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v14

    #@103
    .line 1068
    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    #@105
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v14

    #@109
    .line 1068
    const-string/jumbo v15, " ipfail="

    #@10c
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v14

    #@110
    .line 1068
    iget v15, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@112
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v14

    #@116
    .line 1069
    const-string/jumbo v15, " freq="

    #@119
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v14

    #@11d
    .line 1069
    iget v15, v4, Landroid/net/wifi/ScanResult;->frequency:I

    #@11f
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@122
    move-result-object v14

    #@123
    .line 1070
    const-string/jumbo v15, " > "

    #@126
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v14

    #@12a
    .line 1071
    move-object/from16 v0, p1

    #@12c
    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@12e
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v14

    #@132
    .line 1071
    const-string/jumbo v15, " rssi="

    #@135
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v14

    #@139
    .line 1071
    move-object/from16 v0, p1

    #@13b
    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    #@13d
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@140
    move-result-object v14

    #@141
    .line 1071
    const-string/jumbo v15, " ipfail="

    #@144
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v14

    #@148
    .line 1071
    move-object/from16 v0, p1

    #@14a
    iget v15, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@14c
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v14

    #@150
    .line 1072
    const-string/jumbo v15, " freq="

    #@153
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v14

    #@157
    .line 1072
    move-object/from16 v0, p1

    #@159
    iget v15, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@15b
    .line 1067
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v14

    #@15f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v14

    #@163
    move-object/from16 v0, p0

    #@165
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@168
    .line 1073
    move-object/from16 p1, v4

    #@16a
    .line 1074
    goto/16 :goto_0

    #@16c
    .line 1078
    :cond_b
    if-eqz p4, :cond_c

    #@16e
    iget-object v14, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@170
    move-object/from16 v0, p4

    #@172
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v14

    #@176
    if-eqz v14, :cond_c

    #@178
    .line 1080
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    #@17a
    move-object/from16 v0, p0

    #@17c
    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@17e
    iget-object v15, v15, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@180
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@183
    move-result v15

    #@184
    if-gt v14, v15, :cond_12

    #@186
    .line 1081
    move-object/from16 v0, p0

    #@188
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@18a
    iget v5, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    #@18c
    .line 1086
    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    #@18e
    move-object/from16 v0, p1

    #@190
    iget-object v14, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@192
    move-object/from16 v0, p4

    #@194
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@197
    move-result v14

    #@198
    if-eqz v14, :cond_d

    #@19a
    .line 1087
    move-object/from16 v0, p1

    #@19c
    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@1a2
    iget-object v15, v15, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1a4
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1a7
    move-result v15

    #@1a8
    if-gt v14, v15, :cond_13

    #@1aa
    .line 1089
    move-object/from16 v0, p0

    #@1ac
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@1ae
    iget v2, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    #@1b0
    .line 1105
    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@1b3
    move-result v14

    #@1b4
    if-eqz v14, :cond_e

    #@1b6
    .line 1106
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    #@1b8
    add-int/2addr v14, v5

    #@1b9
    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    #@1c0
    move-result v6

    #@1c1
    .line 1108
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@1c4
    move-result v14

    #@1c5
    if-eqz v14, :cond_f

    #@1c7
    .line 1109
    move-object/from16 v0, p1

    #@1c9
    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1cb
    add-int/2addr v14, v2

    #@1cc
    move-object/from16 v0, p1

    #@1ce
    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    #@1d5
    move-result v3

    #@1d6
    .line 1112
    :cond_f
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@1d8
    if-eqz v14, :cond_11

    #@1da
    .line 1113
    const-string/jumbo v7, " < "

    #@1dd
    .line 1114
    .local v7, "comp":Ljava/lang/String;
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    #@1df
    add-int/2addr v14, v5

    #@1e0
    add-int/2addr v14, v6

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1e5
    add-int/2addr v15, v2

    #@1e6
    add-int/2addr v15, v3

    #@1e7
    if-le v14, v15, :cond_10

    #@1e9
    .line 1115
    const-string/jumbo v7, " > "

    #@1ec
    .line 1117
    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    #@1ee
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1f1
    const-string/jumbo v15, "attemptRoam: "

    #@1f4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v14

    #@1f8
    .line 1118
    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1fa
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v14

    #@1fe
    .line 1118
    const-string/jumbo v15, " rssi="

    #@201
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v14

    #@205
    .line 1118
    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    #@207
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v14

    #@20b
    .line 1118
    const-string/jumbo v15, " boost="

    #@20e
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v14

    #@212
    .line 1118
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@215
    move-result-object v15

    #@216
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v14

    #@21a
    .line 1119
    const-string/jumbo v15, "/"

    #@21d
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v14

    #@221
    .line 1119
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@224
    move-result-object v15

    #@225
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v14

    #@229
    .line 1119
    const-string/jumbo v15, " freq="

    #@22c
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v14

    #@230
    .line 1119
    iget v15, v4, Landroid/net/wifi/ScanResult;->frequency:I

    #@232
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@235
    move-result-object v14

    #@236
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v14

    #@23a
    .line 1121
    move-object/from16 v0, p1

    #@23c
    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@23e
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v14

    #@242
    .line 1121
    const-string/jumbo v15, " rssi="

    #@245
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v14

    #@249
    .line 1121
    move-object/from16 v0, p1

    #@24b
    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    #@24d
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@250
    move-result-object v14

    #@251
    .line 1121
    const-string/jumbo v15, " boost="

    #@254
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v14

    #@258
    .line 1121
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25b
    move-result-object v15

    #@25c
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v14

    #@260
    .line 1122
    const-string/jumbo v15, "/"

    #@263
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v14

    #@267
    .line 1122
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26a
    move-result-object v15

    #@26b
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v14

    #@26f
    .line 1122
    const-string/jumbo v15, " freq="

    #@272
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v14

    #@276
    .line 1122
    move-object/from16 v0, p1

    #@278
    iget v15, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@27a
    .line 1117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v14

    #@27e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@281
    move-result-object v14

    #@282
    move-object/from16 v0, p0

    #@284
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@287
    .line 1127
    .end local v7    # "comp":Ljava/lang/String;
    :cond_11
    iget v14, v4, Landroid/net/wifi/ScanResult;->level:I

    #@289
    add-int/2addr v14, v5

    #@28a
    add-int/2addr v14, v6

    #@28b
    move-object/from16 v0, p1

    #@28d
    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    #@28f
    add-int/2addr v15, v2

    #@290
    add-int/2addr v15, v3

    #@291
    if-le v14, v15, :cond_7

    #@293
    .line 1129
    move-object/from16 p1, v4

    #@295
    goto/16 :goto_0

    #@297
    .line 1083
    :cond_12
    move-object/from16 v0, p0

    #@299
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@29b
    iget v5, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    #@29d
    goto/16 :goto_1

    #@29f
    .line 1091
    :cond_13
    move-object/from16 v0, p0

    #@2a1
    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2a3
    iget v2, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    #@2a5
    goto/16 :goto_2

    #@2a7
    .line 1132
    .end local v2    # "aRssiBoost":I
    .end local v3    # "aRssiBoost5":I
    .end local v4    # "b":Landroid/net/wifi/ScanResult;
    .end local v5    # "bRssiBoost":I
    .end local v6    # "bRssiBoost5":I
    .end local v12    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_14
    if-eqz p1, :cond_16

    #@2a9
    .line 1133
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@2ab
    if-eqz v14, :cond_16

    #@2ad
    .line 1134
    new-instance v10, Ljava/lang/StringBuilder;

    #@2af
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2b2
    .line 1135
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "attemptRoam: "

    #@2b5
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v14

    #@2b9
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2bc
    move-result-object v15

    #@2bd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v14

    #@2c1
    .line 1136
    const-string/jumbo v15, " Found "

    #@2c4
    .line 1135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v14

    #@2c8
    .line 1136
    move-object/from16 v0, p1

    #@2ca
    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@2cc
    .line 1135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v14

    #@2d0
    .line 1136
    const-string/jumbo v15, " rssi="

    #@2d3
    .line 1135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v14

    #@2d7
    .line 1136
    move-object/from16 v0, p1

    #@2d9
    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    #@2db
    .line 1135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v14

    #@2df
    .line 1136
    const-string/jumbo v15, " freq="

    #@2e2
    .line 1135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v14

    #@2e6
    .line 1136
    move-object/from16 v0, p1

    #@2e8
    iget v15, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2ea
    .line 1135
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ed
    .line 1137
    if-eqz p4, :cond_15

    #@2ef
    .line 1138
    const-string/jumbo v14, " Current: "

    #@2f2
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v14

    #@2f6
    move-object/from16 v0, p4

    #@2f8
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fb
    .line 1140
    :cond_15
    const-string/jumbo v14, "\n"

    #@2fe
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    .line 1141
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@304
    move-result-object v14

    #@305
    move-object/from16 v0, p0

    #@307
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@30a
    .line 1144
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_16
    return-object p1
.end method

.method averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@2
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@4
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    #@a
    .line 173
    .local v0, "sd":Lcom/android/server/wifi/ScanDetail;
    if-eqz v0, :cond_2

    #@c
    .line 174
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@f
    move-result-object v1

    #@10
    .line 175
    .local v1, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@12
    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 176
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 177
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    #@1c
    const/16 v3, -0x14

    #@1e
    if-ge v2, v3, :cond_0

    #@20
    .line 180
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    #@22
    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    #@24
    .line 184
    :cond_0
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    #@26
    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    #@28
    sget v3, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    #@2a
    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    #@2d
    .line 187
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@2f
    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@31
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 170
    .end local v1    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    #@35
    .line 188
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@37
    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    #@39
    if-eqz v2, :cond_1

    #@3b
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    #@3d
    if-nez v2, :cond_1

    #@3f
    .line 191
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@41
    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    #@43
    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    #@45
    goto :goto_0
.end method

.method compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 834
    const/4 v1, 0x0

    #@3
    .line 836
    .local v1, "linked":Z
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@5
    if-eqz v4, :cond_0

    #@7
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 837
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@d
    if-nez v4, :cond_0

    #@f
    .line 838
    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@11
    if-nez v4, :cond_0

    #@13
    .line 839
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@15
    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 840
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@21
    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 841
    const/4 v1, 0x1

    #@2c
    .line 845
    :cond_0
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@2e
    if-eqz v4, :cond_2

    #@30
    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@32
    if-nez v4, :cond_2

    #@34
    .line 846
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 847
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "    compareWifiConfigurations ephemeral and prefers "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 848
    const-string/jumbo v5, " over "

    #@4f
    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 848
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@62
    .line 850
    :cond_1
    return v7

    #@63
    .line 852
    :cond_2
    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@65
    if-eqz v4, :cond_4

    #@67
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@69
    if-nez v4, :cond_4

    #@6b
    .line 853
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@6d
    if-eqz v4, :cond_3

    #@6f
    .line 854
    new-instance v4, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v5, "    compareWifiConfigurations ephemeral and prefers "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 855
    const-string/jumbo v5, " over "

    #@86
    .line 854
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    .line 855
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@8d
    move-result-object v5

    #@8e
    .line 854
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@99
    .line 857
    :cond_3
    const/4 v4, -0x1

    #@9a
    return v4

    #@9b
    .line 862
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    #@9d
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    #@a0
    move-result v4

    #@a1
    add-int/lit8 v2, v4, 0x0

    #@a3
    .line 866
    .local v2, "order":I
    if-nez v1, :cond_8

    #@a5
    .line 869
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    #@a8
    move-result v0

    #@a9
    .line 870
    .local v0, "choice":I
    if-lez v0, :cond_6

    #@ab
    .line 872
    sub-int/2addr v2, v0

    #@ac
    .line 873
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@ae
    if-eqz v4, :cond_5

    #@b0
    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v5, "    compareWifiConfigurations prefers "

    #@b8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    .line 875
    const-string/jumbo v5, " over "

    #@c7
    .line 874
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    .line 875
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@ce
    move-result-object v5

    #@cf
    .line 874
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    .line 876
    const-string/jumbo v5, " due to user choice of "

    #@d6
    .line 874
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    .line 877
    const-string/jumbo v5, " order -> "

    #@e1
    .line 874
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v4

    #@e5
    .line 877
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e8
    move-result-object v5

    #@e9
    .line 874
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v4

    #@ed
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v4

    #@f1
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@f4
    .line 879
    :cond_5
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@f6
    if-eqz v4, :cond_6

    #@f8
    .line 880
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@fa
    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    #@fc
    .line 881
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@fe
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@101
    move-result-object v5

    #@102
    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    #@104
    .line 885
    :cond_6
    invoke-virtual {p0, p2, p1, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    #@107
    move-result v0

    #@108
    .line 886
    if-lez v0, :cond_8

    #@10a
    .line 888
    add-int/2addr v2, v0

    #@10b
    .line 889
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@10d
    if-eqz v4, :cond_7

    #@10f
    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v5, "    compareWifiConfigurations prefers "

    #@117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v4

    #@11b
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@11e
    move-result-object v5

    #@11f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v4

    #@123
    const-string/jumbo v5, " over "

    #@126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v4

    #@12a
    .line 891
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@12d
    move-result-object v5

    #@12e
    .line 890
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v4

    #@132
    .line 891
    const-string/jumbo v5, " due to user choice of "

    #@135
    .line 890
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v4

    #@139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v4

    #@13d
    .line 892
    const-string/jumbo v5, " order ->"

    #@140
    .line 890
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v4

    #@144
    .line 892
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@147
    move-result-object v5

    #@148
    .line 890
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v4

    #@14c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v4

    #@150
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@153
    .line 894
    :cond_7
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@155
    if-eqz v4, :cond_8

    #@157
    .line 895
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@159
    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    #@15b
    .line 896
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@15d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@160
    move-result-object v5

    #@161
    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    #@163
    .line 901
    .end local v0    # "choice":I
    :cond_8
    if-nez v2, :cond_a

    #@165
    .line 904
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@167
    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@169
    if-le v4, v5, :cond_d

    #@16b
    .line 906
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@16d
    if-eqz v4, :cond_9

    #@16f
    .line 907
    new-instance v4, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v5, "    compareWifiConfigurations prefers -1 "

    #@177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v4

    #@17b
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@17e
    move-result-object v5

    #@17f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v4

    #@183
    const-string/jumbo v5, " over "

    #@186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v4

    #@18a
    .line 908
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@18d
    move-result-object v5

    #@18e
    .line 907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v4

    #@192
    .line 908
    const-string/jumbo v5, " due to priority"

    #@195
    .line 907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v4

    #@199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v4

    #@19d
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@1a0
    .line 911
    :cond_9
    const/4 v2, -0x1

    #@1a1
    .line 922
    :cond_a
    :goto_0
    const-string/jumbo v3, " == "

    #@1a4
    .line 923
    .local v3, "sorder":Ljava/lang/String;
    if-lez v2, :cond_f

    #@1a6
    .line 924
    const-string/jumbo v3, " < "

    #@1a9
    .line 929
    :cond_b
    :goto_1
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@1ab
    if-eqz v4, :cond_c

    #@1ad
    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v5, "compareWifiConfigurations: "

    #@1b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v4

    #@1b9
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1bc
    move-result-object v5

    #@1bd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v4

    #@1c1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v4

    #@1c5
    .line 931
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1c8
    move-result-object v5

    #@1c9
    .line 930
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v4

    #@1cd
    .line 931
    const-string/jumbo v5, " order "

    #@1d0
    .line 930
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v4

    #@1d4
    .line 931
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d7
    move-result-object v5

    #@1d8
    .line 930
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v4

    #@1dc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v4

    #@1e0
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@1e3
    .line 934
    :cond_c
    return v2

    #@1e4
    .line 912
    .end local v3    # "sorder":Ljava/lang/String;
    :cond_d
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@1e6
    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@1e8
    if-ge v4, v5, :cond_a

    #@1ea
    .line 914
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@1ec
    if-eqz v4, :cond_e

    #@1ee
    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f3
    const-string/jumbo v5, "    compareWifiConfigurations prefers +1 "

    #@1f6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v4

    #@1fa
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1fd
    move-result-object v5

    #@1fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v4

    #@202
    const-string/jumbo v5, " over "

    #@205
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v4

    #@209
    .line 916
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@20c
    move-result-object v5

    #@20d
    .line 915
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v4

    #@211
    .line 916
    const-string/jumbo v5, " due to priority"

    #@214
    .line 915
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v4

    #@218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21b
    move-result-object v4

    #@21c
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@21f
    .line 918
    :cond_e
    const/4 v2, 0x1

    #@220
    goto :goto_0

    #@221
    .line 925
    .restart local v3    # "sorder":Ljava/lang/String;
    :cond_f
    if-gez v2, :cond_b

    #@223
    .line 926
    const-string/jumbo v3, " > "

    #@226
    goto :goto_1
.end method

.method compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I
    .locals 9
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p2, "aRssiBoost"    # I
    .param p3, "dbgA"    # Ljava/lang/String;
    .param p4, "b"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p5, "bRssiBoost"    # I
    .param p6, "dbgB"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
    const/4 v1, 0x0

    #@1
    .line 594
    .local v1, "aRssiBoost5":I
    const/4 v4, 0x0

    #@2
    .line 596
    .local v4, "bRssiBoost5":I
    const/4 v2, 0x0

    #@3
    .line 597
    .local v2, "aScore":I
    const/4 v5, 0x0

    #@4
    .line 599
    .local v5, "bScore":I
    const/4 v0, 0x0

    #@5
    .line 600
    .local v0, "aPrefers5GHz":Z
    const/4 v3, 0x0

    #@6
    .line 609
    .local v3, "bPrefers5GHz":Z
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@8
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v7

    #@11
    const-string/jumbo v8, "->"

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    #@1f
    move-result v1

    #@20
    .line 610
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@22
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    const-string/jumbo v8, "->"

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    #@39
    move-result v4

    #@3a
    .line 613
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@3c
    add-int/2addr v6, v1

    #@3d
    iget v7, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@3f
    if-le v6, v7, :cond_0

    #@41
    .line 615
    const/4 v0, 0x1

    #@42
    .line 619
    :cond_0
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@44
    add-int/2addr v6, v4

    #@45
    iget v7, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@47
    if-le v6, v7, :cond_1

    #@49
    .line 621
    const/4 v3, 0x1

    #@4a
    .line 624
    :cond_1
    if-eqz v0, :cond_6

    #@4c
    .line 625
    if-eqz v3, :cond_5

    #@4e
    .line 629
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@50
    add-int v2, v6, p2

    #@52
    .line 638
    :goto_0
    if-eqz v3, :cond_8

    #@54
    .line 639
    if-eqz v0, :cond_7

    #@56
    .line 643
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@58
    add-int v5, v6, p5

    #@5a
    .line 652
    :goto_1
    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@5c
    if-eqz v6, :cond_2

    #@5e
    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "        "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    const-string/jumbo v7, " is5="

    #@71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    const-string/jumbo v7, " score="

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    .line 654
    const-string/jumbo v7, " "

    #@87
    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    .line 654
    const-string/jumbo v7, " is5="

    #@92
    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    .line 654
    const-string/jumbo v7, " score="

    #@9d
    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@ac
    .line 658
    :cond_2
    if-eqz p1, :cond_3

    #@ae
    .line 659
    iput v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    #@b0
    .line 660
    iput p2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    #@b2
    .line 661
    iput v1, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    #@b4
    .line 663
    :cond_3
    if-eqz p4, :cond_4

    #@b6
    .line 664
    iput v5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    #@b8
    .line 665
    iput p5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    #@ba
    .line 666
    iput v4, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    #@bc
    .line 672
    :cond_4
    sub-int v6, v5, v2

    #@be
    return v6

    #@bf
    .line 632
    :cond_5
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@c1
    add-int/2addr v6, p2

    #@c2
    add-int v2, v6, v1

    #@c4
    goto :goto_0

    #@c5
    .line 635
    :cond_6
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@c7
    add-int v2, v6, p2

    #@c9
    goto :goto_0

    #@ca
    .line 646
    :cond_7
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@cc
    add-int/2addr v6, p5

    #@cd
    add-int v5, v6, v4

    #@cf
    goto :goto_1

    #@d0
    .line 649
    :cond_8
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@d2
    add-int v5, v6, p5

    #@d4
    goto :goto_1
.end method

.method compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 11
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentConfiguration"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 684
    const/4 v9, 0x0

    #@2
    .line 687
    .local v9, "order":I
    const/4 v2, 0x0

    #@3
    .line 688
    .local v2, "aRssiBoost":I
    const/4 v5, 0x0

    #@4
    .line 691
    .local v5, "bRssiBoost":I
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@6
    .line 692
    .local v7, "astatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@8
    .line 693
    .local v8, "bstatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    if-eqz v7, :cond_0

    #@a
    if-nez v8, :cond_1

    #@c
    .line 695
    :cond_0
    const-string/jumbo v0, "    compareWifiConfigurations NULL band status!"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@12
    .line 696
    return v1

    #@13
    .line 700
    :cond_1
    if-eqz p3, :cond_2

    #@15
    .line 701
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_7

    #@1f
    .line 702
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@21
    iget v2, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    #@23
    .line 708
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v1, "    compareWifiConfigurationsRSSI: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 710
    const-string/jumbo v1, " rssi="

    #@3e
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 710
    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@44
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 711
    const-string/jumbo v1, ","

    #@4f
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 711
    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@55
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 712
    const-string/jumbo v1, " boost="

    #@60
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 712
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 713
    const-string/jumbo v1, " "

    #@6f
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 713
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 713
    const-string/jumbo v1, " rssi="

    #@7e
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 714
    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@84
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 714
    const-string/jumbo v1, ","

    #@8f
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 715
    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@95
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    .line 716
    const-string/jumbo v1, " boost="

    #@a0
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    .line 716
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@b3
    .line 721
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@b5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    .line 722
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@bb
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    move-object v0, p0

    #@c0
    .line 720
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I

    #@c3
    move-result v9

    #@c4
    .line 725
    const/16 v0, 0x32

    #@c6
    if-le v9, v0, :cond_8

    #@c8
    const/16 v9, 0x32

    #@ca
    .line 728
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@cc
    if-eqz v0, :cond_6

    #@ce
    .line 729
    const-string/jumbo v10, " = "

    #@d1
    .line 730
    .local v10, "prefer":Ljava/lang/String;
    if-lez v9, :cond_9

    #@d3
    .line 731
    const-string/jumbo v10, " < "

    #@d6
    .line 735
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v1, "    compareWifiConfigurationsRSSI "

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    .line 736
    const-string/jumbo v1, " rssi=("

    #@ed
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    .line 736
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@f3
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@f5
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    .line 737
    const-string/jumbo v1, ","

    #@fc
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v0

    #@100
    .line 737
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@102
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@104
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    .line 738
    const-string/jumbo v1, ") num=("

    #@10b
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v0

    #@10f
    .line 738
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@111
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@113
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v0

    #@117
    .line 739
    const-string/jumbo v1, ","

    #@11a
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v0

    #@11e
    .line 739
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@120
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@122
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v0

    #@126
    .line 739
    const-string/jumbo v1, ")"

    #@129
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v0

    #@12d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v0

    #@131
    .line 740
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@134
    move-result-object v1

    #@135
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v0

    #@139
    .line 741
    const-string/jumbo v1, " rssi=("

    #@13c
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v0

    #@140
    .line 741
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@142
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@144
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@147
    move-result-object v0

    #@148
    .line 742
    const-string/jumbo v1, ","

    #@14b
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v0

    #@14f
    .line 742
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@151
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@153
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@156
    move-result-object v0

    #@157
    .line 743
    const-string/jumbo v1, ") num=("

    #@15a
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v0

    #@15e
    .line 743
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@160
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@162
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@165
    move-result-object v0

    #@166
    .line 744
    const-string/jumbo v1, ","

    #@169
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v0

    #@16d
    .line 744
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@16f
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@171
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@174
    move-result-object v0

    #@175
    .line 744
    const-string/jumbo v1, ")"

    #@178
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v0

    #@17c
    .line 745
    const-string/jumbo v1, " -> "

    #@17f
    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v0

    #@183
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v0

    #@187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v0

    #@18b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@18e
    .line 748
    .end local v10    # "prefer":Ljava/lang/String;
    :cond_6
    return v9

    #@18f
    .line 703
    :cond_7
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@192
    move-result-object v0

    #@193
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@196
    move-result v0

    #@197
    if-eqz v0, :cond_2

    #@199
    .line 704
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@19b
    iget v5, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    #@19d
    goto/16 :goto_0

    #@19f
    .line 726
    :cond_8
    const/16 v0, -0x32

    #@1a1
    if-ge v9, v0, :cond_4

    #@1a3
    const/16 v9, -0x32

    #@1a5
    goto/16 :goto_1

    #@1a7
    .line 732
    .restart local v10    # "prefer":Ljava/lang/String;
    :cond_9
    if-gez v9, :cond_5

    #@1a9
    .line 733
    const-string/jumbo v10, " > "

    #@1ac
    goto/16 :goto_2
.end method

.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 137
    if-lez p1, :cond_0

    #@4
    .line 138
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@6
    .line 139
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@8
    .line 136
    :goto_0
    return-void

    #@9
    .line 141
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@b
    .line 142
    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@d
    goto :goto_0
.end method

.method getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;IZ)I
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "isActive"    # Z

    #@0
    .prologue
    .line 1159
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@2
    if-nez v7, :cond_1

    #@4
    .line 1160
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1161
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v8, "       getConfigNetworkScore for "

    #@10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    .line 1162
    const-string/jumbo v8, "  -> no scorer, hence no scores"

    #@1f
    .line 1161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@2a
    .line 1164
    :cond_0
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@2c
    return v7

    #@2d
    .line 1167
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2f
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@32
    move-result-object v7

    #@33
    if-nez v7, :cond_3

    #@35
    .line 1168
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@37
    if-eqz v7, :cond_2

    #@39
    .line 1169
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "       getConfigNetworkScore for "

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    .line 1170
    const-string/jumbo v8, " -> no scan cache"

    #@50
    .line 1169
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@5b
    .line 1172
    :cond_2
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@5d
    return v7

    #@5e
    .line 1176
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@61
    move-result-wide v0

    #@62
    .line 1178
    .local v0, "nowMs":J
    const/16 v6, -0x2710

    #@64
    .line 1181
    .local v6, "startScore":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@66
    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@6d
    move-result-object v7

    #@6e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v5

    #@72
    .local v5, "sd$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v7

    #@76
    if-eqz v7, :cond_5

    #@78
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v4

    #@7c
    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    #@7e
    .line 1182
    .local v4, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@81
    move-result-object v2

    #@82
    .line 1183
    .local v2, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@85
    move-result-wide v8

    #@86
    sub-long v8, v0, v8

    #@88
    int-to-long v10, p2

    #@89
    cmp-long v7, v8, v10

    #@8b
    if-gez v7, :cond_4

    #@8d
    .line 1184
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@8f
    invoke-virtual {v7, v2, p3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    #@92
    move-result v3

    #@93
    .line 1185
    .local v3, "sc":I
    if-le v3, v6, :cond_4

    #@95
    .line 1186
    move v6, v3

    #@96
    goto :goto_0

    #@97
    .line 1190
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "sc":I
    .end local v4    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    const/16 v7, -0x2710

    #@99
    if-ne v6, v7, :cond_6

    #@9b
    .line 1191
    sget v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@9d
    .line 1193
    :cond_6
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@9f
    if-eqz v7, :cond_7

    #@a1
    .line 1194
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@a3
    if-ne v6, v7, :cond_8

    #@a5
    .line 1195
    new-instance v7, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v8, "    getConfigNetworkScore for "

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@b4
    move-result-object v8

    #@b5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    .line 1196
    const-string/jumbo v8, " -> no available score"

    #@bc
    .line 1195
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@c7
    .line 1204
    :cond_7
    :goto_1
    return v6

    #@c8
    .line 1198
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v8, "    getConfigNetworkScore for "

    #@d0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    .line 1199
    const-string/jumbo v8, " isActive="

    #@df
    .line 1198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v7

    #@e3
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v7

    #@e7
    .line 1200
    const-string/jumbo v8, " score = "

    #@ea
    .line 1198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v7

    #@ee
    .line 1200
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f1
    move-result-object v8

    #@f2
    .line 1198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v7

    #@f6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v7

    #@fa
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@fd
    goto :goto_1
.end method

.method getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 10
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "target"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "strict"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 555
    const/4 v0, 0x0

    #@3
    .line 556
    .local v0, "choice":I
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 557
    :cond_0
    return v7

    #@8
    .line 560
    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@a
    if-eqz v7, :cond_4

    #@c
    .line 561
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@e
    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@11
    move-result-object v8

    #@12
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v7

    #@16
    .line 560
    if-eqz v7, :cond_4

    #@18
    .line 562
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@1a
    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Ljava/lang/Integer;

    #@24
    .line 563
    .local v6, "val":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    #@26
    .line 564
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v0

    #@2a
    .line 580
    .end local v6    # "val":Ljava/lang/Integer;
    :cond_2
    if-nez p3, :cond_3

    #@2c
    if-nez v0, :cond_3

    #@2e
    .line 582
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    #@31
    move-result v4

    #@32
    .line 583
    .local v4, "sourceScore":I
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    #@35
    move-result v5

    #@36
    .line 584
    .local v5, "targetScore":I
    sub-int v0, v4, v5

    #@38
    .line 587
    .end local v4    # "sourceScore":I
    .end local v5    # "targetScore":I
    :cond_3
    return v0

    #@39
    .line 566
    :cond_4
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@3b
    if-eqz v7, :cond_2

    #@3d
    .line 567
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@42
    move-result-object v7

    #@43
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v3

    #@47
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v7

    #@4b
    if-eqz v7, :cond_2

    #@4d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    check-cast v2, Ljava/lang/String;

    #@53
    .line 568
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@55
    invoke-virtual {v7, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@58
    move-result-object v1

    #@59
    .line 569
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    #@5b
    .line 570
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@5d
    if-eqz v7, :cond_5

    #@5f
    .line 571
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@61
    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v6

    #@69
    check-cast v6, Ljava/lang/Integer;

    #@6b
    .line 572
    .restart local v6    # "val":Ljava/lang/Integer;
    if-eqz v6, :cond_5

    #@6d
    .line 573
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@70
    move-result v0

    #@71
    goto :goto_0
.end method

.method getPnoList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0xa0

    #@2
    .line 1935
    const/4 v7, -0x1

    #@3
    .line 1936
    .local v7, "size":I
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 1938
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@a
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@c
    if-eqz v8, :cond_0

    #@e
    .line 1939
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@10
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v7

    #@16
    .line 1942
    :cond_0
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@18
    if-eqz v8, :cond_2

    #@1a
    .line 1943
    const-string/jumbo v6, ""

    #@1d
    .line 1944
    .local v6, "s":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@1f
    .line 1945
    new-instance v8, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v9, " for: "

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 1947
    :cond_1
    const-string/jumbo v8, "WifiAutoJoinController "

    #@3a
    new-instance v9, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v10, " get Pno List total size:"

    #@42
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1949
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_5

    #@57
    .line 1950
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 1955
    .local v2, "configKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@5d
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@5f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v5

    #@63
    .local v5, "network$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_7

    #@69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v4

    #@6d
    check-cast v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    #@6f
    .line 1956
    .local v4, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    #@72
    move-result-object v1

    #@73
    .line 1957
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_3

    #@75
    .line 1960
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@77
    if-ge v8, v11, :cond_3

    #@79
    .line 1965
    iget-object v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    #@7b
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v8

    #@7f
    if-nez v8, :cond_3

    #@81
    .line 1966
    const/4 v8, 0x1

    #@82
    invoke-virtual {p0, v1, p1, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    #@85
    move-result v0

    #@86
    .line 1967
    .local v0, "choice":I
    if-lez v0, :cond_3

    #@88
    .line 1969
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@8a
    if-eqz v8, :cond_4

    #@8c
    .line 1970
    const-string/jumbo v8, "WifiAutoJoinController "

    #@8f
    new-instance v9, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v10, " Pno List adding:"

    #@97
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v9

    #@9b
    iget-object v10, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    #@9d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v9

    #@a1
    .line 1971
    const-string/jumbo v10, " choice "

    #@a4
    .line 1970
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v9

    #@ac
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v9

    #@b0
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    .line 1973
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b6
    .line 1974
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@b8
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@ba
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@bd
    move-result v8

    #@be
    iput v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    #@c0
    goto :goto_0

    #@c1
    .line 1979
    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configKey":Ljava/lang/String;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v5    # "network$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@c3
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@c5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c8
    move-result-object v5

    #@c9
    .restart local v5    # "network$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@cc
    move-result v8

    #@cd
    if-eqz v8, :cond_7

    #@cf
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d2
    move-result-object v4

    #@d3
    check-cast v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    #@d5
    .line 1980
    .restart local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    #@d8
    move-result-object v1

    #@d9
    .line 1981
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_6

    #@db
    .line 1984
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@dd
    if-ge v8, v11, :cond_6

    #@df
    .line 1988
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e2
    .line 1989
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@e4
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e6
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@e9
    move-result v8

    #@ea
    iput v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    #@ec
    goto :goto_1

    #@ed
    .line 1992
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    :cond_7
    return-object v3
.end method

.method getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 813
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_2

    #@9
    .line 814
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 815
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@18
    move-result v0

    #@19
    .line 814
    if-nez v0, :cond_0

    #@1b
    .line 816
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@21
    move-result v0

    #@22
    .line 814
    if-eqz v0, :cond_1

    #@24
    .line 818
    :cond_0
    const/16 v0, 0x64

    #@26
    return v0

    #@27
    .line 819
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@29
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 821
    const/16 v0, 0x21

    #@31
    return v0

    #@32
    .line 823
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_3

    #@3a
    .line 825
    const/16 v0, 0x42

    #@3c
    return v0

    #@3d
    .line 829
    :cond_3
    return v2
.end method

.method getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "network"    # Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1928
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1929
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 1931
    :cond_0
    return-object v1
.end method

.method isBadCandidate(II)Z
    .locals 2
    .param p1, "rssi5"    # I
    .param p2, "rssi24"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 938
    const/16 v1, -0x50

    #@3
    if-ge p1, v1, :cond_0

    #@5
    const/16 v1, -0x5a

    #@7
    if-ge p2, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method linkQualitySignificantChange()V
    .locals 0

    #@0
    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    #@3
    .line 345
    return-void
.end method

.method logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 290
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    #@4
    .line 289
    return-void
.end method

.method logDbg(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Z

    #@0
    .prologue
    .line 294
    if-eqz p2, :cond_0

    #@2
    .line 295
    const-string/jumbo v0, "WifiAutoJoinController "

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " stack:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x2

    #@1e
    aget-object v2, v2, v3

    #@20
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 296
    const-string/jumbo v2, " - "

    #@2b
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x3

    #@38
    aget-object v2, v2, v3

    #@3a
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 297
    const-string/jumbo v2, " - "

    #@45
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 298
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@50
    move-result-object v2

    #@51
    const/4 v3, 0x4

    #@52
    aget-object v2, v2, v3

    #@54
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 298
    const-string/jumbo v2, " - "

    #@5f
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@6a
    move-result-object v2

    #@6b
    const/4 v3, 0x5

    #@6c
    aget-object v2, v2, v3

    #@6e
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 293
    :goto_0
    return-void

    #@7e
    .line 301
    :cond_0
    const-string/jumbo v0, "WifiAutoJoinController "

    #@81
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0
.end method

.method newHalScanResults()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 332
    const/4 v1, 0x0

    #@3
    .line 333
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {v2, v2}, Lcom/android/server/wifi/WifiParser;->parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 334
    .local v0, "akm":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@a
    .line 335
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    #@d
    .line 336
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    #@10
    .line 337
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    #@13
    .line 338
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@15
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@18
    .line 331
    return-void
.end method

.method newSupplicantResults(Z)I
    .locals 4
    .param p1, "doAutoJoin"    # Z

    #@0
    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 309
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    #@9
    move-result v0

    #@a
    .line 310
    .local v0, "numScanResultsKnown":I
    sget v2, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    #@c
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    #@f
    .line 311
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "newSupplicantResults size="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    #@21
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@24
    move-result v3

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 313
    const-string/jumbo v3, " known="

    #@30
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 313
    const-string/jumbo v3, " "

    #@3b
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@4a
    .line 316
    :cond_0
    if-eqz p1, :cond_1

    #@4c
    .line 317
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    #@4f
    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@51
    const/4 v3, 0x0

    #@52
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@55
    .line 320
    return v0
.end method

.method public rssiBoostFrom5GHzRssi(ILjava/lang/String;)I
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 968
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@3
    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 969
    return v2

    #@8
    .line 972
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@a
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@f
    move-result v1

    #@10
    .line 971
    if-le p1, v1, :cond_3

    #@12
    .line 977
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@14
    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    #@16
    .line 978
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@18
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1d
    move-result v2

    #@1e
    sub-int v2, p1, v2

    #@20
    .line 977
    mul-int v0, v1, v2

    #@22
    .line 979
    .local v0, "boost":I
    const/16 v1, 0x32

    #@24
    if-le v0, v1, :cond_1

    #@26
    .line 982
    const/16 v0, 0x32

    #@28
    .line 984
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@2a
    if-eqz v1, :cond_2

    #@2c
    if-eqz p2, :cond_2

    #@2e
    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "        "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, ":    rssi5 "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, " 5GHz-boost "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@5b
    .line 987
    :cond_2
    return v0

    #@5c
    .line 991
    .end local v0    # "boost":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@5e
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@60
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@63
    move-result v1

    #@64
    .line 990
    if-ge p1, v1, :cond_4

    #@66
    .line 993
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@68
    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    #@6a
    .line 994
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@6c
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@71
    move-result v2

    #@72
    sub-int v2, p1, v2

    #@74
    .line 993
    mul-int v0, v1, v2

    #@76
    .line 995
    .restart local v0    # "boost":I
    return v0

    #@77
    .line 997
    .end local v0    # "boost":I
    :cond_4
    return v2
.end method

.method setAllowUntrustedConnections(Z)V
    .locals 2
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 1211
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    #@2
    if-eq v1, p1, :cond_1

    #@4
    const/4 v0, 0x1

    #@5
    .line 1212
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    #@7
    .line 1213
    if-eqz v0, :cond_0

    #@9
    .line 1215
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->startScanForUntrustedSettingChange()V

    #@e
    .line 1210
    :cond_0
    return-void

    #@f
    .line 1211
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@10
    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1424
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@3
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@5
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c
    move-result v2

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 1425
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@11
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@13
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@15
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    #@17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1a
    move-result v2

    #@1b
    if-ge v1, v2, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 1424
    :cond_0
    return v0
.end method

.method underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1419
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@3
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@5
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c
    move-result v2

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 1420
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@11
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@13
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@15
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    #@17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1a
    move-result v2

    #@1b
    if-ge v1, v2, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 1419
    :cond_0
    return v0
.end method

.method underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rssi24"    # I
    .param p3, "rssi5"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1429
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@3
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@5
    if-ge v1, p2, :cond_0

    #@7
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@9
    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@b
    if-ge v1, p3, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public updateConfigurationHistory(IZZ)V
    .locals 12
    .param p1, "netId"    # I
    .param p2, "userTriggered"    # Z
    .param p3, "connect"    # Z

    #@0
    .prologue
    .line 427
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v7

    #@6
    .line 428
    .local v7, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_0

    #@8
    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v10, "updateConfigurationHistory nid="

    #@10
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v9

    #@14
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    const-string/jumbo v10, " no selected configuration!"

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v9

    #@23
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@26
    .line 430
    return-void

    #@27
    .line 433
    :cond_0
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@29
    if-nez v9, :cond_1

    #@2b
    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v10, "updateConfigurationHistory nid="

    #@33
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    .line 435
    const-string/jumbo v10, " no SSID in selected configuration!"

    #@3e
    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@49
    .line 436
    return-void

    #@4a
    .line 439
    :cond_1
    if-eqz p2, :cond_2

    #@4c
    .line 442
    const/4 v9, 0x0

    #@4d
    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@50
    .line 443
    const/4 v9, 0x0

    #@51
    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@53
    .line 444
    const/4 v9, 0x1

    #@54
    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@56
    .line 447
    :cond_2
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@58
    if-eqz v9, :cond_3

    #@5a
    if-eqz p2, :cond_3

    #@5c
    .line 448
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@5e
    if-eqz v9, :cond_7

    #@60
    .line 449
    new-instance v9, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v10, "updateConfigurationHistory will update "

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6f
    move-result-object v10

    #@70
    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    .line 450
    const-string/jumbo v10, " now: "

    #@77
    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    .line 451
    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    #@80
    move-result v10

    #@81
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@84
    move-result-object v10

    #@85
    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 452
    const-string/jumbo v10, " uid="

    #@8c
    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    .line 452
    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@92
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@95
    move-result-object v10

    #@96
    .line 449
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    .line 452
    const/4 v10, 0x1

    #@9f
    .line 449
    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    #@a2
    .line 460
    :cond_3
    :goto_0
    if-eqz p3, :cond_e

    #@a4
    if-eqz p2, :cond_e

    #@a6
    .line 461
    const/4 v3, 0x0

    #@a7
    .line 462
    .local v3, "found":Z
    const/4 v0, 0x0

    #@a8
    .line 463
    .local v0, "choice":I
    const/4 v8, 0x0

    #@a9
    .line 467
    .local v8, "size":I
    const/4 v9, 0x0

    #@aa
    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@ac
    .line 468
    const/4 v9, 0x0

    #@ad
    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@af
    .line 469
    const/4 v9, 0x0

    #@b0
    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@b2
    .line 470
    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@b4
    add-int/lit8 v9, v9, 0x1

    #@b6
    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@b8
    .line 473
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@ba
    const/16 v10, 0x2ee0

    #@bc
    const/4 v11, 0x0

    #@bd
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    #@c0
    move-result-object v6

    #@c1
    .line 474
    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_4

    #@c3
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@c6
    move-result v8

    #@c7
    .line 475
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v10, "updateConfigurationHistory found "

    #@cf
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    const-string/jumbo v10, " networks"

    #@da
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v9

    #@e2
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@e5
    .line 476
    if-eqz v6, :cond_e

    #@e7
    .line 477
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ea
    move-result-object v2

    #@eb
    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ee
    move-result v9

    #@ef
    if-eqz v9, :cond_c

    #@f1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f4
    move-result-object v1

    #@f5
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@f7
    .line 478
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    #@f9
    if-eqz v9, :cond_6

    #@fb
    .line 479
    new-instance v9, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v10, "updateConfigurationHistory got "

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@109
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v9

    #@10d
    const-string/jumbo v10, " nid="

    #@110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v9

    #@114
    .line 480
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@116
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@119
    move-result-object v10

    #@11a
    .line 479
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v9

    #@11e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@125
    .line 483
    :cond_6
    const/4 v9, 0x1

    #@126
    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@129
    move-result-object v9

    #@12a
    const/4 v10, 0x1

    #@12b
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@12e
    move-result-object v10

    #@12f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@132
    move-result v9

    #@133
    if-eqz v9, :cond_8

    #@135
    .line 484
    const/4 v3, 0x1

    #@136
    .line 485
    goto :goto_1

    #@137
    .line 454
    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v10, "updateConfigurationHistory will update "

    #@13f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v9

    #@143
    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@146
    move-result-object v10

    #@147
    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v9

    #@14b
    .line 456
    const-string/jumbo v10, " uid="

    #@14e
    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v9

    #@152
    .line 456
    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@154
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@157
    move-result-object v10

    #@158
    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v9

    #@15c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v9

    #@160
    .line 456
    const/4 v10, 0x1

    #@161
    .line 454
    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    #@164
    goto/16 :goto_0

    #@166
    .line 490
    .restart local v0    # "choice":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config$iterator":Ljava/util/Iterator;
    .restart local v3    # "found":Z
    .restart local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v8    # "size":I
    :cond_8
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@168
    if-eqz v9, :cond_5

    #@16a
    .line 491
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@16c
    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@16e
    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@170
    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@172
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@175
    move-result v10

    #@176
    if-ge v9, v10, :cond_9

    #@178
    .line 492
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@17a
    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@17c
    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@17e
    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@180
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@183
    move-result v10

    #@184
    if-lt v9, v10, :cond_5

    #@186
    .line 497
    :cond_9
    const/16 v0, 0x3c

    #@188
    .line 503
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@18a
    if-nez v9, :cond_a

    #@18c
    .line 504
    new-instance v9, Ljava/util/HashMap;

    #@18e
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@191
    iput-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@193
    .line 507
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v10, "updateConfigurationHistory add a choice "

    #@19b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v9

    #@19f
    const/4 v10, 0x1

    #@1a0
    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@1a3
    move-result-object v10

    #@1a4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v9

    #@1a8
    .line 508
    const-string/jumbo v10, " over "

    #@1ab
    .line 507
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v9

    #@1af
    .line 508
    const/4 v10, 0x1

    #@1b0
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@1b3
    move-result-object v10

    #@1b4
    .line 507
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v9

    #@1b8
    .line 509
    const-string/jumbo v10, " choice "

    #@1bb
    .line 507
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v9

    #@1bf
    .line 509
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c2
    move-result-object v10

    #@1c3
    .line 507
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v9

    #@1c7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v9

    #@1cb
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@1ce
    .line 512
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@1d0
    const/4 v10, 0x1

    #@1d1
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@1d4
    move-result-object v10

    #@1d5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d8
    move-result-object v11

    #@1d9
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1dc
    .line 514
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@1de
    if-eqz v9, :cond_5

    #@1e0
    .line 515
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@1e2
    if-eqz v9, :cond_b

    #@1e4
    .line 516
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v10, "updateConfigurationHistory will remove "

    #@1ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v9

    #@1f0
    .line 517
    const/4 v10, 0x1

    #@1f1
    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@1f4
    move-result-object v10

    #@1f5
    .line 516
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v9

    #@1f9
    .line 517
    const-string/jumbo v10, " from "

    #@1fc
    .line 516
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v9

    #@200
    .line 517
    const/4 v10, 0x1

    #@201
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@204
    move-result-object v10

    #@205
    .line 516
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v9

    #@209
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v9

    #@20d
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@210
    .line 520
    :cond_b
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@212
    const/4 v10, 0x1

    #@213
    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@216
    move-result-object v10

    #@217
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21a
    .line 522
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@21c
    if-eqz v9, :cond_5

    #@21e
    .line 525
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@220
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@223
    move-result-object v9

    #@224
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@227
    move-result-object v5

    #@228
    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@22b
    move-result v9

    #@22c
    if-eqz v9, :cond_5

    #@22e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@231
    move-result-object v4

    #@232
    check-cast v4, Ljava/lang/String;

    #@234
    .line 526
    .local v4, "key":Ljava/lang/String;
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@236
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@239
    goto :goto_2

    #@23a
    .line 531
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    :cond_c
    if-nez v3, :cond_d

    #@23c
    .line 536
    new-instance v9, Ljava/lang/StringBuilder;

    #@23e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@241
    const-string/jumbo v10, "updateConfigurationHistory try to connect to an old network!! : "

    #@244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v9

    #@248
    .line 537
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@24b
    move-result-object v10

    #@24c
    .line 536
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v9

    #@250
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@253
    move-result-object v9

    #@254
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@257
    .line 540
    :cond_d
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@259
    if-eqz v9, :cond_e

    #@25b
    .line 541
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    #@25d
    if-eqz v9, :cond_e

    #@25f
    .line 542
    new-instance v9, Ljava/lang/StringBuilder;

    #@261
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@264
    const-string/jumbo v10, "updateConfigurationHistory "

    #@267
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v9

    #@26b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26e
    move-result-object v10

    #@26f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v9

    #@273
    .line 543
    const-string/jumbo v10, " now: "

    #@276
    .line 542
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v9

    #@27a
    .line 543
    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@27c
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    #@27f
    move-result v10

    #@280
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@283
    move-result-object v10

    #@284
    .line 542
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v9

    #@288
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28b
    move-result-object v9

    #@28c
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    #@28f
    .line 549
    .end local v0    # "choice":I
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_e
    if-nez p2, :cond_f

    #@291
    if-eqz p3, :cond_10

    #@293
    .line 550
    :cond_f
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@295
    const/4 v10, 0x0

    #@296
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@299
    .line 426
    :cond_10
    return-void
.end method
