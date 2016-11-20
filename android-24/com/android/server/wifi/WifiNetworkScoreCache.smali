.class public Lcom/android/server/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# static fields
.field private static final DBG:Z = false

.field public static final INVALID_NETWORK_SCORE:I = -0x80

.field private static final TAG:Ljava/lang/String; = "WifiNetworkScoreCache"


# instance fields
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    #@5
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@c
    .line 48
    return-void
.end method

.method private buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .locals 4
    .param p1, "network"    # Landroid/net/ScoredNetwork;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 150
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@5
    if-nez v1, :cond_1

    #@7
    :cond_0
    return-object v3

    #@8
    .line 151
    :cond_1
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@a
    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@c
    if-nez v1, :cond_2

    #@e
    return-object v3

    #@f
    .line 152
    :cond_2
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@11
    iget v1, v1, Landroid/net/NetworkKey;->type:I

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_5

    #@16
    .line 153
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@18
    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@1a
    iget-object v0, v1, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    #@1c
    .line 154
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    #@1e
    return-object v3

    #@1f
    .line 155
    :cond_3
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@21
    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    #@23
    iget-object v1, v1, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_4

    #@27
    .line 156
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
    .line 158
    :cond_4
    return-object v0

    #@3f
    .line 160
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
    .line 164
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@5
    if-nez v1, :cond_1

    #@7
    .line 165
    :cond_0
    return-object v2

    #@8
    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v1, "\""

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    .line 168
    .local v0, "key":Ljava/lang/StringBuilder;
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 169
    const-string/jumbo v1, "\""

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 170
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 171
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 173
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
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 140
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    return-object v2

    #@8
    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@a
    monitor-enter v3

    #@b
    .line 144
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
    .line 145
    return-object v1

    #@15
    .line 143
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
    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 68
    return-void

    #@a
    .line 69
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 177
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v7, "android.permission.DUMP"

    #@5
    const-string/jumbo v8, "WifiNetworkScoreCache"

    #@8
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 178
    const-string/jumbo v6, "WifiNetworkScoreCache"

    #@e
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 179
    const-string/jumbo v6, "  All score curves:"

    #@14
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 180
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@19
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1c
    move-result-object v6

    #@1d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/util/Map$Entry;

    #@2d
    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Landroid/net/ScoredNetwork;

    #@33
    .line 182
    .local v4, "scoredNetwork":Landroid/net/ScoredNetwork;
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "    "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Ljava/lang/String;

    #@45
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    const-string/jumbo v7, ": "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    iget-object v7, v4, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    .line 183
    const-string/jumbo v7, ", meteredHint="

    #@59
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    .line 183
    iget-boolean v7, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@5f
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    goto :goto_0

    #@6b
    .line 185
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    .end local v4    # "scoredNetwork":Landroid/net/ScoredNetwork;
    :cond_0
    const-string/jumbo v6, "  Current network scores:"

    #@6e
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 186
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    #@73
    const-string/jumbo v7, "wifi"

    #@76
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@79
    move-result-object v5

    #@7a
    check-cast v5, Landroid/net/wifi/WifiManager;

    #@7c
    .line 187
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    #@7f
    move-result-object v6

    #@80
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@83
    move-result-object v3

    #@84
    .local v3, "scanResult$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v6

    #@88
    if-eqz v6, :cond_1

    #@8a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v2

    #@8e
    check-cast v2, Landroid/net/wifi/ScanResult;

    #@90
    .line 188
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    new-instance v6, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v7, "    "

    #@98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    const-string/jumbo v7, ": "

    #@a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    #@ae
    move-result v7

    #@af
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v6

    #@b7
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ba
    goto :goto_1

    #@bb
    .line 176
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method public getMeteredHint(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@3
    move-result-object v0

    #@4
    .line 118
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    #@6
    iget-boolean v1, v0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 97
    const/16 v1, -0x80

    #@2
    .line 99
    .local v1, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@5
    move-result-object v0

    #@6
    .line 100
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    #@8
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 101
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@e
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    #@10
    invoke-virtual {v2, v3}, Landroid/net/RssiCurve;->lookupScore(I)B

    #@13
    move-result v1

    #@14
    .line 108
    :cond_0
    return v1
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;Z)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    #@0
    .prologue
    .line 123
    const/16 v1, -0x80

    #@2
    .line 125
    .local v1, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@5
    move-result-object v0

    #@6
    .line 126
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    #@8
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 127
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@e
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    #@10
    invoke-virtual {v2, v3, p2}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    #@13
    move-result v1

    #@14
    .line 135
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
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    #@4
    move-result-object v0

    #@5
    .line 92
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
    .line 81
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
    .line 54
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez p1, :cond_0

    #@2
    .line 55
    return-void

    #@3
    .line 57
    :cond_0
    const-string/jumbo v3, "WifiNetworkScoreCache"

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "updateScores list size="

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@15
    move-result v5

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 59
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@23
    monitor-enter v4

    #@24
    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "network$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/net/ScoredNetwork;

    #@34
    .line 61
    .local v0, "network":Landroid/net/ScoredNetwork;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 62
    .local v2, "networkKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@3a
    .line 63
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    #@3c
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 59
    .end local v0    # "network":Landroid/net/ScoredNetwork;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    .end local v2    # "networkKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3

    #@43
    .restart local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    #@44
    .line 53
    return-void
.end method
