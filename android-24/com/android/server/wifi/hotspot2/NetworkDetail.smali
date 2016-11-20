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
    .line 319
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@6
    .line 320
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@a
    .line 321
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@c
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@e
    .line 322
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@10
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@12
    .line 323
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@14
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@16
    .line 324
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@18
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@1a
    .line 325
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@1c
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@1e
    .line 326
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@22
    .line 327
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@24
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@26
    .line 328
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@28
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2a
    .line 329
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2c
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2e
    .line 330
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@30
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@32
    .line 331
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@34
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@36
    .line 332
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@38
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@3a
    .line 333
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@3c
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@3e
    .line 335
    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@40
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@42
    invoke-direct {v0, v1}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V

    #@45
    .line 334
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@47
    .line 336
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@49
    .line 337
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@4b
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@4d
    .line 338
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@4f
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@51
    .line 339
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@53
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@55
    .line 340
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@57
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@59
    .line 341
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@5b
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@5d
    .line 342
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@5f
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@61
    .line 343
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@63
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@65
    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    .locals 30
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
    .line 125
    .local p3, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    const/16 v25, -0x1

    #@5
    move/from16 v0, v25

    #@7
    move-object/from16 v1, p0

    #@9
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@b
    .line 127
    if-nez p2, :cond_0

    #@d
    .line 128
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v26, "Null information elements"

    #@12
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v25

    #@16
    .line 131
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@19
    move-result-wide v26

    #@1a
    move-wide/from16 v0, v26

    #@1c
    move-object/from16 v2, p0

    #@1e
    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@20
    .line 133
    const/16 v19, 0x0

    #@22
    .line 134
    .local v19, "ssid":Ljava/lang/String;
    const/16 v20, 0x0

    #@24
    .line 136
    .local v20, "ssidOctets":[B
    new-instance v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;

    #@26
    invoke-direct {v4}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;-><init>()V

    #@29
    .line 139
    .local v4, "bssLoad":Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
    new-instance v15, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;

    #@2b
    invoke-direct {v15}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;-><init>()V

    #@2e
    .line 142
    .local v15, "interworking":Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    new-instance v18, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    #@30
    invoke-direct/range {v18 .. v18}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;-><init>()V

    #@33
    .line 144
    .local v18, "roamingConsortium":Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    new-instance v24, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    #@35
    invoke-direct/range {v24 .. v24}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;-><init>()V

    #@38
    .line 146
    .local v24, "vsa":Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    new-instance v12, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;

    #@3a
    invoke-direct {v12}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;-><init>()V

    #@3d
    .line 148
    .local v12, "htOperation":Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
    new-instance v23, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;

    #@3f
    invoke-direct/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;-><init>()V

    #@42
    .line 151
    .local v23, "vhtOperation":Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
    new-instance v10, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@44
    invoke-direct {v10}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>()V

    #@47
    .line 154
    .local v10, "extendedCapabilities":Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
    new-instance v22, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;

    #@49
    invoke-direct/range {v22 .. v22}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;-><init>()V

    #@4c
    .line 157
    .local v22, "trafficIndicationMap":Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
    new-instance v21, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    #@4e
    invoke-direct/range {v21 .. v21}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    #@51
    .line 159
    .local v21, "supportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    new-instance v11, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    #@53
    invoke-direct {v11}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    #@56
    .line 161
    .local v11, "extendedSupportedRates":Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;
    const/4 v9, 0x0

    #@57
    .line 163
    .local v9, "exception":Ljava/lang/RuntimeException;
    new-instance v14, Ljava/util/ArrayList;

    #@59
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@5c
    .line 165
    .local v14, "iesFound":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    #@5e
    :try_start_0
    move-object/from16 v0, p2

    #@60
    array-length v0, v0

    #@61
    move/from16 v26, v0

    #@63
    .end local v20    # "ssidOctets":[B
    :goto_0
    move/from16 v0, v25

    #@65
    move/from16 v1, v26

    #@67
    if-ge v0, v1, :cond_2

    #@69
    aget-object v13, p2, v25

    #@6b
    .line 166
    .local v13, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v0, v13, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@6d
    move/from16 v27, v0

    #@6f
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v27

    #@73
    move-object/from16 v0, v27

    #@75
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@78
    .line 167
    iget v0, v13, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@7a
    move/from16 v27, v0

    #@7c
    sparse-switch v27, :sswitch_data_0

    #@7f
    .line 165
    :goto_1
    add-int/lit8 v25, v25, 0x1

    #@81
    goto :goto_0

    #@82
    .line 169
    :sswitch_0
    iget-object v0, v13, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@84
    move-object/from16 v20, v0

    #@86
    .local v20, "ssidOctets":[B
    goto :goto_1

    #@87
    .line 172
    .end local v20    # "ssidOctets":[B
    :sswitch_1
    invoke-virtual {v4, v13}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    goto :goto_1

    #@8b
    .line 206
    .end local v13    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :catch_0
    move-exception v8

    #@8c
    .line 207
    .local v8, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    #@8f
    move-result-object v25

    #@90
    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@93
    move-result-object v25

    #@94
    new-instance v26, Ljava/lang/StringBuilder;

    #@96
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v27, "Caught "

    #@9c
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v26

    #@a0
    move-object/from16 v0, v26

    #@a2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v26

    #@a6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v26

    #@aa
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 208
    if-nez v20, :cond_1

    #@af
    .line 209
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@b1
    const-string/jumbo v26, "Malformed IE string (no SSID)"

    #@b4
    move-object/from16 v0, v25

    #@b6
    move-object/from16 v1, v26

    #@b8
    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bb
    throw v25

    #@bc
    .line 175
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :sswitch_2
    :try_start_1
    invoke-virtual {v12, v13}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@bf
    goto :goto_1

    #@c0
    .line 178
    :sswitch_3
    move-object/from16 v0, v23

    #@c2
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@c5
    goto :goto_1

    #@c6
    .line 181
    :sswitch_4
    invoke-virtual {v15, v13}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@c9
    goto :goto_1

    #@ca
    .line 184
    :sswitch_5
    move-object/from16 v0, v18

    #@cc
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@cf
    goto :goto_1

    #@d0
    .line 187
    :sswitch_6
    move-object/from16 v0, v24

    #@d2
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@d5
    goto :goto_1

    #@d6
    .line 190
    :sswitch_7
    invoke-virtual {v10, v13}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@d9
    goto :goto_1

    #@da
    .line 193
    :sswitch_8
    move-object/from16 v0, v22

    #@dc
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@df
    goto :goto_1

    #@e0
    .line 196
    :sswitch_9
    move-object/from16 v0, v21

    #@e2
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    #@e5
    goto :goto_1

    #@e6
    .line 199
    :sswitch_a
    invoke-virtual {v11, v13}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@e9
    goto :goto_1

    #@ea
    .line 211
    .end local v13    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    :cond_1
    move-object v9, v8

    #@eb
    .line 213
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "exception":Ljava/lang/RuntimeException;
    :cond_2
    if-eqz v20, :cond_4

    #@ed
    .line 222
    sget-object v25, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@ef
    invoke-virtual/range {v25 .. v25}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@f2
    move-result-object v7

    #@f3
    .line 224
    .local v7, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_2
    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@f6
    move-result-object v25

    #@f7
    move-object/from16 v0, v25

    #@f9
    invoke-virtual {v7, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@fc
    move-result-object v6

    #@fd
    .line 225
    .local v6, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@100
    move-result-object v19

    #@101
    .line 231
    .end local v6    # "decoded":Ljava/nio/CharBuffer;
    .end local v19    # "ssid":Ljava/lang/String;
    :goto_2
    if-nez v19, :cond_4

    #@103
    .line 232
    invoke-virtual {v10}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    #@106
    move-result v25

    #@107
    if-eqz v25, :cond_3

    #@109
    if-eqz v9, :cond_3

    #@10b
    .line 233
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@10d
    const-string/jumbo v26, "Failed to decode SSID in dubious IE string"

    #@110
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@113
    throw v25

    #@114
    .line 227
    .restart local v19    # "ssid":Ljava/lang/String;
    :catch_1
    move-exception v5

    #@115
    .line 228
    .local v5, "cce":Ljava/nio/charset/CharacterCodingException;
    const/16 v19, 0x0

    #@117
    goto :goto_2

    #@118
    .line 236
    .end local v5    # "cce":Ljava/nio/charset/CharacterCodingException;
    .end local v19    # "ssid":Ljava/lang/String;
    :cond_3
    new-instance v19, Ljava/lang/String;

    #@11a
    sget-object v25, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@11c
    move-object/from16 v0, v19

    #@11e
    move-object/from16 v1, v20

    #@120
    move-object/from16 v2, v25

    #@122
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@125
    .line 241
    .end local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_4
    move-object/from16 v0, v19

    #@127
    move-object/from16 v1, p0

    #@129
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@12b
    .line 242
    iget-wide v0, v15, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    #@12d
    move-wide/from16 v26, v0

    #@12f
    move-wide/from16 v0, v26

    #@131
    move-object/from16 v2, p0

    #@133
    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@135
    .line 243
    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->stationCount:I

    #@137
    move/from16 v25, v0

    #@139
    move/from16 v0, v25

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@13f
    .line 244
    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->channelUtilization:I

    #@141
    move/from16 v25, v0

    #@143
    move/from16 v0, v25

    #@145
    move-object/from16 v1, p0

    #@147
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@149
    .line 245
    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->capacity:I

    #@14b
    move/from16 v25, v0

    #@14d
    move/from16 v0, v25

    #@14f
    move-object/from16 v1, p0

    #@151
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@153
    .line 246
    iget-object v0, v15, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@155
    move-object/from16 v25, v0

    #@157
    move-object/from16 v0, v25

    #@159
    move-object/from16 v1, p0

    #@15b
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@15d
    .line 247
    iget-boolean v0, v15, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    #@15f
    move/from16 v25, v0

    #@161
    move/from16 v0, v25

    #@163
    move-object/from16 v1, p0

    #@165
    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@167
    .line 248
    iget-object v0, v15, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@169
    move-object/from16 v25, v0

    #@16b
    move-object/from16 v0, v25

    #@16d
    move-object/from16 v1, p0

    #@16f
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@171
    .line 249
    iget-object v0, v15, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->venueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@173
    move-object/from16 v25, v0

    #@175
    move-object/from16 v0, v25

    #@177
    move-object/from16 v1, p0

    #@179
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@17b
    .line 250
    move-object/from16 v0, v24

    #@17d
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@17f
    move-object/from16 v25, v0

    #@181
    move-object/from16 v0, v25

    #@183
    move-object/from16 v1, p0

    #@185
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@187
    .line 251
    move-object/from16 v0, v24

    #@189
    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    #@18b
    move/from16 v25, v0

    #@18d
    move/from16 v0, v25

    #@18f
    move-object/from16 v1, p0

    #@191
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@193
    .line 252
    move-object/from16 v0, v18

    #@195
    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    #@197
    move/from16 v25, v0

    #@199
    move/from16 v0, v25

    #@19b
    move-object/from16 v1, p0

    #@19d
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@19f
    .line 253
    move-object/from16 v0, v18

    #@1a1
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@1a3
    move-object/from16 v25, v0

    #@1a5
    move-object/from16 v0, v25

    #@1a7
    move-object/from16 v1, p0

    #@1a9
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@1ab
    .line 254
    move-object/from16 v0, p0

    #@1ad
    iput-object v10, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@1af
    .line 255
    invoke-static/range {p3 .. p3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseANQPLines(Ljava/util/List;)Ljava/util/Map;

    #@1b2
    move-result-object v25

    #@1b3
    move-object/from16 v0, v25

    #@1b5
    move-object/from16 v1, p0

    #@1b7
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@1b9
    .line 257
    move/from16 v0, p4

    #@1bb
    move-object/from16 v1, p0

    #@1bd
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@1bf
    .line 259
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    #@1c2
    move-result v25

    #@1c3
    if-eqz v25, :cond_7

    #@1c5
    .line 261
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getChannelWidth()I

    #@1c8
    move-result v25

    #@1c9
    move/from16 v0, v25

    #@1cb
    move-object/from16 v1, p0

    #@1cd
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@1cf
    .line 262
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq0()I

    #@1d2
    move-result v25

    #@1d3
    move/from16 v0, v25

    #@1d5
    move-object/from16 v1, p0

    #@1d7
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@1d9
    .line 263
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq1()I

    #@1dc
    move-result v25

    #@1dd
    move/from16 v0, v25

    #@1df
    move-object/from16 v1, p0

    #@1e1
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@1e3
    .line 271
    :goto_3
    move-object/from16 v0, v22

    #@1e5
    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    #@1e7
    move/from16 v25, v0

    #@1e9
    move/from16 v0, v25

    #@1eb
    move-object/from16 v1, p0

    #@1ed
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@1ef
    .line 273
    const/16 v16, 0x0

    #@1f1
    .line 274
    .local v16, "maxRateA":I
    const/16 v17, 0x0

    #@1f3
    .line 276
    .local v17, "maxRateB":I
    invoke-virtual {v11}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    #@1f6
    move-result v25

    #@1f7
    if-eqz v25, :cond_5

    #@1f9
    .line 278
    iget-object v0, v11, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@1fb
    move-object/from16 v25, v0

    #@1fd
    iget-object v0, v11, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@1ff
    move-object/from16 v26, v0

    #@201
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@204
    move-result v26

    #@205
    add-int/lit8 v26, v26, -0x1

    #@207
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20a
    move-result-object v25

    #@20b
    check-cast v25, Ljava/lang/Integer;

    #@20d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    #@210
    move-result v17

    #@211
    .line 281
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    #@214
    move-result v25

    #@215
    if-eqz v25, :cond_8

    #@217
    .line 282
    move-object/from16 v0, v21

    #@219
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@21b
    move-object/from16 v25, v0

    #@21d
    move-object/from16 v0, v21

    #@21f
    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    #@221
    move-object/from16 v26, v0

    #@223
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@226
    move-result v26

    #@227
    add-int/lit8 v26, v26, -0x1

    #@229
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22c
    move-result-object v25

    #@22d
    check-cast v25, Ljava/lang/Integer;

    #@22f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    #@232
    move-result v16

    #@233
    .line 283
    move/from16 v0, v16

    #@235
    move/from16 v1, v17

    #@237
    if-le v0, v1, :cond_6

    #@239
    move/from16 v17, v16

    #@23b
    .end local v17    # "maxRateB":I
    :cond_6
    move/from16 v0, v17

    #@23d
    move-object/from16 v1, p0

    #@23f
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@241
    .line 284
    move-object/from16 v0, p0

    #@243
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@245
    move/from16 v25, v0

    #@247
    move-object/from16 v0, p0

    #@249
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@24b
    move/from16 v26, v0

    #@24d
    .line 285
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    #@250
    move-result v27

    #@251
    .line 286
    const/16 v28, 0x3d

    #@253
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@256
    move-result-object v28

    #@257
    move-object/from16 v0, v28

    #@259
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@25c
    move-result v28

    #@25d
    .line 287
    const/16 v29, 0x2a

    #@25f
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@262
    move-result-object v29

    #@263
    move-object/from16 v0, v29

    #@265
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@268
    move-result v29

    #@269
    .line 284
    invoke-static/range {v25 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;->determineMode(IIZZZ)I

    #@26c
    move-result v25

    #@26d
    move/from16 v0, v25

    #@26f
    move-object/from16 v1, p0

    #@271
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@273
    .line 126
    :goto_4
    return-void

    #@274
    .line 265
    .end local v16    # "maxRateA":I
    :cond_7
    invoke-virtual {v12}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getChannelWidth()I

    #@277
    move-result v25

    #@278
    move/from16 v0, v25

    #@27a
    move-object/from16 v1, p0

    #@27c
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@27e
    .line 266
    move-object/from16 v0, p0

    #@280
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@282
    move/from16 v25, v0

    #@284
    move/from16 v0, v25

    #@286
    invoke-virtual {v12, v0}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getCenterFreq0(I)I

    #@289
    move-result v25

    #@28a
    move/from16 v0, v25

    #@28c
    move-object/from16 v1, p0

    #@28e
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@290
    .line 267
    const/16 v25, 0x0

    #@292
    move/from16 v0, v25

    #@294
    move-object/from16 v1, p0

    #@296
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@298
    goto/16 :goto_3

    #@29a
    .line 289
    .restart local v16    # "maxRateA":I
    .restart local v17    # "maxRateB":I
    :cond_8
    const/16 v25, 0x0

    #@29c
    move/from16 v0, v25

    #@29e
    move-object/from16 v1, p0

    #@2a0
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    #@2a2
    .line 290
    const/16 v25, 0x0

    #@2a4
    move/from16 v0, v25

    #@2a6
    move-object/from16 v1, p0

    #@2a8
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    #@2aa
    .line 291
    const-string/jumbo v25, "WifiMode"

    #@2ad
    new-instance v26, Ljava/lang/StringBuilder;

    #@2af
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@2b6
    move-object/from16 v27, v0

    #@2b8
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v26

    #@2bc
    const-string/jumbo v27, ", Invalid SupportedRates!!!"

    #@2bf
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v26

    #@2c3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c6
    move-result-object v26

    #@2c7
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2ca
    goto :goto_4

    #@2cb
    .line 167
    nop

    #@2cc
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
    .line 313
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
    .line 314
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v1

    #@10
    add-int/2addr v1, p1

    #@11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@14
    .line 315
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@17
    move-result v1

    #@18
    add-int/2addr v1, p1

    #@19
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 316
    return-object v0
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 12
    .param p0, "mac"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 520
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@7
    .line 521
    .local v0, "first":Z
    const/4 v1, 0x5

    #@8
    .local v1, "n":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 522
    if-eqz v0, :cond_0

    #@c
    .line 523
    const/4 v0, 0x0

    #@d
    .line 527
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
    .line 521
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 525
    :cond_0
    const/16 v3, 0x3a

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_1

    #@30
    .line 529
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
    .line 347
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
    .line 479
    if-ne p0, p1, :cond_0

    #@4
    .line 480
    return v1

    #@5
    .line 482
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
    .line 483
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 486
    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@15
    .line 488
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
    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    #@0
    .prologue
    .line 422
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@2
    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    #@0
    .prologue
    .line 434
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@2
    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    #@0
    .prologue
    .line 382
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@2
    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 515
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
    .line 394
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@2
    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    #@0
    .prologue
    .line 454
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@2
    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    #@0
    .prologue
    .line 458
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@2
    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    #@0
    .prologue
    .line 390
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@2
    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    #@0
    .prologue
    .line 450
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@2
    return v0
.end method

.method public getDtimInterval()I
    .locals 1

    #@0
    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    #@2
    return v0
.end method

.method public getExtendedCapabilities()Ljava/lang/Long;
    .locals 1

    #@0
    .prologue
    .line 442
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
    .line 378
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@2
    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    #@0
    .prologue
    .line 418
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
    .line 426
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 427
    return-object v1

    #@6
    .line 429
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
    .line 430
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
    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@2
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    #@0
    .prologue
    .line 386
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@2
    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 369
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
    .line 370
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 371
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@13
    return-object v1

    #@14
    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 374
    :cond_1
    const-string/jumbo v1, ""

    #@1a
    return-object v1
.end method

.method public getVenueGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2
    return-object v0
.end method

.method public getVenueType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2
    return-object v0
.end method

.method public getWifiMode()I
    .locals 1

    #@0
    .prologue
    .line 462
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
    .line 357
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
    .line 361
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
    .line 493
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
    .line 470
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@2
    iget-boolean v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@4
    return v0
.end method

.method public isInternet()Z
    .locals 1

    #@0
    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@2
    return v0
.end method

.method public isInterworking()Z
    .locals 1

    #@0
    .prologue
    .line 398
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
    .line 474
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
    .line 351
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 352
    invoke-static {p1}, Lcom/android/server/wifi/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 353
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
    .line 351
    :cond_0
    :goto_0
    return v0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 353
    goto :goto_0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    .line 351
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
    .line 509
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 510
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
    .line 509
    :goto_0
    return-object v0

    #@2a
    .line 511
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
    .line 498
    const-string/jumbo v0, "NetworkInfo{SSID=\'%s\', HESSID=%x, BSSID=%x, StationCount=%d, ChannelUtilization=%d, Capacity=%d, Ant=%s, Internet=%s, VenueGroup=%s, VenueType=%s, HSRelease=%s, AnqpDomainID=%d, AnqpOICount=%d, RoamingConsortiums=%s}"

    #@3
    const/16 v1, 0xe

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 502
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
    .line 503
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
    .line 504
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
    .line 505
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
    .line 498
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    return-object v0
.end method
