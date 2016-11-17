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
.method public constructor <init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
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
    .line 78
    .local p3, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@7
    .line 80
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@9
    .line 81
    iput-object p2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    .line 82
    iput-object p3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@d
    .line 83
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@f
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@11
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@13
    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 14
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "seen"    # J

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const-wide/16 v2, 0x0

    #@5
    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@7
    .line 67
    const/4 v2, 0x0

    #@8
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a
    .line 68
    new-instance v2, Landroid/net/wifi/ScanResult;

    #@c
    const-wide/16 v5, 0x0

    #@e
    const/4 v7, -0x1

    #@f
    const/4 v8, 0x0

    #@10
    move-object v3, p1

    #@11
    move-object/from16 v4, p2

    #@13
    move-object/from16 v9, p3

    #@15
    move/from16 v10, p4

    #@17
    move/from16 v11, p5

    #@19
    move-wide/from16 v12, p6

    #@1b
    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    #@1e
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@20
    .line 69
    move-wide/from16 v0, p8

    #@22
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@24
    .line 71
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@26
    const/4 v3, 0x0

    #@27
    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@29
    .line 72
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2b
    const/4 v3, 0x0

    #@2c
    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@2e
    .line 73
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@30
    const/4 v3, 0x0

    #@31
    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@33
    .line 74
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@35
    const-wide/16 v4, 0x0

    #@37
    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->flags:J

    #@39
    .line 75
    const/4 v2, 0x0

    #@3a
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@3c
    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V
    .locals 15
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J
    .param p9, "informationElements"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p10, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const-wide/16 v2, 0x0

    #@5
    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@7
    .line 48
    move-object/from16 v0, p1

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    .line 49
    new-instance v2, Landroid/net/wifi/ScanResult;

    #@d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    #@10
    move-result-wide v5

    #@11
    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@14
    move-result v7

    #@15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getOsuProviders()[B

    #@18
    move-result-object v8

    #@19
    move-object/from16 v3, p2

    #@1b
    move-object/from16 v4, p3

    #@1d
    move-object/from16 v9, p4

    #@1f
    move/from16 v10, p5

    #@21
    move/from16 v11, p6

    #@23
    move-wide/from16 v12, p7

    #@25
    .line 49
    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    #@28
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2a
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2d
    move-result-wide v2

    #@2e
    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@30
    .line 54
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@32
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    #@35
    move-result v3

    #@36
    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@38
    .line 55
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    #@3d
    move-result v3

    #@3e
    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@40
    .line 56
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    #@45
    move-result v3

    #@46
    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@48
    .line 57
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@4a
    move-object/from16 v0, p9

    #@4c
    iput-object v0, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@4e
    .line 58
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@50
    move-object/from16 v0, p10

    #@52
    iput-object v0, v2, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@54
    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_0

    #@5a
    .line 60
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@5c
    const-wide/16 v4, 0x2

    #@5e
    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@61
    .line 62
    :cond_0
    const/4 v2, 0x0

    #@62
    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    #@64
    .line 47
    return-void
.end method


# virtual methods
.method public getBSSIDString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
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

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
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
    .line 153
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public getSeen()J
    .locals 2

    #@0
    .prologue
    .line 186
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@2
    return-wide v0
.end method

.method public propagateANQPInfo(Ljava/util/Map;)V
    .locals 9
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
    const/4 v8, 0x0

    #@1
    .line 125
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 126
    return-void

    #@8
    .line 128
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@10
    .line 130
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@12
    .line 129
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    #@18
    .line 132
    .local v0, "fne":Lcom/android/server/wifi/anqp/HSFriendlyNameElement;
    if-eqz v0, :cond_1

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 137
    :cond_1
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@26
    .line 136
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lcom/android/server/wifi/anqp/VenueNameElement;

    #@2c
    .line 138
    .local v2, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    if-eqz v2, :cond_2

    #@2e
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_5

    #@38
    .line 143
    .end local v2    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@3a
    .line 142
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Lcom/android/server/wifi/anqp/RawByteElement;

    #@40
    .line 144
    .local v1, "osuProviders":Lcom/android/server/wifi/anqp/RawByteElement;
    if-eqz v1, :cond_3

    #@42
    .line 145
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@44
    const/4 v4, 0x1

    #@45
    new-array v4, v4, [Landroid/net/wifi/AnqpInformationElement;

    #@47
    iput-object v4, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@49
    .line 146
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@4b
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@4d
    .line 147
    new-instance v4, Landroid/net/wifi/AnqpInformationElement;

    #@4f
    .line 148
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/RawByteElement;->getPayload()[B

    #@52
    move-result-object v5

    #@53
    .line 147
    const v6, 0x506f9a

    #@56
    .line 148
    const/16 v7, 0x8

    #@58
    .line 147
    invoke-direct {v4, v6, v7, v5}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    #@5b
    .line 146
    aput-object v4, v3, v8

    #@5d
    .line 124
    :cond_3
    return-void

    #@5e
    .line 133
    .end local v1    # "osuProviders":Lcom/android/server/wifi/anqp/RawByteElement;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@60
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    #@63
    move-result-object v3

    #@64
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Lcom/android/server/wifi/anqp/I18Name;

    #@6a
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    iput-object v3, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@70
    goto :goto_0

    #@71
    .line 139
    .restart local v2    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@73
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    #@76
    move-result-object v3

    #@77
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v3

    #@7b
    check-cast v3, Lcom/android/server/wifi/anqp/I18Name;

    #@7d
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    iput-object v3, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@83
    goto :goto_0
.end method

.method public setSeen()J
    .locals 4

    #@0
    .prologue
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@6
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@8
    iget-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@a
    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    #@c
    .line 195
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@e
    return-wide v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    .line 173
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v0, :cond_0

    #@4
    .line 174
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 176
    :cond_0
    const-string/jumbo v1, "\'%s\':%012x"

    #@c
    const/4 v2, 0x2

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    .line 177
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@11
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@13
    const/4 v4, 0x0

    #@14
    aput-object v3, v2, v4

    #@16
    .line 178
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
    .line 176
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
    .line 201
    :try_start_0
    const-string/jumbo v1, "\'%s\'/%012x"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    .line 202
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@a
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v3, v2, v4

    #@f
    .line 203
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
    .line 201
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 204
    :catch_0
    move-exception v0

    #@24
    .line 205
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
    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@2
    iput p2, v0, Landroid/net/wifi/ScanResult;->level:I

    #@4
    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@6
    iput-object p3, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@8
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@a
    iput-object p4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@c
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@e
    iput-object p5, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@10
    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@12
    iput p6, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@14
    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@16
    iput-wide p7, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@18
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    #@1e
    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@20
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    #@23
    move-result v1

    #@24
    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@26
    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@28
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    #@2b
    move-result v1

    #@2c
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@2e
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@30
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    #@33
    move-result v1

    #@34
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@36
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@3e
    const-wide/16 v2, 0x2

    #@40
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@43
    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    #@4b
    const-wide/16 v2, 0x1

    #@4d
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    #@50
    .line 98
    :cond_1
    return-void
.end method
