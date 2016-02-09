.class public Lcom/android/server/wifi/ScanDetail;
.super Ljava/lang/Object;
.source "ScanDetail.java"


# instance fields
.field private final mMatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J


# direct methods
.method private constructor <init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p3, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@7
    .line 55
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@9
    .line 56
    iput-object p2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    .line 57
    iput-object p3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@d
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 10
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "seen"    # J

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    const-wide/16 v2, 0x0

    #@5
    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@7
    .line 42
    const/4 v2, 0x0

    #@8
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a
    .line 43
    new-instance v2, Landroid/net/wifi/ScanResult;

    #@c
    move-object v3, p1

    #@d
    move-object v4, p2

    #@e
    move-object v5, p3

    #@f
    move v6, p4

    #@10
    move v7, p5

    #@11
    move-wide/from16 v8, p6

    #@13
    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    #@16
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@18
    .line 44
    move-wide/from16 v0, p8

    #@1a
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@1c
    .line 46
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@1e
    const/4 v3, 0x0

    #@1f
    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@21
    .line 47
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@23
    const/4 v3, 0x0

    #@24
    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@26
    .line 48
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@28
    const/4 v3, 0x0

    #@29
    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@2b
    .line 49
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2d
    const-wide/16 v4, 0x0

    #@2f
    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->flags:J

    #@31
    .line 50
    const/4 v2, 0x0

    #@32
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@34
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@7
    .line 28
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@9
    .line 29
    new-instance v0, Landroid/net/wifi/ScanResult;

    #@b
    move-object v1, p2

    #@c
    move-object v2, p3

    #@d
    move-object v3, p4

    #@e
    move v4, p5

    #@f
    move v5, p6

    #@10
    move-wide/from16 v6, p7

    #@12
    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@17
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@1d
    .line 32
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@1f
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    #@22
    move-result v1

    #@23
    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@25
    .line 33
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@27
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    #@2a
    move-result v1

    #@2b
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@2d
    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2f
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    #@32
    move-result v1

    #@33
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@35
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_0

    #@3b
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@3d
    const-wide/16 v2, 0x2

    #@3f
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@42
    .line 37
    :cond_0
    const/4 v0, 0x0

    #@43
    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@45
    .line 27
    return-void
.end method


# virtual methods
.method public getBSSIDString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@6
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getMatchList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 136
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 137
    :cond_0
    return-object v4

    #@e
    .line 140
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 141
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;>;"
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@15
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/util/Map$Entry;

    #@29
    .line 142
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v5, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    #@2b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@37
    invoke-direct {v5, v3, p0, v4}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;-><init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@3a
    goto :goto_0

    #@3b
    .line 144
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    return-object v2
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@6
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getScanResult()Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public getSeen()J
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@2
    return-wide v0
.end method

.method public propagateANQPInfo(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v4, 0x0

    #@1
    .line 81
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 82
    return-void

    #@8
    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@10
    .line 86
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@12
    .line 85
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    #@18
    .line 88
    .local v0, "fne":Lcom/android/server/wifi/anqp/HSFriendlyNameElement;
    if-eqz v0, :cond_1

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 92
    :cond_1
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/wifi/anqp/VenueNameElement;

    #@2c
    .line 93
    .local v1, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    if-eqz v1, :cond_2

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    #@31
    move-result-object v2

    #@32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 80
    .end local v1    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_2
    :goto_0
    return-void

    #@39
    .line 89
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@3b
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Lcom/android/server/wifi/anqp/I18Name;

    #@45
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    iput-object v2, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@4b
    goto :goto_0

    #@4c
    .line 94
    .restart local v1    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@4e
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    #@51
    move-result-object v2

    #@52
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Lcom/android/server/wifi/anqp/I18Name;

    #@58
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@5e
    goto :goto_0
.end method

.method public setSeen()J
    .locals 4

    #@0
    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@6
    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@8
    iget-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@a
    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@c
    .line 132
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@e
    return-wide v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    .line 117
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v0, :cond_0

    #@4
    .line 118
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 121
    :cond_0
    const-string/jumbo v1, "\'%s\':%012x"

    #@c
    const/4 v2, 0x2

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@11
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@13
    const/4 v4, 0x0

    #@14
    aput-object v3, v2, v4

    #@16
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@18
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1a
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@1d
    move-result-wide v4

    #@1e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x1

    #@23
    aput-object v3, v2, v4

    #@25
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 150
    :try_start_0
    const-string/jumbo v1, "\'%s\'/%012x"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    .line 151
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@a
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v3, v2, v4

    #@f
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@11
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@13
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@16
    move-result-wide v4

    #@17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v3

    #@1b
    const/4 v4, 0x1

    #@1c
    aput-object v3, v2, v4

    #@1e
    .line 150
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 153
    :catch_0
    move-exception v0

    #@24
    .line 154
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "\'%s\'/----"

    #@27
    new-array v2, v7, [Ljava/lang/Object;

    #@29
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2b
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@2d
    aput-object v3, v2, v6

    #@2f
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1
.end method

.method public updateResults(Lcom/android/server/wifi/hotspot2/NetworkDetail;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "level"    # I
    .param p3, "wssid"    # Landroid/net/wifi/WifiSsid;
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "flags"    # Ljava/lang/String;
    .param p6, "freq"    # I
    .param p7, "tsf"    # J

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2
    iput p2, v0, Landroid/net/wifi/ScanResult;->level:I

    #@4
    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@6
    iput-object p3, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@8
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@a
    iput-object p4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@c
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@e
    iput-object p5, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@10
    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@12
    iput p6, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@14
    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@16
    iput-wide p7, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@18
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@1e
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@20
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    #@23
    move-result v1

    #@24
    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@26
    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@28
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    #@2b
    move-result v1

    #@2c
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@2e
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@30
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    #@33
    move-result v1

    #@34
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@36
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@3e
    const-wide/16 v2, 0x2

    #@40
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@43
    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@4b
    const-wide/16 v2, 0x1

    #@4d
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@50
    .line 61
    :cond_1
    return-void
.end method
