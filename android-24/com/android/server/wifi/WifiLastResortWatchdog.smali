.class public Lcom/android/server/wifi/WifiLastResortWatchdog;
.super Ljava/lang/Object;
.source "WifiLastResortWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    }
.end annotation


# static fields
.field public static final BSSID_ANY:Ljava/lang/String; = "any"

.field private static final DBG:Z = true

.field public static final FAILURE_CODE_ASSOCIATION:I = 0x1

.field public static final FAILURE_CODE_AUTHENTICATION:I = 0x2

.field public static final FAILURE_CODE_DHCP:I = 0x3

.field public static final FAILURE_THRESHOLD:I = 0x7

.field public static final MAX_BSSID_AGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WifiLastResortWatchdog"

.field private static final VDBG:Z


# instance fields
.field private mRecentAvailableNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidFailureCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWatchdogAllowedToTrigger:Z

.field private mWifiIsConnected:Z

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 1
    .param p1, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@a
    .line 74
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 73
    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@11
    .line 76
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    #@14
    .line 79
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    #@17
    .line 84
    iput-object p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@19
    .line 83
    return-void
.end method

.method private checkTriggerCondition()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 301
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    return v4

    #@6
    .line 303
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    #@8
    if-nez v3, :cond_1

    #@a
    return v4

    #@b
    .line 305
    :cond_1
    const/4 v0, 0x0

    #@c
    .line 307
    .local v0, "atleastOneNetworkHasEverConnected":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@e
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v3

    #@12
    .line 306
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_4

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/Map$Entry;

    #@22
    .line 308
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@28
    iget-object v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@32
    iget-object v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@34
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    #@3b
    move-result v3

    #@3c
    .line 308
    if-eqz v3, :cond_3

    #@3e
    .line 310
    const/4 v0, 0x1

    #@3f
    .line 312
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Ljava/lang/String;

    #@45
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->isOverFailureThreshold(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_2

    #@4b
    .line 315
    return v4

    #@4c
    .line 323
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    :cond_4
    return v0
.end method

.method private clearAllFailureCounts()V
    .locals 5

    #@0
    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v4

    #@6
    .line 373
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Map$Entry;

    #@16
    .line 375
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@1c
    .line 376
    .local v3, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@22
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->resetCounts()V

    #@25
    goto :goto_0

    #@26
    .line 379
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    .end local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@28
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2b
    move-result-object v4

    #@2c
    .line 378
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v2

    #@30
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_1

    #@36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/util/Map$Entry;

    #@3c
    .line 380
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Landroid/util/Pair;

    #@42
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@44
    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@46
    .line 381
    .restart local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->resetCounts()V

    #@49
    goto :goto_1

    #@4a
    .line 371
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    .end local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    :cond_1
    return-void
.end method

.method private incrementBssidFailureCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@8
    .line 267
    .local v0, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v0, :cond_0

    #@a
    .line 269
    const-string/jumbo v1, "WifiLastResortWatchdog"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "updateFailureCountForNetwork: Unable to find Network ["

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 270
    const-string/jumbo v3, ", "

    #@20
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 270
    const-string/jumbo v3, "]"

    #@2b
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 272
    return-void

    #@37
    .line 274
    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_1

    #@3f
    .line 276
    const-string/jumbo v1, "WifiLastResortWatchdog"

    #@42
    new-instance v2, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v3, "updateFailureCountForNetwork: Failed connection attempt has wrong ssid. Failed ["

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    .line 277
    const-string/jumbo v3, ", "

    #@55
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    .line 277
    const-string/jumbo v3, "], buffered ["

    #@60
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    .line 278
    iget-object v3, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@66
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    .line 278
    const-string/jumbo v3, ", "

    #@6d
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    .line 278
    const-string/jumbo v3, "]"

    #@78
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 280
    return-void

    #@84
    .line 282
    :cond_1
    iget-object v1, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@86
    if-nez v1, :cond_2

    #@88
    .line 288
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->incrementFailureCount(I)V

    #@8b
    .line 289
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementSsidFailureCount(Ljava/lang/String;I)V

    #@8e
    .line 264
    return-void
.end method

.method private incrementSsidFailureCount(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/Pair;

    #@8
    .line 249
    .local v1, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    #@a
    .line 251
    const-string/jumbo v2, "WifiLastResortWatchdog"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "updateFailureCountForNetwork: No networks for ssid = "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 253
    return-void

    #@25
    .line 255
    :cond_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@27
    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@29
    .line 256
    .local v0, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->incrementFailureCount(I)V

    #@2c
    .line 247
    return-void
.end method

.method private incrementWifiMetricsTriggerCounts()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x7

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 341
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@5
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggers()V

    #@8
    .line 342
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@a
    .line 343
    iget-object v8, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@c
    invoke-interface {v8}, Ljava/util/Map;->size()I

    #@f
    move-result v8

    #@10
    .line 342
    invoke-virtual {v5, v8}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V

    #@13
    .line 345
    const/4 v1, 0x0

    #@14
    .line 346
    .local v1, "badAuth":I
    const/4 v0, 0x0

    #@15
    .line 347
    .local v0, "badAssoc":I
    const/4 v2, 0x0

    #@16
    .line 349
    .local v2, "badDhcp":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@18
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1b
    move-result-object v5

    #@1c
    .line 348
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v4

    #@20
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_3

    #@26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/util/Map$Entry;

    #@2c
    .line 350
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Landroid/util/Pair;

    #@32
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@34
    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@36
    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@38
    if-lt v5, v9, :cond_0

    #@3a
    move v5, v6

    #@3b
    :goto_1
    add-int/2addr v1, v5

    #@3c
    .line 351
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Landroid/util/Pair;

    #@42
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@44
    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@46
    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@48
    if-lt v5, v9, :cond_1

    #@4a
    move v5, v6

    #@4b
    :goto_2
    add-int/2addr v0, v5

    #@4c
    .line 352
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    check-cast v5, Landroid/util/Pair;

    #@52
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@54
    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@56
    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@58
    if-lt v5, v9, :cond_2

    #@5a
    move v5, v6

    #@5b
    :goto_3
    add-int/2addr v2, v5

    #@5c
    goto :goto_0

    #@5d
    :cond_0
    move v5, v7

    #@5e
    .line 350
    goto :goto_1

    #@5f
    :cond_1
    move v5, v7

    #@60
    .line 351
    goto :goto_2

    #@61
    :cond_2
    move v5, v7

    #@62
    .line 352
    goto :goto_3

    #@63
    .line 354
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    :cond_3
    if-lez v1, :cond_4

    #@65
    .line 355
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@67
    invoke-virtual {v5, v1}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V

    #@6a
    .line 356
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@6c
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadAuthentication()V

    #@6f
    .line 358
    :cond_4
    if-lez v0, :cond_5

    #@71
    .line 359
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@73
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V

    #@76
    .line 360
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@78
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadAssociation()V

    #@7b
    .line 362
    :cond_5
    if-lez v2, :cond_6

    #@7d
    .line 363
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@7f
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V

    #@82
    .line 364
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@84
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadDhcp()V

    #@87
    .line 339
    :cond_6
    return-void
.end method

.method private restartWifiStack()V
    .locals 2

    #@0
    .prologue
    .line 331
    const-string/jumbo v0, "WifiLastResortWatchdog"

    #@3
    const-string/jumbo v1, "Triggered."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 332
    const-string/jumbo v0, "WifiLastResortWatchdog"

    #@c
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 329
    return-void
.end method

.method private setWatchdogTriggerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    #@2
    .line 395
    return-void
.end method

.method private updateFailureCountForNetwork(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "any"

    #@3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 234
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementSsidFailureCount(Ljava/lang/String;I)V

    #@c
    .line 228
    :goto_0
    return-void

    #@d
    .line 238
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementBssidFailureCount(Ljava/lang/String;Ljava/lang/String;I)V

    #@10
    goto :goto_0
.end method


# virtual methods
.method public connectedStateTransition(Z)V
    .locals 1
    .param p1, "isEntering"    # Z

    #@0
    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    #@2
    .line 210
    if-eqz p1, :cond_0

    #@4
    .line 212
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    #@7
    .line 215
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    #@b
    .line 207
    :cond_0
    return-void
.end method

.method public getFailureCount(Ljava/lang/String;I)I
    .locals 8
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 443
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@3
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@9
    .line 444
    .local v0, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v0, :cond_0

    #@b
    .line 445
    return v7

    #@c
    .line 447
    :cond_0
    iget-object v2, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@e
    .line 448
    .local v2, "ssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@10
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/util/Pair;

    #@16
    .line 449
    .local v3, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    #@18
    .line 451
    const-string/jumbo v4, "WifiLastResortWatchdog"

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "getFailureCount: Could not find SSID count for "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 453
    return v7

    #@33
    .line 455
    :cond_1
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@35
    check-cast v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@37
    .line 456
    .local v1, "failCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    packed-switch p2, :pswitch_data_0

    #@3a
    .line 464
    return v7

    #@3b
    .line 458
    :pswitch_0
    iget v4, v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    #@3d
    return v4

    #@3e
    .line 460
    :pswitch_1
    iget v4, v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    #@40
    return v4

    #@41
    .line 462
    :pswitch_2
    iget v4, v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    #@43
    return v4

    #@44
    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getRecentAvailableNetworks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public isOverFailureThreshold(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x7

    #@2
    .line 428
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 429
    const/4 v0, 0x2

    #@9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    if-lt v0, v1, :cond_1

    #@f
    .line 431
    :cond_0
    return v2

    #@10
    .line 430
    :cond_1
    const/4 v0, 0x3

    #@11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    if-ge v0, v1, :cond_0

    #@17
    .line 433
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method public noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateFailureCountForNetwork(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 189
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->checkTriggerCondition()Z

    #@6
    move-result v0

    #@7
    .line 191
    .local v0, "isRestartNeeded":Z
    if-eqz v0, :cond_0

    #@9
    .line 193
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    #@d
    .line 194
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->restartWifiStack()V

    #@10
    .line 196
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementWifiMetricsTriggerCounts()V

    #@13
    .line 197
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    #@16
    .line 199
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 405
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "mWatchdogAllowedToTrigger: "

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v6

    #@c
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    .line 406
    const-string/jumbo v6, "\nmWifiIsConnected: "

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    .line 407
    const-string/jumbo v6, "\nmRecentAvailableNetworks: "

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    iget-object v7, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@26
    invoke-interface {v7}, Ljava/util/Map;->size()I

    #@29
    move-result v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 409
    iget-object v6, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@2f
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@32
    move-result-object v6

    #@33
    .line 408
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v3

    #@37
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_0

    #@3d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Ljava/util/Map$Entry;

    #@43
    .line 410
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    const-string/jumbo v6, "\n "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    check-cast v6, Ljava/lang/String;

    #@50
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    const-string/jumbo v7, ": "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_0

    #@63
    .line 412
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    :cond_0
    const-string/jumbo v6, "\nmSsidFailureCount:"

    #@66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 414
    iget-object v6, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@6b
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6e
    move-result-object v6

    #@6f
    .line 413
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v3

    #@73
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_1

    #@79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v1

    #@7d
    check-cast v1, Ljava/util/Map$Entry;

    #@7f
    .line 415
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@82
    move-result-object v6

    #@83
    check-cast v6, Landroid/util/Pair;

    #@85
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@87
    check-cast v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@89
    .line 416
    .local v4, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8c
    move-result-object v6

    #@8d
    check-cast v6, Landroid/util/Pair;

    #@8f
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@91
    check-cast v0, Ljava/lang/Integer;

    #@93
    .line 417
    .local v0, "apCount":Ljava/lang/Integer;
    const-string/jumbo v6, "\n"

    #@96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Ljava/lang/String;

    #@a0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    const-string/jumbo v7, ": "

    #@a7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    const-string/jumbo v7, ", "

    #@b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v6

    #@b6
    .line 418
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->toString()Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    .line 417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    goto :goto_1

    #@be
    .line 420
    .end local v0    # "apCount":Ljava/lang/Integer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    .end local v4    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    return-object v6
.end method

.method public updateAvailableNetworks(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    if-eqz p1, :cond_4

    #@2
    .line 99
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v9

    #@6
    .local v9, "pair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v15

    #@a
    if-eqz v15, :cond_4

    #@c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v8

    #@10
    check-cast v8, Landroid/util/Pair;

    #@12
    .line 100
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14
    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    #@16
    .line 101
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@18
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    #@1a
    .line 102
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@1d
    move-result-object v11

    #@1e
    .line 103
    .local v11, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v11, :cond_0

    #@20
    .line 104
    iget-object v3, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@22
    .line 105
    .local v3, "bssid":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v16, "\""

    #@2a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v15

    #@2e
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@31
    move-result-object v16

    #@32
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v15

    #@36
    const-string/jumbo v16, "\""

    #@39
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v15

    #@3d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    .line 109
    .local v12, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@43
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@45
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@4b
    .line 110
    .local v2, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v2, :cond_1

    #@4d
    .line 112
    new-instance v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@4f
    .end local v2    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-direct {v2, v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@52
    .line 113
    .restart local v2    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    iput-object v12, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@54
    .line 117
    move-object/from16 v0, p0

    #@56
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@58
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v14

    #@5c
    check-cast v14, Landroid/util/Pair;

    #@5e
    .line 118
    .local v14, "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v14, :cond_3

    #@60
    .line 120
    new-instance v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@62
    invoke-direct {v15, v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@65
    .line 121
    const/16 v16, 0x1

    #@67
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v16

    #@6b
    .line 120
    invoke-static/range {v15 .. v16}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@6e
    move-result-object v14

    #@6f
    .line 122
    const/4 v15, 0x1

    #@70
    move-object/from16 v0, p0

    #@72
    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    #@75
    .line 129
    :goto_1
    move-object/from16 v0, p0

    #@77
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@79
    invoke-interface {v15, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 132
    .end local v14    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v4, :cond_2

    #@7e
    .line 133
    iput-object v4, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    #@80
    .line 136
    :cond_2
    const/4 v15, -0x1

    #@81
    iput v15, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    #@83
    .line 137
    move-object/from16 v0, p0

    #@85
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@87
    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    goto/16 :goto_0

    #@8c
    .line 124
    .restart local v14    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_3
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@8e
    check-cast v7, Ljava/lang/Integer;

    #@90
    .line 126
    .local v7, "numberOfAps":Ljava/lang/Integer;
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@92
    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@94
    .line 127
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@97
    move-result v16

    #@98
    add-int/lit8 v16, v16, 0x1

    #@9a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v16

    #@9e
    .line 126
    invoke-static/range {v15 .. v16}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@a1
    move-result-object v14

    #@a2
    goto :goto_1

    #@a3
    .line 143
    .end local v2    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "numberOfAps":Ljava/lang/Integer;
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    .end local v9    # "pair$iterator":Ljava/util/Iterator;
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v11    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "ssid":Ljava/lang/String;
    .end local v14    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v0, p0

    #@a5
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    #@a7
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@aa
    move-result-object v15

    #@ab
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@ae
    move-result-object v6

    #@af
    .line 144
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@b2
    move-result v15

    #@b3
    if-eqz v15, :cond_8

    #@b5
    .line 145
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b8
    move-result-object v5

    #@b9
    check-cast v5, Ljava/util/Map$Entry;

    #@bb
    .line 146
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@be
    move-result-object v15

    #@bf
    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@c1
    iget v15, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    #@c3
    const/16 v16, 0x9

    #@c5
    move/from16 v0, v16

    #@c7
    if-ge v15, v0, :cond_5

    #@c9
    .line 147
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@cc
    move-result-object v15

    #@cd
    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@cf
    iget v0, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    #@d1
    move/from16 v16, v0

    #@d3
    add-int/lit8 v16, v16, 0x1

    #@d5
    move/from16 v0, v16

    #@d7
    iput v0, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    #@d9
    goto :goto_2

    #@da
    .line 150
    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@dd
    move-result-object v15

    #@de
    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@e0
    iget-object v12, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    #@e2
    .line 152
    .restart local v12    # "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e4
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@e6
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    move-result-object v13

    #@ea
    check-cast v13, Landroid/util/Pair;

    #@ec
    .line 153
    .local v13, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-eqz v13, :cond_7

    #@ee
    .line 154
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@f0
    check-cast v15, Ljava/lang/Integer;

    #@f2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@f5
    move-result v15

    #@f6
    add-int/lit8 v15, v15, -0x1

    #@f8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fb
    move-result-object v1

    #@fc
    .line 155
    .local v1, "apCount":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@ff
    move-result v15

    #@100
    if-lez v15, :cond_6

    #@102
    .line 156
    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@104
    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    #@106
    invoke-static {v15, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@109
    move-result-object v13

    #@10a
    .line 157
    move-object/from16 v0, p0

    #@10c
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@10e
    invoke-interface {v15, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@111
    .line 167
    .end local v1    # "apCount":Ljava/lang/Integer;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    #@114
    goto :goto_2

    #@115
    .line 159
    .restart local v1    # "apCount":Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    #@117
    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    #@119
    invoke-interface {v15, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    goto :goto_3

    #@11d
    .line 163
    .end local v1    # "apCount":Ljava/lang/Integer;
    :cond_7
    const-string/jumbo v15, "WifiLastResortWatchdog"

    #@120
    new-instance v16, Ljava/lang/StringBuilder;

    #@122
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v17, "updateAvailableNetworks: SSID to AP count mismatch for "

    #@128
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v16

    #@12c
    move-object/from16 v0, v16

    #@12e
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v16

    #@132
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v16

    #@136
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@139
    goto :goto_3

    #@13a
    .line 95
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    .end local v12    # "ssid":Ljava/lang/String;
    .end local v13    # "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_8
    return-void
.end method
