.class public Lcom/android/server/wifi/ScanDetailCache;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScanDetailCache"


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    const/4 v2, 0x2

    #@3
    const/high16 v1, 0x3f400000    # 0.75f

    #@5
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    #@a
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    #@18
    .line 47
    return-void
.end method

.method private sort()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    .line 139
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 140
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache$2;

    #@13
    invoke-direct {v1, p0}, Lcom/android/server/wifi/ScanDetailCache$2;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    #@16
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@19
    .line 166
    :cond_0
    return-object v0
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    #@4
    move-result-object v0

    #@5
    .line 69
    .local v0, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method getFirst()Lcom/android/server/wifi/ScanDetail;
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    .line 90
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    #@16
    :goto_0
    return-object v1

    #@17
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method

.method getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    #@8
    return-object v0
.end method

.method public getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 1
    .param p1, "age"    # J

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    #@2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByPasspointMatch(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 291
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByRssi(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getVisibilityByPasspointMatch(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 15
    .param p1, "age"    # J

    #@0
    .prologue
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 235
    .local v2, "now_ms":J
    const/4 v5, 0x0

    #@5
    .local v5, "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    const/4 v6, 0x0

    #@6
    .line 237
    .local v6, "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    iget-object v10, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    #@8
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v10

    #@c
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v4

    #@10
    .end local v5    # "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v6    # "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .local v4, "pmi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_4

    #@16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    #@1c
    .line 238
    .local v1, "pmi":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    #@1f
    move-result-object v8

    #@20
    .line 239
    .local v8, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v8, :cond_0

    #@22
    .line 240
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@25
    move-result-object v7

    #@26
    .line 241
    .local v7, "result":Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_0

    #@28
    .line 243
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@2b
    move-result-wide v10

    #@2c
    const-wide/16 v12, 0x0

    #@2e
    cmp-long v10, v10, v12

    #@30
    if-eqz v10, :cond_0

    #@32
    .line 245
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    #@34
    sub-long v10, v2, v10

    #@36
    cmp-long v10, v10, p1

    #@38
    if-gtz v10, :cond_0

    #@3a
    .line 247
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_2

    #@40
    .line 248
    if-eqz v6, :cond_1

    #@42
    invoke-virtual {v6, v1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    #@45
    move-result v10

    #@46
    if-gez v10, :cond_0

    #@48
    .line 249
    :cond_1
    move-object v6, v1

    #@49
    .local v6, "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    goto :goto_0

    #@4a
    .line 251
    .end local v6    # "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    :cond_2
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@4d
    move-result v10

    #@4e
    if-eqz v10, :cond_0

    #@50
    .line 252
    if-eqz v5, :cond_3

    #@52
    invoke-virtual {v5, v1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    #@55
    move-result v10

    #@56
    if-gez v10, :cond_0

    #@58
    .line 253
    :cond_3
    move-object v5, v1

    #@59
    .local v5, "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    goto :goto_0

    #@5a
    .line 258
    .end local v1    # "pmi":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v5    # "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v8    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    new-instance v9, Landroid/net/wifi/WifiConfiguration$Visibility;

    #@5c
    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>()V

    #@5f
    .line 259
    .local v9, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    const-string/jumbo v0, "Visiblity by passpoint match returned "

    #@62
    .line 260
    .local v0, "logMsg":Ljava/lang/String;
    if-eqz v6, :cond_5

    #@64
    .line 261
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    #@67
    move-result-object v10

    #@68
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@6b
    move-result-object v7

    #@6c
    .line 262
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    #@6e
    iput v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@70
    .line 263
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    #@72
    iput-wide v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    #@74
    .line 264
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@76
    iput-object v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@78
    .line 265
    new-instance v10, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    const-string/jumbo v11, "5 GHz BSSID of "

    #@84
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@8a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v10

    #@8e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    .line 267
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    if-eqz v5, :cond_6

    #@94
    .line 268
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@9b
    move-result-object v7

    #@9c
    .line 269
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    #@9e
    iput v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@a0
    .line 270
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    #@a2
    iput-wide v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    #@a4
    .line 271
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@a6
    iput-object v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@a8
    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    const-string/jumbo v11, "2.4 GHz BSSID of "

    #@b4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v10

    #@b8
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@ba
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    .line 275
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    const-string/jumbo v10, "ScanDetailCache"

    #@c5
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 277
    return-object v9
.end method

.method public getVisibilityByRssi(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 13
    .param p1, "age"    # J

    #@0
    .prologue
    .line 176
    new-instance v7, Landroid/net/wifi/WifiConfiguration$Visibility;

    #@2
    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>()V

    #@5
    .line 178
    .local v7, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v2

    #@9
    .line 179
    .local v2, "now_ms":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    .line 180
    .local v0, "now_elapsed_ms":J
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@10
    move-result-object v8

    #@11
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v6

    #@15
    .local v6, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_6

    #@1b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    #@21
    .line 181
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@24
    move-result-object v4

    #@25
    .line 182
    .local v4, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@28
    move-result-wide v8

    #@29
    const-wide/16 v10, 0x0

    #@2b
    cmp-long v8, v8, v10

    #@2d
    if-eqz v8, :cond_0

    #@2f
    .line 186
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_3

    #@35
    .line 189
    iget v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@37
    add-int/lit8 v8, v8, 0x1

    #@39
    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    #@3b
    .line 196
    :cond_1
    :goto_1
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    #@3d
    const-wide/16 v10, 0x0

    #@3f
    cmp-long v8, v8, v10

    #@41
    if-eqz v8, :cond_4

    #@43
    .line 202
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    #@45
    const-wide/16 v10, 0x3e8

    #@47
    div-long/2addr v8, v10

    #@48
    sub-long v8, v0, v8

    #@4a
    cmp-long v8, v8, p1

    #@4c
    if-gtz v8, :cond_0

    #@4e
    .line 208
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_5

    #@54
    .line 209
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    #@56
    iget v9, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@58
    if-le v8, v9, :cond_0

    #@5a
    .line 210
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    #@5c
    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@5e
    .line 211
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->seen:J

    #@60
    iput-wide v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    #@62
    .line 212
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@64
    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    #@66
    goto :goto_0

    #@67
    .line 190
    :cond_3
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@6a
    move-result v8

    #@6b
    if-eqz v8, :cond_1

    #@6d
    .line 193
    iget v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@6f
    add-int/lit8 v8, v8, 0x1

    #@71
    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    #@73
    goto :goto_1

    #@74
    .line 205
    :cond_4
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->seen:J

    #@76
    sub-long v8, v2, v8

    #@78
    cmp-long v8, v8, p1

    #@7a
    if-lez v8, :cond_2

    #@7c
    goto :goto_0

    #@7d
    .line 214
    :cond_5
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@80
    move-result v8

    #@81
    if-eqz v8, :cond_0

    #@83
    .line 215
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    #@85
    iget v9, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@87
    if-le v8, v9, :cond_0

    #@89
    .line 216
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    #@8b
    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@8d
    .line 217
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->seen:J

    #@8f
    iput-wide v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    #@91
    .line 218
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@93
    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    #@95
    goto :goto_0

    #@96
    .line 223
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_6
    return-object v7
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method keySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method put(Lcom/android/server/wifi/ScanDetail;)V
    .locals 1
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@4
    .line 53
    return-void
.end method

.method put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "match"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .param p3, "homeSp"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 61
    if-eqz p2, :cond_0

    #@b
    if-eqz p3, :cond_0

    #@d
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 63
    new-instance v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    #@15
    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;-><init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@18
    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 57
    :cond_0
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 76
    return-void
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    #@0
    .prologue
    .line 299
    new-instance v18, Ljava/lang/StringBuilder;

    #@2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 300
    .local v18, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v21, "Scan Cache:  "

    #@8
    move-object/from16 v0, v18

    #@a
    move-object/from16 v1, v21

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v21

    #@10
    const/16 v22, 0xa

    #@12
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;

    #@18
    move-result-object v12

    #@19
    .line 303
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c
    move-result-wide v16

    #@1d
    .line 304
    .local v16, "now_ms":J
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v21

    #@21
    if-lez v21, :cond_5

    #@23
    .line 305
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v20

    #@27
    .local v20, "scanDetail$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v21

    #@2b
    if-eqz v21, :cond_4

    #@2d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v19

    #@31
    check-cast v19, Lcom/android/server/wifi/ScanDetail;

    #@33
    .line 306
    .local v19, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@36
    move-result-object v13

    #@37
    .line 307
    .local v13, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@3a
    move-result-wide v22

    #@3b
    sub-long v14, v16, v22

    #@3d
    .line 308
    .local v14, "milli":J
    const-wide/16 v10, 0x0

    #@3f
    .line 309
    .local v10, "ageSec":J
    const-wide/16 v8, 0x0

    #@41
    .line 310
    .local v8, "ageMin":J
    const-wide/16 v4, 0x0

    #@43
    .line 311
    .local v4, "ageHour":J
    const-wide/16 v6, 0x0

    #@45
    .line 312
    .local v6, "ageMilli":J
    const-wide/16 v2, 0x0

    #@47
    .line 313
    .local v2, "ageDay":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@4a
    move-result-wide v22

    #@4b
    cmp-long v21, v16, v22

    #@4d
    if-lez v21, :cond_0

    #@4f
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@52
    move-result-wide v22

    #@53
    const-wide/16 v24, 0x0

    #@55
    cmp-long v21, v22, v24

    #@57
    if-lez v21, :cond_0

    #@59
    .line 314
    const-wide/16 v22, 0x3e8

    #@5b
    rem-long v6, v14, v22

    #@5d
    .line 315
    const-wide/16 v22, 0x3e8

    #@5f
    div-long v22, v14, v22

    #@61
    const-wide/16 v24, 0x3c

    #@63
    rem-long v10, v22, v24

    #@65
    .line 316
    const-wide/32 v22, 0xea60

    #@68
    div-long v22, v14, v22

    #@6a
    const-wide/16 v24, 0x3c

    #@6c
    rem-long v8, v22, v24

    #@6e
    .line 317
    const-wide/32 v22, 0x36ee80

    #@71
    div-long v22, v14, v22

    #@73
    const-wide/16 v24, 0x18

    #@75
    rem-long v4, v22, v24

    #@77
    .line 318
    const-wide/32 v22, 0x5265c00

    #@7a
    div-long v2, v14, v22

    #@7c
    .line 320
    :cond_0
    const-string/jumbo v21, "{"

    #@7f
    move-object/from16 v0, v18

    #@81
    move-object/from16 v1, v21

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v21

    #@87
    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@89
    move-object/from16 v22, v0

    #@8b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v21

    #@8f
    const-string/jumbo v22, ","

    #@92
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v21

    #@96
    iget v0, v13, Landroid/net/wifi/ScanResult;->frequency:I

    #@98
    move/from16 v22, v0

    #@9a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    .line 321
    const-string/jumbo v21, ","

    #@a0
    move-object/from16 v0, v18

    #@a2
    move-object/from16 v1, v21

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v21

    #@a8
    const-string/jumbo v22, "%3d"

    #@ab
    const/16 v23, 0x1

    #@ad
    move/from16 v0, v23

    #@af
    new-array v0, v0, [Ljava/lang/Object;

    #@b1
    move-object/from16 v23, v0

    #@b3
    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    #@b5
    move/from16 v24, v0

    #@b7
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ba
    move-result-object v24

    #@bb
    const/16 v25, 0x0

    #@bd
    aput-object v24, v23, v25

    #@bf
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c2
    move-result-object v22

    #@c3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    .line 322
    const-wide/16 v22, 0x0

    #@c8
    cmp-long v21, v10, v22

    #@ca
    if-gtz v21, :cond_1

    #@cc
    const-wide/16 v22, 0x0

    #@ce
    cmp-long v21, v6, v22

    #@d0
    if-lez v21, :cond_2

    #@d2
    .line 323
    :cond_1
    const-string/jumbo v21, ",%4d.%02d.%02d.%02d.%03dms"

    #@d5
    const/16 v22, 0x5

    #@d7
    move/from16 v0, v22

    #@d9
    new-array v0, v0, [Ljava/lang/Object;

    #@db
    move-object/from16 v22, v0

    #@dd
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e0
    move-result-object v23

    #@e1
    const/16 v24, 0x0

    #@e3
    aput-object v23, v22, v24

    #@e5
    .line 324
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e8
    move-result-object v23

    #@e9
    const/16 v24, 0x1

    #@eb
    aput-object v23, v22, v24

    #@ed
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f0
    move-result-object v23

    #@f1
    const/16 v24, 0x2

    #@f3
    aput-object v23, v22, v24

    #@f5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f8
    move-result-object v23

    #@f9
    const/16 v24, 0x3

    #@fb
    aput-object v23, v22, v24

    #@fd
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@100
    move-result-object v23

    #@101
    const/16 v24, 0x4

    #@103
    aput-object v23, v22, v24

    #@105
    .line 323
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@108
    move-result-object v21

    #@109
    move-object/from16 v0, v18

    #@10b
    move-object/from16 v1, v21

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    .line 326
    :cond_2
    iget v0, v13, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@112
    move/from16 v21, v0

    #@114
    if-lez v21, :cond_3

    #@116
    .line 327
    const-string/jumbo v21, ",ipfail="

    #@119
    move-object/from16 v0, v18

    #@11b
    move-object/from16 v1, v21

    #@11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    .line 328
    iget v0, v13, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@122
    move/from16 v21, v0

    #@124
    move-object/from16 v0, v18

    #@126
    move/from16 v1, v21

    #@128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    .line 330
    :cond_3
    const-string/jumbo v21, "} "

    #@12e
    move-object/from16 v0, v18

    #@130
    move-object/from16 v1, v21

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    goto/16 :goto_0

    #@137
    .line 332
    .end local v2    # "ageDay":J
    .end local v4    # "ageHour":J
    .end local v6    # "ageMilli":J
    .end local v8    # "ageMin":J
    .end local v10    # "ageSec":J
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    .end local v14    # "milli":J
    .end local v19    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    const/16 v21, 0xa

    #@139
    move-object/from16 v0, v18

    #@13b
    move/from16 v1, v21

    #@13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@140
    .line 335
    .end local v20    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v21

    #@144
    return-object v21
.end method

.method public trim(I)V
    .locals 6
    .param p1, "num"    # I

    #@0
    .prologue
    .line 107
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@5
    move-result v0

    #@6
    .line 108
    .local v0, "currentSize":I
    if-gt v0, p1, :cond_0

    #@8
    .line 109
    return-void

    #@9
    .line 111
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@b
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v4

    #@11
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@14
    .line 112
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 114
    new-instance v4, Lcom/android/server/wifi/ScanDetailCache$1;

    #@1c
    invoke-direct {v4, p0}, Lcom/android/server/wifi/ScanDetailCache$1;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    #@1f
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@22
    .line 128
    :cond_1
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    sub-int v4, v0, p1

    #@25
    if-ge v1, v4, :cond_2

    #@27
    .line 130
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    #@2d
    .line 131
    .local v3, "result":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2f
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 132
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    #@38
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 128
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 106
    .end local v3    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_2
    return-void
.end method

.method values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
