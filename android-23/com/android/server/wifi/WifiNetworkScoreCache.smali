.class public Lcom/android/server/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# static fields
.field public static INVALID_NETWORK_SCORE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private final mContext:Landroid/content/Context;

.field private final mNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const/16 v0, -0x80

    #@2
    sput v0, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@4
    .line 42
    const-string/jumbo v0, "WifiNetworkScoreCache"

    #@7
    sput-object v0, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    #@9
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->DBG:Z

    #@6
    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    #@8
    .line 52
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@f
    .line 50
    return-void
.end method

.method private buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .locals 4
    .param p1, "network"    # Landroid/net/ScoredNetwork;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 142
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@5
    if-nez v1, :cond_1

    #@7
    :cond_0
    return-object v3

    #@8
    .line 143
    :cond_1
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@a
    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@c
    if-nez v1, :cond_2

    #@e
    return-object v3

    #@f
    .line 144
    :cond_2
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@11
    iget v1, v1, Landroid/net/NetworkKey;->type:I

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_5

    #@16
    .line 145
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@18
    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@1a
    iget-object v0, v1, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@1c
    .line 146
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    #@1e
    return-object v3

    #@1f
    .line 147
    :cond_3
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@21
    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@23
    iget-object v1, v1, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_4

    #@27
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@32
    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@34
    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 150
    :cond_4
    return-object v0

    #@3f
    .line 152
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method private buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 156
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@5
    if-nez v1, :cond_1

    #@7
    .line 157
    :cond_0
    return-object v2

    #@8
    .line 159
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v1, "\""

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    .line 160
    .local v0, "key":Ljava/lang/StringBuilder;
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 161
    const-string/jumbo v1, "\""

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 162
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 163
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method private getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 132
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    return-object v2

    #@8
    .line 135
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@a
    monitor-enter v3

    #@b
    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@d
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/net/ScoredNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .local v1, "network":Landroid/net/ScoredNetwork;
    monitor-exit v3

    #@14
    .line 137
    return-object v1

    #@15
    .line 135
    .end local v1    # "network":Landroid/net/ScoredNetwork;
    :catchall_0
    move-exception v2

    #@16
    monitor-exit v3

    #@17
    throw v2
.end method


# virtual methods
.method public final clearScores()V
    .locals 2

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 70
    return-void

    #@a
    .line 71
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.DUMP"

    #@5
    sget-object v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    #@7
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 170
    const-string/jumbo v5, "WifiNetworkScoreCache"

    #@d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 171
    const-string/jumbo v5, "  All score curves:"

    #@13
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 172
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@18
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1b
    move-result-object v5

    #@1c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_0

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/util/Map$Entry;

    #@2c
    .line 173
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v6, "    "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Ljava/lang/String;

    #@3e
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    const-string/jumbo v6, ": "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Landroid/net/ScoredNetwork;

    #@4f
    iget-object v5, v5, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@51
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    goto :goto_0

    #@5d
    .line 175
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    :cond_0
    const-string/jumbo v5, "  Current network scores:"

    #@60
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 176
    iget-object v5, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    #@65
    const-string/jumbo v6, "wifi"

    #@68
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6b
    move-result-object v4

    #@6c
    check-cast v4, Landroid/net/wifi/WifiManager;

    #@6e
    .line 177
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    #@71
    move-result-object v5

    #@72
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v3

    #@76
    .local v3, "scanResult$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_1

    #@7c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/net/wifi/ScanResult;

    #@82
    .line 178
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    new-instance v5, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v6, "    "

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    const-string/jumbo v6, ": "

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    #@a0
    move-result v6

    #@a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac
    goto :goto_1

    #@ad
    .line 168
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 99
    sget v1, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@2
    .line 101
    .local v1, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@5
    move-result-object v0

    #@6
    .line 102
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    #@8
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 103
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@e
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    #@10
    invoke-virtual {v2, v3}, Landroid/net/RssiCurve;->lookupScore(I)B

    #@13
    move-result v1

    #@14
    .line 104
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->DBG:Z

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 105
    sget-object v2, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "getNetworkScore found scored network "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    iget-object v4, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 106
    const-string/jumbo v4, " score "

    #@2f
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 107
    const-string/jumbo v4, " RSSI "

    #@3e
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 107
    iget v4, p1, Landroid/net/wifi/ScanResult;->level:I

    #@44
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 110
    :cond_0
    return v1
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;Z)I
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    #@0
    .prologue
    .line 115
    sget v1, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    #@2
    .line 117
    .local v1, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@5
    move-result-object v0

    #@6
    .line 118
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    #@8
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 119
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@e
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    #@10
    invoke-virtual {v2, v3, p2}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    #@13
    move-result v1

    #@14
    .line 120
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->DBG:Z

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 121
    sget-object v2, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "getNetworkScore found scored network "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    iget-object v4, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 122
    const-string/jumbo v4, " score "

    #@2f
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 123
    const-string/jumbo v4, " RSSI "

    #@3e
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 123
    iget v4, p1, Landroid/net/wifi/ScanResult;->level:I

    #@44
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 124
    const-string/jumbo v4, " isActiveNetwork "

    #@4b
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 127
    :cond_0
    return v1
.end method

.method public hasScoreCurve(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@4
    move-result-object v0

    #@5
    .line 94
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    #@7
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@9
    if-eqz v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method public isScoredNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final updateScores(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 56
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez p1, :cond_0

    #@2
    .line 57
    return-void

    #@3
    .line 59
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNetworkScoreCache;->TAG:Ljava/lang/String;

    #@5
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "updateScores list size="

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@14
    move-result v5

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 61
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@22
    monitor-enter v4

    #@23
    .line 62
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "network$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/net/ScoredNetwork;

    #@33
    .line 63
    .local v0, "network":Landroid/net/ScoredNetwork;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 64
    .local v2, "networkKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@39
    .line 65
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@3b
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 61
    .end local v0    # "network":Landroid/net/ScoredNetwork;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    .end local v2    # "networkKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@40
    monitor-exit v4

    #@41
    throw v3

    #@42
    .restart local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    #@43
    .line 55
    return-void
.end method
