.class public Lcom/android/server/wifi/hotspot2/NetworkDetail;
.super Ljava/lang/Object;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;,
        Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NetworkDetail:"

.field private static final VDBG:Z


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnqpDomainID:I

.field private final mAnqpOICount:I

.field private final mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field private final mBSSID:J

.field private final mCapacity:I

.field private final mCenterfreq0:I

.field private final mCenterfreq1:I

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private mDtimInterval:I

.field private final mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

.field private final mHESSID:J

.field private final mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field private final mInternet:Z

.field private final mIsHiddenSsid:Z

.field private final mMaxRate:I

.field private final mPrimaryFreq:I

.field private final mRoamingConsortiums:[J

.field private final mSSID:Ljava/lang/String;

.field private final mStationCount:I

.field private final mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

.field private final mWifiMode:I


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@6
    .line 333
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@a
    .line 334
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    #@c
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    #@e
    .line 335
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@10
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@12
    .line 336
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@14
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@16
    .line 337
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@18
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@1a
    .line 338
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@1c
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@1e
    .line 339
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@20
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@22
    .line 340
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@24
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@26
    .line 341
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@28
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@2a
    .line 342
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2c
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2e
    .line 343
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@30
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@32
    .line 344
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@34
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@36
    .line 345
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@38
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@3a
    .line 346
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@3c
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@3e
    .line 347
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@40
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@42
    .line 349
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@44
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@46
    invoke-direct {v0, v1}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V

    #@49
    .line 348
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@4b
    .line 350
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@4d
    .line 351
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@4f
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@51
    .line 352
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@53
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@55
    .line 353
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@57
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@59
    .line 354
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@5b
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@5d
    .line 355
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@5f
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@61
    .line 356
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@63
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@65
    .line 357
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@67
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@69
    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    .locals 32
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "infoElements"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .param p4, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p3, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    const/16 v27, -0x1

    #@5
    move/from16 v0, v27

    #@7
    move-object/from16 v1, p0

    #@9
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@b
    .line 129
    if-nez p2, :cond_0

    #@d
    .line 130
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v28, "Null information elements"

    #@12
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v27

    #@16
    .line 133
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@19
    move-result-wide v28

    #@1a
    move-wide/from16 v0, v28

    #@1c
    move-object/from16 v2, p0

    #@1e
    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@20
    .line 135
    const/16 v21, 0x0

    #@22
    .line 136
    .local v21, "ssid":Ljava/lang/String;
    const/16 v17, 0x0

    #@24
    .line 137
    .local v17, "isHiddenSsid":Z
    const/16 v22, 0x0

    #@26
    .line 139
    .local v22, "ssidOctets":[B
    new-instance v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;

    #@28
    invoke-direct {v4}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;-><init>()V

    #@2b
    .line 142
    .local v4, "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    new-instance v16, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;

    #@2d
    invoke-direct/range {v16 .. v16}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;-><init>()V

    #@30
    .line 145
    .local v16, "interworking":Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    new-instance v20, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    #@32
    invoke-direct/range {v20 .. v20}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;-><init>()V

    #@35
    .line 147
    .local v20, "roamingConsortium":Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    new-instance v26, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    #@37
    invoke-direct/range {v26 .. v26}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;-><init>()V

    #@3a
    .line 149
    .local v26, "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    new-instance v13, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;

    #@3c
    invoke-direct {v13}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;-><init>()V

    #@3f
    .line 151
    .local v13, "htOperation":Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
    new-instance v25, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;

    #@41
    invoke-direct/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;-><init>()V

    #@44
    .line 154
    .local v25, "vhtOperation":Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
    new-instance v11, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@46
    invoke-direct {v11}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>()V

    #@49
    .line 157
    .local v11, "extendedCapabilities":Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
    new-instance v24, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;

    #@4b
    invoke-direct/range {v24 .. v24}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;-><init>()V

    #@4e
    .line 160
    .local v24, "trafficIndicationMap":Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
    new-instance v23, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    #@50
    invoke-direct/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    #@53
    .line 162
    .local v23, "supportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    new-instance v12, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    #@55
    invoke-direct {v12}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    #@58
    .line 164
    .local v12, "extendedSupportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    const/4 v10, 0x0

    #@59
    .line 166
    .local v10, "exception":Ljava/lang/RuntimeException;
    new-instance v15, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5e
    .line 168
    .local v15, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    #@60
    :try_start_0
    move-object/from16 v0, p2

    #@62
    array-length v0, v0

    #@63
    move/from16 v28, v0

    #@65
    .end local v22    # "ssidOctets":[B
    :goto_0
    move/from16 v0, v27

    #@67
    move/from16 v1, v28

    #@69
    if-ge v0, v1, :cond_2

    #@6b
    aget-object v14, p2, v27

    #@6d
    .line 169
    .local v14, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v0, v14, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@6f
    move/from16 v29, v0

    #@71
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v29

    #@75
    move-object/from16 v0, v29

    #@77
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    .line 170
    iget v0, v14, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@7c
    move/from16 v29, v0

    #@7e
    sparse-switch v29, :sswitch_data_0

    #@81
    .line 168
    :goto_1
    add-int/lit8 v27, v27, 0x1

    #@83
    goto :goto_0

    #@84
    .line 172
    :sswitch_0
    iget-object v0, v14, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@86
    move-object/from16 v22, v0

    #@88
    .local v22, "ssidOctets":[B
    goto :goto_1

    #@89
    .line 175
    .end local v22    # "ssidOctets":[B
    :sswitch_1
    invoke-virtual {v4, v14}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    goto :goto_1

    #@8d
    .line 209
    .end local v14    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :catch_0
    move-exception v9

    #@8e
    .line 210
    .local v9, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    #@91
    move-result-object v27

    #@92
    invoke-static/range {v27 .. v27}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@95
    move-result-object v27

    #@96
    new-instance v28, Ljava/lang/StringBuilder;

    #@98
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v29, "Caught "

    #@9e
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v28

    #@a2
    move-object/from16 v0, v28

    #@a4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v28

    #@a8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v28

    #@ac
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 211
    if-nez v22, :cond_1

    #@b1
    .line 212
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@b3
    const-string/jumbo v28, "Malformed IE string (no SSID)"

    #@b6
    move-object/from16 v0, v27

    #@b8
    move-object/from16 v1, v28

    #@ba
    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bd
    throw v27

    #@be
    .line 178
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v14    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :sswitch_2
    :try_start_1
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@c1
    goto :goto_1

    #@c2
    .line 181
    :sswitch_3
    move-object/from16 v0, v25

    #@c4
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@c7
    goto :goto_1

    #@c8
    .line 184
    :sswitch_4
    move-object/from16 v0, v16

    #@ca
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@cd
    goto :goto_1

    #@ce
    .line 187
    :sswitch_5
    move-object/from16 v0, v20

    #@d0
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@d3
    goto :goto_1

    #@d4
    .line 190
    :sswitch_6
    move-object/from16 v0, v26

    #@d6
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@d9
    goto :goto_1

    #@da
    .line 193
    :sswitch_7
    invoke-virtual {v11, v14}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@dd
    goto :goto_1

    #@de
    .line 196
    :sswitch_8
    move-object/from16 v0, v24

    #@e0
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@e3
    goto :goto_1

    #@e4
    .line 199
    :sswitch_9
    move-object/from16 v0, v23

    #@e6
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@e9
    goto :goto_1

    #@ea
    .line 202
    :sswitch_a
    invoke-virtual {v12, v14}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@ed
    goto :goto_1

    #@ee
    .line 214
    .end local v14    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    :cond_1
    move-object v10, v9

    #@ef
    .line 216
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "exception":Ljava/lang/RuntimeException;
    :cond_2
    if-eqz v22, :cond_5

    #@f1
    .line 225
    sget-object v27, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f3
    invoke-virtual/range {v27 .. v27}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@f6
    move-result-object v8

    #@f7
    .line 227
    .local v8, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_2
    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@fa
    move-result-object v27

    #@fb
    move-object/from16 v0, v27

    #@fd
    invoke-virtual {v8, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@100
    move-result-object v7

    #@101
    .line 228
    .local v7, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@104
    move-result-object v21

    #@105
    .line 234
    .end local v7    # "decoded":Ljava/nio/CharBuffer;
    .end local v21    # "ssid":Ljava/lang/String;
    :goto_2
    if-nez v21, :cond_4

    #@107
    .line 235
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    #@10a
    move-result v27

    #@10b
    if-eqz v27, :cond_3

    #@10d
    if-eqz v10, :cond_3

    #@10f
    .line 236
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@111
    const-string/jumbo v28, "Failed to decode SSID in dubious IE string"

    #@114
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@117
    throw v27

    #@118
    .line 230
    .restart local v21    # "ssid":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@119
    .line 231
    .local v6, "cce":Ljava/nio/charset/CharacterCodingException;
    const/16 v21, 0x0

    #@11b
    goto :goto_2

    #@11c
    .line 239
    .end local v6    # "cce":Ljava/nio/charset/CharacterCodingException;
    .end local v21    # "ssid":Ljava/lang/String;
    :cond_3
    new-instance v21, Ljava/lang/String;

    #@11e
    sget-object v27, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@120
    move-object/from16 v0, v21

    #@122
    move-object/from16 v1, v22

    #@124
    move-object/from16 v2, v27

    #@126
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@129
    .line 242
    :cond_4
    const/16 v17, 0x1

    #@12b
    .line 243
    const/16 v27, 0x0

    #@12d
    move-object/from16 v0, v22

    #@12f
    array-length v0, v0

    #@130
    move/from16 v28, v0

    #@132
    :goto_3
    move/from16 v0, v27

    #@134
    move/from16 v1, v28

    #@136
    if-ge v0, v1, :cond_5

    #@138
    aget-byte v5, v22, v27

    #@13a
    .line 244
    .local v5, "byteVal":B
    if-eqz v5, :cond_9

    #@13c
    .line 245
    const/16 v17, 0x0

    #@13e
    .line 251
    .end local v5    # "byteVal":B
    .end local v8    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_5
    move-object/from16 v0, v21

    #@140
    move-object/from16 v1, p0

    #@142
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@144
    .line 252
    move-object/from16 v0, v16

    #@146
    iget-wide v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    #@148
    move-wide/from16 v28, v0

    #@14a
    move-wide/from16 v0, v28

    #@14c
    move-object/from16 v2, p0

    #@14e
    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@150
    .line 253
    move/from16 v0, v17

    #@152
    move-object/from16 v1, p0

    #@154
    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    #@156
    .line 254
    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->stationCount:I

    #@158
    move/from16 v27, v0

    #@15a
    move/from16 v0, v27

    #@15c
    move-object/from16 v1, p0

    #@15e
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@160
    .line 255
    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->channelUtilization:I

    #@162
    move/from16 v27, v0

    #@164
    move/from16 v0, v27

    #@166
    move-object/from16 v1, p0

    #@168
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@16a
    .line 256
    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->capacity:I

    #@16c
    move/from16 v27, v0

    #@16e
    move/from16 v0, v27

    #@170
    move-object/from16 v1, p0

    #@172
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@174
    .line 257
    move-object/from16 v0, v16

    #@176
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@178
    move-object/from16 v27, v0

    #@17a
    move-object/from16 v0, v27

    #@17c
    move-object/from16 v1, p0

    #@17e
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@180
    .line 258
    move-object/from16 v0, v16

    #@182
    iget-boolean v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    #@184
    move/from16 v27, v0

    #@186
    move/from16 v0, v27

    #@188
    move-object/from16 v1, p0

    #@18a
    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@18c
    .line 259
    move-object/from16 v0, v16

    #@18e
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@190
    move-object/from16 v27, v0

    #@192
    move-object/from16 v0, v27

    #@194
    move-object/from16 v1, p0

    #@196
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@198
    .line 260
    move-object/from16 v0, v16

    #@19a
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@19c
    move-object/from16 v27, v0

    #@19e
    move-object/from16 v0, v27

    #@1a0
    move-object/from16 v1, p0

    #@1a2
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@1a4
    .line 261
    move-object/from16 v0, v26

    #@1a6
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@1a8
    move-object/from16 v27, v0

    #@1aa
    move-object/from16 v0, v27

    #@1ac
    move-object/from16 v1, p0

    #@1ae
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@1b0
    .line 262
    move-object/from16 v0, v26

    #@1b2
    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    #@1b4
    move/from16 v27, v0

    #@1b6
    move/from16 v0, v27

    #@1b8
    move-object/from16 v1, p0

    #@1ba
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@1bc
    .line 263
    move-object/from16 v0, v20

    #@1be
    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    #@1c0
    move/from16 v27, v0

    #@1c2
    move/from16 v0, v27

    #@1c4
    move-object/from16 v1, p0

    #@1c6
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@1c8
    .line 264
    move-object/from16 v0, v20

    #@1ca
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@1cc
    move-object/from16 v27, v0

    #@1ce
    move-object/from16 v0, v27

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@1d4
    .line 265
    move-object/from16 v0, p0

    #@1d6
    iput-object v11, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@1d8
    .line 266
    invoke-static/range {p3 .. p3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseANQPLines(Ljava/util/List;)Ljava/util/Map;

    #@1db
    move-result-object v27

    #@1dc
    move-object/from16 v0, v27

    #@1de
    move-object/from16 v1, p0

    #@1e0
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@1e2
    .line 268
    move/from16 v0, p4

    #@1e4
    move-object/from16 v1, p0

    #@1e6
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@1e8
    .line 270
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    #@1eb
    move-result v27

    #@1ec
    if-eqz v27, :cond_a

    #@1ee
    .line 272
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getChannelWidth()I

    #@1f1
    move-result v27

    #@1f2
    move/from16 v0, v27

    #@1f4
    move-object/from16 v1, p0

    #@1f6
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@1f8
    .line 273
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq0()I

    #@1fb
    move-result v27

    #@1fc
    move/from16 v0, v27

    #@1fe
    move-object/from16 v1, p0

    #@200
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@202
    .line 274
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq1()I

    #@205
    move-result v27

    #@206
    move/from16 v0, v27

    #@208
    move-object/from16 v1, p0

    #@20a
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@20c
    .line 282
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->isValid()Z

    #@20f
    move-result v27

    #@210
    if-eqz v27, :cond_6

    #@212
    .line 283
    move-object/from16 v0, v24

    #@214
    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    #@216
    move/from16 v27, v0

    #@218
    move/from16 v0, v27

    #@21a
    move-object/from16 v1, p0

    #@21c
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@21e
    .line 286
    :cond_6
    const/16 v18, 0x0

    #@220
    .line 287
    .local v18, "maxRateA":I
    const/16 v19, 0x0

    #@222
    .line 289
    .local v19, "maxRateB":I
    invoke-virtual {v12}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    #@225
    move-result v27

    #@226
    if-eqz v27, :cond_7

    #@228
    .line 291
    iget-object v0, v12, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@22a
    move-object/from16 v27, v0

    #@22c
    iget-object v0, v12, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@22e
    move-object/from16 v28, v0

    #@230
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@233
    move-result v28

    #@234
    add-int/lit8 v28, v28, -0x1

    #@236
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@239
    move-result-object v27

    #@23a
    check-cast v27, Ljava/lang/Integer;

    #@23c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    #@23f
    move-result v19

    #@240
    .line 294
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    #@243
    move-result v27

    #@244
    if-eqz v27, :cond_b

    #@246
    .line 295
    move-object/from16 v0, v23

    #@248
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@24a
    move-object/from16 v27, v0

    #@24c
    move-object/from16 v0, v23

    #@24e
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@250
    move-object/from16 v28, v0

    #@252
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@255
    move-result v28

    #@256
    add-int/lit8 v28, v28, -0x1

    #@258
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25b
    move-result-object v27

    #@25c
    check-cast v27, Ljava/lang/Integer;

    #@25e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    #@261
    move-result v18

    #@262
    .line 296
    move/from16 v0, v18

    #@264
    move/from16 v1, v19

    #@266
    if-le v0, v1, :cond_8

    #@268
    move/from16 v19, v18

    #@26a
    .end local v19    # "maxRateB":I
    :cond_8
    move/from16 v0, v19

    #@26c
    move-object/from16 v1, p0

    #@26e
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@270
    .line 297
    move-object/from16 v0, p0

    #@272
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@274
    move/from16 v27, v0

    #@276
    move-object/from16 v0, p0

    #@278
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@27a
    move/from16 v28, v0

    #@27c
    .line 298
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    #@27f
    move-result v29

    #@280
    .line 299
    const/16 v30, 0x3d

    #@282
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@285
    move-result-object v30

    #@286
    move-object/from16 v0, v30

    #@288
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@28b
    move-result v30

    #@28c
    .line 300
    const/16 v31, 0x2a

    #@28e
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@291
    move-result-object v31

    #@292
    move-object/from16 v0, v31

    #@294
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@297
    move-result v31

    #@298
    .line 297
    invoke-static/range {v27 .. v31}, Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;->determineMode(IIZZZ)I

    #@29b
    move-result v27

    #@29c
    move/from16 v0, v27

    #@29e
    move-object/from16 v1, p0

    #@2a0
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@2a2
    .line 128
    :goto_5
    return-void

    #@2a3
    .line 243
    .end local v18    # "maxRateA":I
    .restart local v5    # "byteVal":B
    .restart local v8    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_9
    add-int/lit8 v27, v27, 0x1

    #@2a5
    goto/16 :goto_3

    #@2a7
    .line 276
    .end local v5    # "byteVal":B
    .end local v8    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_a
    invoke-virtual {v13}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getChannelWidth()I

    #@2aa
    move-result v27

    #@2ab
    move/from16 v0, v27

    #@2ad
    move-object/from16 v1, p0

    #@2af
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@2b1
    .line 277
    move-object/from16 v0, p0

    #@2b3
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@2b5
    move/from16 v27, v0

    #@2b7
    move/from16 v0, v27

    #@2b9
    invoke-virtual {v13, v0}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getCenterFreq0(I)I

    #@2bc
    move-result v27

    #@2bd
    move/from16 v0, v27

    #@2bf
    move-object/from16 v1, p0

    #@2c1
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@2c3
    .line 278
    const/16 v27, 0x0

    #@2c5
    move/from16 v0, v27

    #@2c7
    move-object/from16 v1, p0

    #@2c9
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@2cb
    goto/16 :goto_4

    #@2cd
    .line 302
    .restart local v18    # "maxRateA":I
    .restart local v19    # "maxRateB":I
    :cond_b
    const/16 v27, 0x0

    #@2cf
    move/from16 v0, v27

    #@2d1
    move-object/from16 v1, p0

    #@2d3
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@2d5
    .line 303
    const/16 v27, 0x0

    #@2d7
    move/from16 v0, v27

    #@2d9
    move-object/from16 v1, p0

    #@2db
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@2dd
    .line 304
    const-string/jumbo v27, "WifiMode"

    #@2e0
    new-instance v28, Ljava/lang/StringBuilder;

    #@2e2
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@2e9
    move-object/from16 v29, v0

    #@2eb
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v28

    #@2ef
    const-string/jumbo v29, ", Invalid SupportedRates!!!"

    #@2f2
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v28

    #@2f6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v28

    #@2fa
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2fd
    goto :goto_5

    #@2fe
    .line 170
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_9
        0x5 -> :sswitch_8
        0xb -> :sswitch_1
        0x32 -> :sswitch_a
        0x3d -> :sswitch_2
        0x6b -> :sswitch_4
        0x6f -> :sswitch_5
        0x7f -> :sswitch_7
        0xc0 -> :sswitch_3
        0xdd -> :sswitch_6
    .end sparse-switch
.end method

.method private static getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "plLength"    # I

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v0

    #@c
    .line 327
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v1

    #@10
    add-int/2addr v1, p1

    #@11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@14
    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@17
    move-result v1

    #@18
    add-int/2addr v1, p1

    #@19
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 329
    return-object v0
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 12
    .param p0, "mac"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 556
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@7
    .line 557
    .local v0, "first":Z
    const/4 v1, 0x5

    #@8
    .local v1, "n":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 558
    if-eqz v0, :cond_0

    #@c
    .line 559
    const/4 v0, 0x0

    #@d
    .line 563
    :goto_1
    const-string/jumbo v3, "%02x"

    #@10
    const/4 v4, 0x1

    #@11
    new-array v4, v4, [Ljava/lang/Object;

    #@13
    mul-int/lit8 v5, v1, 0x8

    #@15
    ushr-long v6, p0, v5

    #@17
    const-wide/16 v8, 0xff

    #@19
    and-long/2addr v6, v8

    #@1a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d
    move-result-object v5

    #@1e
    aput-object v5, v4, v10

    #@20
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 557
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 561
    :cond_0
    const/16 v3, 0x3a

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_1

    #@30
    .line 565
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    return-object v3
.end method


# virtual methods
.method public complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;"
        }
    .end annotation

    #@0
    .prologue
    .line 361
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 493
    if-ne p0, p1, :cond_0

    #@4
    .line 494
    return v1

    #@5
    .line 496
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 497
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 500
    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@15
    .line 502
    .local v0, "that":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@26
    move-result-wide v4

    #@27
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@2a
    move-result-wide v6

    #@2b
    cmp-long v3, v4, v6

    #@2d
    if-nez v3, :cond_3

    #@2f
    :goto_0
    return v1

    #@30
    :cond_3
    move v1, v2

    #@31
    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    #@0
    .prologue
    .line 436
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@2
    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    #@0
    .prologue
    .line 448
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@2
    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    #@0
    .prologue
    .line 396
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@2
    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 529
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    #@0
    .prologue
    .line 408
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@2
    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    #@0
    .prologue
    .line 468
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@2
    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    #@0
    .prologue
    .line 472
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@2
    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    #@0
    .prologue
    .line 404
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@2
    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    #@0
    .prologue
    .line 464
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@2
    return v0
.end method

.method public getDtimInterval()I
    .locals 1

    #@0
    .prologue
    .line 480
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@2
    return v0
.end method

.method public getExtendedCapabilities()Ljava/lang/Long;
    .locals 1

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@4
    return-object v0
.end method

.method public getHESSID()J
    .locals 2

    #@0
    .prologue
    .line 392
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@2
    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2
    return-object v0
.end method

.method public getOsuProviders()[B
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 440
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 441
    return-object v1

    #@6
    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@8
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/anqp/ANQPElement;

    #@10
    .line 444
    .local v0, "osuProviders":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    #@12
    check-cast v0, Lcom/android/server/wifi/anqp/RawByteElement;

    #@14
    .end local v0    # "osuProviders":Lcom/android/server/wifi/anqp/ANQPElement;
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/RawByteElement;->getPayload()[B

    #@17
    move-result-object v1

    #@18
    :cond_1
    return-object v1
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@2
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    #@0
    .prologue
    .line 400
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@2
    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 383
    const/4 v0, 0x0

    #@1
    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 384
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 385
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@13
    return-object v1

    #@14
    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 388
    :cond_1
    const-string/jumbo v1, ""

    #@1a
    return-object v1
.end method

.method public getVenueGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2
    return-object v0
.end method

.method public getVenueType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2
    return-object v0
.end method

.method public getWifiMode()I
    .locals 1

    #@0
    .prologue
    .line 476
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@2
    return v0
.end method

.method public has80211uInfo()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 371
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public hasInterworking()Z
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@a
    const/16 v1, 0x20

    #@c
    ushr-long/2addr v2, v1

    #@d
    long-to-int v1, v2

    #@e
    add-int/2addr v0, v1

    #@f
    mul-int/lit8 v0, v0, 0x1f

    #@11
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@13
    long-to-int v1, v2

    #@14
    add-int/2addr v0, v1

    #@15
    return v0
.end method

.method public is80211McResponderSupport()Z
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@2
    iget-boolean v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@4
    return v0
.end method

.method public isBeaconFrame()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 540
    iget v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isHiddenBeaconFrame()Z
    .locals 1

    #@0
    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isBeaconFrame()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isInternet()Z
    .locals 1

    #@0
    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@2
    return v0
.end method

.method public isInterworking()Z
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isSSID_UTF8()Z
    .locals 1

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public queriable(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "queryElements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 365
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 366
    invoke-static {p1}, Lcom/android/server/wifi/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 367
    invoke-static {p1}, Lcom/android/server/wifi/anqp/Constants;->hasR2Elements(Ljava/util/List;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@14
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 365
    :cond_0
    :goto_0
    return v0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 367
    goto :goto_0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    .line 365
    goto :goto_0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 523
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 524
    const-string/jumbo v0, "\'%s\':%012x (%012x)"

    #@e
    const/4 v1, 0x3

    #@f
    new-array v1, v1, [Ljava/lang/Object;

    #@11
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@13
    aput-object v2, v1, v4

    #@15
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v1, v5

    #@1d
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@1f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v2

    #@23
    aput-object v2, v1, v6

    #@25
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 523
    :goto_0
    return-object v0

    #@2a
    .line 525
    :cond_0
    const-string/jumbo v0, "\'%s\':%012x"

    #@2d
    new-array v1, v6, [Ljava/lang/Object;

    #@2f
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@31
    aput-object v2, v1, v4

    #@33
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v2

    #@39
    aput-object v2, v1, v5

    #@3b
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 512
    const-string/jumbo v0, "NetworkInfo{SSID=\'%s\', HESSID=%x, BSSID=%x, StationCount=%d, ChannelUtilization=%d, Capacity=%d, Ant=%s, Internet=%s, VenueGroup=%s, VenueType=%s, HSRelease=%s, AnqpDomainID=%d, AnqpOICount=%d, RoamingConsortiums=%s}"

    #@3
    const/16 v1, 0xe

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 516
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x1

    #@13
    aput-object v2, v1, v3

    #@15
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v2

    #@1b
    const/4 v3, 0x2

    #@1c
    aput-object v2, v1, v3

    #@1e
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x3

    #@25
    aput-object v2, v1, v3

    #@27
    .line 517
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v2

    #@2d
    const/4 v3, 0x4

    #@2e
    aput-object v2, v1, v3

    #@30
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v2

    #@36
    const/4 v3, 0x5

    #@37
    aput-object v2, v1, v3

    #@39
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@3b
    const/4 v3, 0x6

    #@3c
    aput-object v2, v1, v3

    #@3e
    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@43
    move-result-object v2

    #@44
    const/4 v3, 0x7

    #@45
    aput-object v2, v1, v3

    #@47
    .line 518
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@49
    const/16 v3, 0x8

    #@4b
    aput-object v2, v1, v3

    #@4d
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@4f
    const/16 v3, 0x9

    #@51
    aput-object v2, v1, v3

    #@53
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@55
    const/16 v3, 0xa

    #@57
    aput-object v2, v1, v3

    #@59
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@5b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v2

    #@5f
    const/16 v3, 0xb

    #@61
    aput-object v2, v1, v3

    #@63
    .line 519
    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v2

    #@69
    const/16 v3, 0xc

    #@6b
    aput-object v2, v1, v3

    #@6d
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@6f
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString([J)Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    const/16 v3, 0xd

    #@75
    aput-object v2, v1, v3

    #@77
    .line 512
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    return-object v0
.end method
