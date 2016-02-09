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
.field private static final ANQP_DOMID_BIT:I = 0x4

.field private static final DBG:Z = true

.field private static final EID_BSSLoad:I = 0xb

.field private static final EID_ExtendedCaps:I = 0x7f

.field private static final EID_HT_OPERATION:I = 0x3d

.field private static final EID_Interworking:I = 0x6b

.field private static final EID_RoamingConsortium:I = 0x6f

.field private static final EID_SSID:I = 0x0

.field private static final EID_VHT_OPERATION:I = 0xc0

.field private static final EID_VSA:I = 0xdd

.field private static final IE:Ljava/lang/String; = "ie=000477696e670b052a00cf611e6b091e0a016104086212056f0a0e530111112222222229dd07506f9a10143a01"

.field private static final IE2:Ljava/lang/String; = "ie=000f4578616d706c65204e6574776f726b010882848b960c1218240301012a010432043048606c30140100000fac040100000fac040100000fac0100007f04000000806b091e07010203040506076c027f006f1001531122331020304050010203040506dd05506f9a1000"

.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field private static final SSID_UTF8_BIT:J = 0x1000000000000L

.field private static final TAG:Ljava/lang/String; = "NetworkDetail:"

.field private static final VDBG:Z


# instance fields
.field private final m80211McRTTResponder:Z

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

.field private final mExtendedCapabilities:Ljava/lang/Long;

.field private final mHESSID:J

.field private final mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field private final mInternet:Z

.field private final mPrimaryFreq:I

.field private final mRoamingConsortiums:[J

.field private final mSSID:Ljava/lang/String;

.field private final mStationCount:I

.field private final mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


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
    .line 414
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 415
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@7
    .line 416
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@9
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@b
    .line 417
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@d
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@f
    .line 418
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@11
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@13
    .line 419
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@15
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@17
    .line 420
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@19
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@1b
    .line 421
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@1d
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@1f
    .line 422
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@21
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@23
    .line 423
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@25
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@27
    .line 424
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@29
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2b
    .line 425
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2f
    .line 426
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@31
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@33
    .line 427
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@35
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@37
    .line 428
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@39
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@3b
    .line 429
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    #@3d
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    #@3f
    .line 430
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@41
    .line 431
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@43
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@45
    .line 432
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@47
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@49
    .line 433
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@4b
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@4d
    .line 434
    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@4f
    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@51
    .line 435
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    #@53
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    #@55
    .line 414
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 52
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "infoElements"    # Ljava/lang/String;
    .param p4, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 127
    if-nez p2, :cond_0

    #@5
    .line 128
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v48, "Null information element string"

    #@a
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v47

    #@e
    .line 130
    :cond_0
    const/16 v47, 0x3d

    #@10
    move-object/from16 v0, p2

    #@12
    move/from16 v1, v47

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v38

    #@18
    .line 131
    .local v38, "separator":I
    if-gez v38, :cond_1

    #@1a
    .line 132
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v48, "No element separator"

    #@1f
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v47

    #@23
    .line 135
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    #@26
    move-result-wide v48

    #@27
    move-wide/from16 v0, v48

    #@29
    move-object/from16 v2, p0

    #@2b
    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@2d
    .line 137
    add-int/lit8 v47, v38, 0x1

    #@2f
    move-object/from16 v0, p2

    #@31
    move/from16 v1, v47

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@36
    move-result-object v47

    #@37
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    #@3a
    move-result-object v47

    #@3b
    invoke-static/range {v47 .. v47}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3e
    move-result-object v47

    #@3f
    .line 138
    sget-object v48, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@41
    .line 137
    invoke-virtual/range {v47 .. v48}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@44
    move-result-object v15

    #@45
    .line 140
    .local v15, "data":Ljava/nio/ByteBuffer;
    const/16 v39, 0x0

    #@47
    .line 141
    .local v39, "ssid":Ljava/lang/String;
    const/16 v40, 0x0

    #@49
    .line 142
    .local v40, "ssidOctets":[B
    const/16 v41, 0x0

    #@4b
    .line 143
    .local v41, "stationCount":I
    const/4 v14, 0x0

    #@4c
    .line 144
    .local v14, "channelUtilization":I
    const/4 v9, 0x0

    #@4d
    .line 146
    .local v9, "capacity":I
    const/4 v8, 0x0

    #@4e
    .line 147
    .local v8, "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    const/16 v28, 0x0

    #@50
    .line 148
    .local v28, "internet":Z
    const/16 v43, 0x0

    #@52
    .line 149
    .local v43, "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    const/16 v44, 0x0

    #@54
    .line 150
    .local v44, "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    const-wide/16 v24, 0x0

    #@56
    .line 152
    .local v24, "hessid":J
    const/4 v7, 0x0

    #@57
    .line 153
    .local v7, "anqpOICount":I
    const/16 v36, 0x0

    #@59
    .line 155
    .local v36, "roamingConsortiums":[J
    const/16 v27, 0x0

    #@5b
    .line 156
    .local v27, "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    const/4 v6, 0x0

    #@5c
    .line 158
    .local v6, "anqpDomainID":I
    const/16 v23, 0x0

    #@5e
    .line 160
    .local v23, "extendedCapabilities":Ljava/lang/Long;
    const/16 v37, 0x0

    #@60
    .line 161
    .local v37, "secondChanelOffset":I
    const/4 v13, 0x0

    #@61
    .line 162
    .local v13, "channelMode":I
    const/4 v11, 0x0

    #@62
    .line 163
    .local v11, "centerFreqIndex1":I
    const/4 v12, 0x0

    #@63
    .line 164
    .local v12, "centerFreqIndex2":I
    const/4 v4, 0x0

    #@64
    .line 166
    .local v4, "RTTResponder":Z
    const/16 v22, 0x0

    #@66
    .line 169
    .end local v8    # "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .end local v23    # "extendedCapabilities":Ljava/lang/Long;
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .end local v36    # "roamingConsortiums":[J
    .end local v40    # "ssidOctets":[B
    .end local v43    # "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .end local v44    # "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .local v22, "exception":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    #@69
    move-result v47

    #@6a
    const/16 v48, 0x1

    #@6c
    move/from16 v0, v47

    #@6e
    move/from16 v1, v48

    #@70
    if-le v0, v1, :cond_12

    #@72
    .line 170
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    #@75
    move-result v47

    #@76
    move/from16 v0, v47

    #@78
    and-int/lit16 v0, v0, 0xff

    #@7a
    move/from16 v19, v0

    #@7c
    .line 171
    .local v19, "eid":I
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    #@7f
    move-result v47

    #@80
    move/from16 v0, v47

    #@82
    and-int/lit16 v0, v0, 0xff

    #@84
    move/from16 v21, v0

    #@86
    .line 173
    .local v21, "elementLength":I
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    #@89
    move-result v47

    #@8a
    move/from16 v0, v21

    #@8c
    move/from16 v1, v47

    #@8e
    if-le v0, v1, :cond_3

    #@90
    .line 174
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@92
    new-instance v48, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v49, "Element length "

    #@9a
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v48

    #@9e
    move-object/from16 v0, v48

    #@a0
    move/from16 v1, v21

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v48

    #@a6
    .line 175
    const-string/jumbo v49, " exceeds payload length "

    #@a9
    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v48

    #@ad
    .line 175
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    #@b0
    move-result v49

    #@b1
    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v48

    #@b5
    .line 176
    const-string/jumbo v49, " @ "

    #@b8
    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v48

    #@bc
    .line 176
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    #@bf
    move-result v49

    #@c0
    .line 174
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v48

    #@c4
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v48

    #@c8
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v47
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@cc
    .line 315
    .end local v19    # "eid":I
    .end local v21    # "elementLength":I
    :catch_0
    move-exception v18

    #@cd
    .line 316
    .local v18, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    #@d0
    move-result-object v47

    #@d1
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@d4
    move-result-object v47

    #@d5
    new-instance v48, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v49, "Caught "

    #@dd
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v48

    #@e1
    move-object/from16 v0, v48

    #@e3
    move-object/from16 v1, v18

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v48

    #@e9
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v48

    #@ed
    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 317
    if-nez v40, :cond_11

    #@f2
    .line 318
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@f4
    const-string/jumbo v48, "Malformed IE string (no SSID)"

    #@f7
    move-object/from16 v0, v47

    #@f9
    move-object/from16 v1, v48

    #@fb
    move-object/from16 v2, v18

    #@fd
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@100
    throw v47

    #@101
    .line 178
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "eid":I
    .restart local v21    # "elementLength":I
    :cond_3
    if-nez v19, :cond_4

    #@103
    if-nez v21, :cond_4

    #@105
    if-nez v40, :cond_2

    #@107
    .line 185
    :cond_4
    sparse-switch v19, :sswitch_data_0

    #@10a
    .line 310
    :try_start_1
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    #@10d
    move-result v47

    #@10e
    add-int v47, v47, v21

    #@110
    move/from16 v0, v47

    #@112
    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@115
    goto/16 :goto_0

    #@117
    .line 187
    :sswitch_0
    move/from16 v0, v21

    #@119
    new-array v0, v0, [B

    #@11b
    move-object/from16 v40, v0

    #@11d
    .line 188
    .local v40, "ssidOctets":[B
    move-object/from16 v0, v40

    #@11f
    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@122
    goto/16 :goto_0

    #@124
    .line 191
    .end local v40    # "ssidOctets":[B
    :sswitch_1
    const/16 v47, 0x5

    #@126
    move/from16 v0, v21

    #@128
    move/from16 v1, v47

    #@12a
    if-eq v0, v1, :cond_5

    #@12c
    .line 192
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@12e
    new-instance v48, Ljava/lang/StringBuilder;

    #@130
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v49, "BSS Load element length is not 5: "

    #@136
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v48

    #@13a
    move-object/from16 v0, v48

    #@13c
    move/from16 v1, v21

    #@13e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@141
    move-result-object v48

    #@142
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v48

    #@146
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@149
    throw v47

    #@14a
    .line 195
    :cond_5
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    #@14d
    move-result v47

    #@14e
    const v48, 0xffff

    #@151
    and-int v41, v47, v48

    #@153
    .line 196
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    #@156
    move-result v47

    #@157
    move/from16 v0, v47

    #@159
    and-int/lit16 v14, v0, 0xff

    #@15b
    .line 197
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S

    #@15e
    move-result v47

    #@15f
    const v48, 0xffff

    #@162
    and-int v9, v47, v48

    #@164
    .line 198
    goto/16 :goto_0

    #@166
    .line 200
    :sswitch_2
    move/from16 v0, v21

    #@168
    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    #@16b
    move-result-object v20

    #@16c
    .line 201
    .local v20, "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    #@16f
    move-result v35

    #@170
    .line 202
    .local v35, "primary_channel":I
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    #@173
    move-result v47

    #@174
    and-int/lit8 v37, v47, 0x3

    #@176
    .line 203
    goto/16 :goto_0

    #@178
    .line 205
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    .end local v35    # "primary_channel":I
    :sswitch_3
    move/from16 v0, v21

    #@17a
    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    #@17d
    move-result-object v20

    #@17e
    .line 206
    .restart local v20    # "element":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    #@181
    move-result v47

    #@182
    move/from16 v0, v47

    #@184
    and-int/lit16 v13, v0, 0xff

    #@186
    .line 207
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    #@189
    move-result v47

    #@18a
    move/from16 v0, v47

    #@18c
    and-int/lit16 v11, v0, 0xff

    #@18e
    .line 208
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    #@191
    move-result v47

    #@192
    move/from16 v0, v47

    #@194
    and-int/lit16 v12, v0, 0xff

    #@196
    .line 209
    goto/16 :goto_0

    #@198
    .line 211
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    :sswitch_4
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    #@19b
    move-result v47

    #@19c
    move/from16 v0, v47

    #@19e
    and-int/lit16 v5, v0, 0xff

    #@1a0
    .line 212
    .local v5, "anOptions":I
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@1a3
    move-result-object v47

    #@1a4
    and-int/lit8 v48, v5, 0xf

    #@1a6
    aget-object v8, v47, v48
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@1a8
    .line 213
    .local v8, "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    and-int/lit8 v47, v5, 0x10

    #@1aa
    if-eqz v47, :cond_9

    #@1ac
    const/16 v28, 0x1

    #@1ae
    .line 215
    :goto_1
    const/16 v47, 0x3

    #@1b0
    move/from16 v0, v21

    #@1b2
    move/from16 v1, v47

    #@1b4
    if-eq v0, v1, :cond_6

    #@1b6
    const/16 v47, 0x9

    #@1b8
    move/from16 v0, v21

    #@1ba
    move/from16 v1, v47

    #@1bc
    if-ne v0, v1, :cond_a

    #@1be
    .line 217
    :cond_6
    :try_start_2
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@1c1
    move-result-object v45

    #@1c2
    .line 218
    .local v45, "vinfo":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v45 .. v45}, Ljava/nio/ByteBuffer;->position()I

    #@1c5
    move-result v47

    #@1c6
    add-int/lit8 v47, v47, 0x2

    #@1c8
    move-object/from16 v0, v45

    #@1ca
    move/from16 v1, v47

    #@1cc
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1cf
    .line 220
    new-instance v46, Lcom/android/server/wifi/anqp/VenueNameElement;

    #@1d1
    sget-object v47, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1d3
    move-object/from16 v0, v46

    #@1d5
    move-object/from16 v1, v47

    #@1d7
    move-object/from16 v2, v45

    #@1d9
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@1dc
    .line 222
    .local v46, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/anqp/VenueNameElement;->getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@1df
    move-result-object v43

    #@1e0
    .line 223
    .local v43, "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/anqp/VenueNameElement;->getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@1e3
    move-result-object v44

    #@1e4
    .line 224
    .local v44, "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getShort()S
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@1e7
    .line 232
    .end local v43    # "venueGroup":Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .end local v44    # "venueType":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .end local v45    # "vinfo":Ljava/nio/ByteBuffer;
    .end local v46    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_7
    :goto_2
    const/16 v47, 0x7

    #@1e9
    move/from16 v0, v21

    #@1eb
    move/from16 v1, v47

    #@1ed
    if-eq v0, v1, :cond_8

    #@1ef
    const/16 v47, 0x9

    #@1f1
    move/from16 v0, v21

    #@1f3
    move/from16 v1, v47

    #@1f5
    if-ne v0, v1, :cond_2

    #@1f7
    .line 233
    :cond_8
    :try_start_3
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@1f9
    const/16 v48, 0x6

    #@1fb
    move-object/from16 v0, v47

    #@1fd
    move/from16 v1, v48

    #@1ff
    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@202
    move-result-wide v24

    #@203
    goto/16 :goto_0

    #@205
    .line 213
    :cond_9
    const/16 v28, 0x0

    #@207
    goto :goto_1

    #@208
    .line 228
    :cond_a
    const/16 v47, 0x1

    #@20a
    move/from16 v0, v21

    #@20c
    move/from16 v1, v47

    #@20e
    if-eq v0, v1, :cond_7

    #@210
    const/16 v47, 0x7

    #@212
    move/from16 v0, v21

    #@214
    move/from16 v1, v47

    #@216
    if-eq v0, v1, :cond_7

    #@218
    .line 229
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@21a
    new-instance v48, Ljava/lang/StringBuilder;

    #@21c
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@21f
    const-string/jumbo v49, "Bad Interworking element length: "

    #@222
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v48

    #@226
    move-object/from16 v0, v48

    #@228
    move/from16 v1, v21

    #@22a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v48

    #@22e
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@231
    move-result-object v48

    #@232
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@235
    throw v47

    #@236
    .line 237
    .end local v5    # "anOptions":I
    .end local v8    # "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    :sswitch_5
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    #@239
    move-result v47

    #@23a
    move/from16 v0, v47

    #@23c
    and-int/lit16 v7, v0, 0xff

    #@23e
    .line 239
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    #@241
    move-result v47

    #@242
    move/from16 v0, v47

    #@244
    and-int/lit16 v0, v0, 0xff

    #@246
    move/from16 v29, v0

    #@248
    .line 240
    .local v29, "oi12Length":I
    and-int/lit8 v30, v29, 0xf

    #@24a
    .line 241
    .local v30, "oi1Length":I
    ushr-int/lit8 v47, v29, 0x4

    #@24c
    and-int/lit8 v31, v47, 0xf

    #@24e
    .line 242
    .local v31, "oi2Length":I
    add-int/lit8 v47, v21, -0x2

    #@250
    sub-int v47, v47, v30

    #@252
    sub-int v32, v47, v31

    #@254
    .line 243
    .local v32, "oi3Length":I
    const/16 v33, 0x0

    #@256
    .line 244
    .local v33, "oiCount":I
    if-lez v30, :cond_b

    #@258
    .line 245
    const/16 v33, 0x1

    #@25a
    .line 246
    if-lez v31, :cond_b

    #@25c
    .line 247
    add-int/lit8 v33, v33, 0x1

    #@25e
    .line 248
    if-lez v32, :cond_b

    #@260
    .line 249
    add-int/lit8 v33, v33, 0x1

    #@262
    .line 253
    :cond_b
    move/from16 v0, v33

    #@264
    new-array v0, v0, [J

    #@266
    move-object/from16 v36, v0

    #@268
    .line 254
    .local v36, "roamingConsortiums":[J
    if-lez v30, :cond_c

    #@26a
    move-object/from16 v0, v36

    #@26c
    array-length v0, v0

    #@26d
    move/from16 v47, v0

    #@26f
    if-lez v47, :cond_c

    #@271
    .line 256
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@273
    move-object/from16 v0, v47

    #@275
    move/from16 v1, v30

    #@277
    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@27a
    move-result-wide v48

    #@27b
    .line 255
    const/16 v47, 0x0

    #@27d
    aput-wide v48, v36, v47

    #@27f
    .line 258
    :cond_c
    if-lez v31, :cond_d

    #@281
    move-object/from16 v0, v36

    #@283
    array-length v0, v0

    #@284
    move/from16 v47, v0

    #@286
    const/16 v48, 0x1

    #@288
    move/from16 v0, v47

    #@28a
    move/from16 v1, v48

    #@28c
    if-le v0, v1, :cond_d

    #@28e
    .line 260
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@290
    move-object/from16 v0, v47

    #@292
    move/from16 v1, v31

    #@294
    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@297
    move-result-wide v48

    #@298
    .line 259
    const/16 v47, 0x1

    #@29a
    aput-wide v48, v36, v47

    #@29c
    .line 262
    :cond_d
    if-lez v32, :cond_2

    #@29e
    move-object/from16 v0, v36

    #@2a0
    array-length v0, v0

    #@2a1
    move/from16 v47, v0

    #@2a3
    const/16 v48, 0x2

    #@2a5
    move/from16 v0, v47

    #@2a7
    move/from16 v1, v48

    #@2a9
    if-le v0, v1, :cond_2

    #@2ab
    .line 264
    sget-object v47, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2ad
    move-object/from16 v0, v47

    #@2af
    move/from16 v1, v32

    #@2b1
    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@2b4
    move-result-wide v48

    #@2b5
    .line 263
    const/16 v47, 0x2

    #@2b7
    aput-wide v48, v36, v47

    #@2b9
    goto/16 :goto_0

    #@2bb
    .line 268
    .end local v29    # "oi12Length":I
    .end local v30    # "oi1Length":I
    .end local v31    # "oi2Length":I
    .end local v32    # "oi3Length":I
    .end local v33    # "oiCount":I
    .end local v36    # "roamingConsortiums":[J
    :sswitch_6
    move/from16 v0, v21

    #@2bd
    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    #@2c0
    move-result-object v20

    #@2c1
    .line 269
    .restart local v20    # "element":Ljava/nio/ByteBuffer;
    const/16 v47, 0x5

    #@2c3
    move/from16 v0, v21

    #@2c5
    move/from16 v1, v47

    #@2c7
    if-lt v0, v1, :cond_2

    #@2c9
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->getInt()I

    #@2cc
    move-result v47

    #@2cd
    const v48, 0x109a6f50

    #@2d0
    move/from16 v0, v47

    #@2d2
    move/from16 v1, v48

    #@2d4
    if-ne v0, v1, :cond_2

    #@2d6
    .line 270
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B

    #@2d9
    move-result v47

    #@2da
    move/from16 v0, v47

    #@2dc
    and-int/lit16 v0, v0, 0xff

    #@2de
    move/from16 v26, v0

    #@2e0
    .line 271
    .local v26, "hsConf":I
    shr-int/lit8 v47, v26, 0x4

    #@2e2
    and-int/lit8 v47, v47, 0xf

    #@2e4
    packed-switch v47, :pswitch_data_0

    #@2e7
    .line 279
    sget-object v27, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2e9
    .line 282
    .local v27, "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :goto_3
    and-int/lit8 v47, v26, 0x4

    #@2eb
    if-eqz v47, :cond_2

    #@2ed
    .line 283
    const/16 v47, 0x7

    #@2ef
    move/from16 v0, v21

    #@2f1
    move/from16 v1, v47

    #@2f3
    if-ge v0, v1, :cond_e

    #@2f5
    .line 284
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@2f7
    .line 285
    new-instance v48, Ljava/lang/StringBuilder;

    #@2f9
    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    #@2fc
    const-string/jumbo v49, "HS20 indication element too short: "

    #@2ff
    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v48

    #@303
    move-object/from16 v0, v48

    #@305
    move/from16 v1, v21

    #@307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v48

    #@30b
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30e
    move-result-object v48

    #@30f
    .line 284
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@312
    throw v47

    #@313
    .line 273
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :pswitch_0
    sget-object v27, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@315
    .restart local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    goto :goto_3

    #@316
    .line 276
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :pswitch_1
    sget-object v27, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@318
    .restart local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    goto :goto_3

    #@319
    .line 287
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->getShort()S

    #@31c
    move-result v47

    #@31d
    const v48, 0xffff

    #@320
    and-int v6, v47, v48

    #@322
    goto/16 :goto_0

    #@324
    .line 292
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    .end local v26    # "hsConf":I
    .end local v27    # "hsRelease":Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    :sswitch_7
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@327
    move-result-object v20

    #@328
    .line 294
    .restart local v20    # "element":Ljava/nio/ByteBuffer;
    sget-object v47, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@32a
    move-object/from16 v0, v47

    #@32c
    move/from16 v1, v21

    #@32e
    invoke-static {v15, v0, v1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@331
    move-result-wide v48

    #@332
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@335
    move-result-object v23

    #@336
    .line 299
    .local v23, "extendedCapabilities":Ljava/lang/Long;
    const/16 v47, 0x9

    #@338
    move/from16 v0, v21

    #@33a
    move/from16 v1, v47

    #@33c
    if-ge v0, v1, :cond_f

    #@33e
    .line 300
    const/4 v4, 0x0

    #@33f
    .line 301
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    #@342
    move-result v47

    #@343
    add-int v47, v47, v21

    #@345
    move-object/from16 v0, v20

    #@347
    move/from16 v1, v47

    #@349
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@34c
    goto/16 :goto_0

    #@34e
    .line 305
    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    #@351
    move-result v47

    #@352
    add-int/lit8 v47, v47, 0x8

    #@354
    move-object/from16 v0, v20

    #@356
    move/from16 v1, v47

    #@358
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@35b
    .line 307
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->get()B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    #@35e
    move-result v47

    #@35f
    and-int/lit8 v47, v47, 0x40

    #@361
    if-eqz v47, :cond_10

    #@363
    const/4 v4, 0x1

    #@364
    goto/16 :goto_0

    #@366
    :cond_10
    const/4 v4, 0x0

    #@367
    goto/16 :goto_0

    #@369
    .line 320
    .end local v19    # "eid":I
    .end local v20    # "element":Ljava/nio/ByteBuffer;
    .end local v21    # "elementLength":I
    .end local v23    # "extendedCapabilities":Ljava/lang/Long;
    .restart local v18    # "e":Ljava/lang/RuntimeException;
    :cond_11
    move-object/from16 v22, v18

    #@36b
    .line 323
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "exception":Ljava/lang/RuntimeException;
    :cond_12
    if-eqz v40, :cond_16

    #@36d
    .line 324
    if-eqz v23, :cond_14

    #@36f
    .line 325
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    #@372
    move-result-wide v48

    #@373
    const-wide/high16 v50, 0x1000000000000L

    #@375
    and-long v48, v48, v50

    #@377
    const-wide/16 v50, 0x0

    #@379
    cmp-long v47, v48, v50

    #@37b
    if-eqz v47, :cond_13

    #@37d
    const/16 v42, 0x1

    #@37f
    .line 335
    .local v42, "strictUTF8":Z
    :goto_4
    sget-object v47, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@381
    invoke-virtual/range {v47 .. v47}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@384
    move-result-object v17

    #@385
    .line 337
    .local v17, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_4
    invoke-static/range {v40 .. v40}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@388
    move-result-object v47

    #@389
    move-object/from16 v0, v17

    #@38b
    move-object/from16 v1, v47

    #@38d
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@390
    move-result-object v16

    #@391
    .line 338
    .local v16, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4 .. :try_end_4} :catch_1

    #@394
    move-result-object v39

    #@395
    .line 344
    .end local v16    # "decoded":Ljava/nio/CharBuffer;
    .end local v39    # "ssid":Ljava/lang/String;
    :goto_5
    if-nez v39, :cond_16

    #@397
    .line 345
    if-eqz v42, :cond_15

    #@399
    if-eqz v22, :cond_15

    #@39b
    .line 346
    new-instance v47, Ljava/lang/IllegalArgumentException;

    #@39d
    const-string/jumbo v48, "Failed to decode SSID in dubious IE string"

    #@3a0
    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a3
    throw v47

    #@3a4
    .line 325
    .end local v17    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v42    # "strictUTF8":Z
    .restart local v39    # "ssid":Ljava/lang/String;
    :cond_13
    const/16 v42, 0x0

    #@3a6
    .restart local v42    # "strictUTF8":Z
    goto :goto_4

    #@3a7
    .line 324
    .end local v42    # "strictUTF8":Z
    :cond_14
    const/16 v42, 0x0

    #@3a9
    .restart local v42    # "strictUTF8":Z
    goto :goto_4

    #@3aa
    .line 340
    .restart local v17    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_1
    move-exception v10

    #@3ab
    .line 341
    .local v10, "cce":Ljava/nio/charset/CharacterCodingException;
    const/16 v39, 0x0

    #@3ad
    goto :goto_5

    #@3ae
    .line 349
    .end local v10    # "cce":Ljava/nio/charset/CharacterCodingException;
    .end local v39    # "ssid":Ljava/lang/String;
    :cond_15
    new-instance v39, Ljava/lang/String;

    #@3b0
    sget-object v47, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@3b2
    move-object/from16 v0, v39

    #@3b4
    move-object/from16 v1, v40

    #@3b6
    move-object/from16 v2, v47

    #@3b8
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@3bb
    .line 354
    .end local v17    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v42    # "strictUTF8":Z
    :cond_16
    move-object/from16 v0, v39

    #@3bd
    move-object/from16 v1, p0

    #@3bf
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@3c1
    .line 355
    move-wide/from16 v0, v24

    #@3c3
    move-object/from16 v2, p0

    #@3c5
    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@3c7
    .line 356
    move/from16 v0, v41

    #@3c9
    move-object/from16 v1, p0

    #@3cb
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@3cd
    .line 357
    move-object/from16 v0, p0

    #@3cf
    iput v14, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@3d1
    .line 358
    move-object/from16 v0, p0

    #@3d3
    iput v9, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@3d5
    .line 359
    move-object/from16 v0, p0

    #@3d7
    iput-object v8, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@3d9
    .line 360
    move/from16 v0, v28

    #@3db
    move-object/from16 v1, p0

    #@3dd
    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@3df
    .line 361
    move-object/from16 v0, v43

    #@3e1
    move-object/from16 v1, p0

    #@3e3
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@3e5
    .line 362
    move-object/from16 v0, v44

    #@3e7
    move-object/from16 v1, p0

    #@3e9
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@3eb
    .line 363
    move-object/from16 v0, v27

    #@3ed
    move-object/from16 v1, p0

    #@3ef
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@3f1
    .line 364
    move-object/from16 v0, p0

    #@3f3
    iput v6, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@3f5
    .line 365
    move-object/from16 v0, p0

    #@3f7
    iput v7, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@3f9
    .line 366
    move-object/from16 v0, v36

    #@3fb
    move-object/from16 v1, p0

    #@3fd
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@3ff
    .line 367
    move-object/from16 v0, v23

    #@401
    move-object/from16 v1, p0

    #@403
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    #@405
    .line 368
    invoke-static/range {p3 .. p3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseANQPLines(Ljava/util/List;)Ljava/util/Map;

    #@408
    move-result-object v47

    #@409
    move-object/from16 v0, v47

    #@40b
    move-object/from16 v1, p0

    #@40d
    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@40f
    .line 370
    move/from16 v0, p4

    #@411
    move-object/from16 v1, p0

    #@413
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@415
    .line 372
    if-eqz v13, :cond_18

    #@417
    .line 374
    add-int/lit8 v47, v13, 0x1

    #@419
    move/from16 v0, v47

    #@41b
    move-object/from16 v1, p0

    #@41d
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@41f
    .line 375
    add-int/lit8 v47, v11, -0x24

    #@421
    mul-int/lit8 v47, v47, 0x5

    #@423
    move/from16 v0, v47

    #@425
    add-int/lit16 v0, v0, 0x143c

    #@427
    move/from16 v47, v0

    #@429
    move/from16 v0, v47

    #@42b
    move-object/from16 v1, p0

    #@42d
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@42f
    .line 376
    const/16 v47, 0x1

    #@431
    move/from16 v0, v47

    #@433
    if-le v13, v0, :cond_17

    #@435
    .line 377
    add-int/lit8 v47, v12, -0x24

    #@437
    mul-int/lit8 v47, v47, 0x5

    #@439
    move/from16 v0, v47

    #@43b
    add-int/lit16 v0, v0, 0x143c

    #@43d
    move/from16 v47, v0

    #@43f
    move/from16 v0, v47

    #@441
    move-object/from16 v1, p0

    #@443
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@445
    .line 399
    :goto_6
    move-object/from16 v0, p0

    #@447
    iput-boolean v4, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    #@449
    .line 125
    return-void

    #@44a
    .line 379
    :cond_17
    const/16 v47, 0x0

    #@44c
    move/from16 v0, v47

    #@44e
    move-object/from16 v1, p0

    #@450
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@452
    goto :goto_6

    #@453
    .line 383
    :cond_18
    if-eqz v37, :cond_1b

    #@455
    .line 384
    const/16 v47, 0x1

    #@457
    move/from16 v0, v47

    #@459
    move-object/from16 v1, p0

    #@45b
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@45d
    .line 385
    const/16 v47, 0x1

    #@45f
    move/from16 v0, v37

    #@461
    move/from16 v1, v47

    #@463
    if-ne v0, v1, :cond_19

    #@465
    .line 386
    move-object/from16 v0, p0

    #@467
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@469
    move/from16 v47, v0

    #@46b
    add-int/lit8 v47, v47, 0x14

    #@46d
    move/from16 v0, v47

    #@46f
    move-object/from16 v1, p0

    #@471
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@473
    .line 397
    :goto_7
    const/16 v47, 0x0

    #@475
    move/from16 v0, v47

    #@477
    move-object/from16 v1, p0

    #@479
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@47b
    goto :goto_6

    #@47c
    .line 387
    :cond_19
    const/16 v47, 0x3

    #@47e
    move/from16 v0, v37

    #@480
    move/from16 v1, v47

    #@482
    if-ne v0, v1, :cond_1a

    #@484
    .line 388
    move-object/from16 v0, p0

    #@486
    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    #@488
    move/from16 v47, v0

    #@48a
    add-int/lit8 v47, v47, -0x14

    #@48c
    move/from16 v0, v47

    #@48e
    move-object/from16 v1, p0

    #@490
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@492
    goto :goto_7

    #@493
    .line 390
    :cond_1a
    const/16 v47, 0x0

    #@495
    move/from16 v0, v47

    #@497
    move-object/from16 v1, p0

    #@499
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@49b
    .line 391
    const-string/jumbo v47, "NetworkDetail:"

    #@49e
    const-string/jumbo v48, "Error on secondChanelOffset"

    #@4a1
    invoke-static/range {v47 .. v48}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a4
    goto :goto_7

    #@4a5
    .line 394
    :cond_1b
    const/16 v47, 0x0

    #@4a7
    move/from16 v0, v47

    #@4a9
    move-object/from16 v1, p0

    #@4ab
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@4ad
    .line 395
    const/16 v47, 0x0

    #@4af
    move/from16 v0, v47

    #@4b1
    move-object/from16 v1, p0

    #@4b3
    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@4b5
    goto :goto_7

    #@4b6
    .line 225
    .restart local v5    # "anOptions":I
    .restart local v8    # "ant":Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .restart local v19    # "eid":I
    .restart local v21    # "elementLength":I
    .restart local v22    # "exception":Ljava/lang/RuntimeException;
    .restart local v39    # "ssid":Ljava/lang/String;
    :catch_2
    move-exception v34

    #@4b7
    .local v34, "pe":Ljava/net/ProtocolException;
    goto/16 :goto_2

    #@4b9
    .line 185
    nop

    #@4ba
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x3d -> :sswitch_2
        0x6b -> :sswitch_4
        0x6f -> :sswitch_5
        0x7f -> :sswitch_7
        0xc0 -> :sswitch_3
        0xdd -> :sswitch_6
    .end sparse-switch

    #@4dc
    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "plLength"    # I

    #@0
    .prologue
    .line 408
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
    .line 409
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v1

    #@10
    add-int/2addr v1, p1

    #@11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@14
    .line 410
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@17
    move-result v1

    #@18
    add-int/2addr v1, p1

    #@19
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 411
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 629
    new-instance v1, Landroid/net/wifi/ScanResult;

    #@2
    invoke-direct {v1}, Landroid/net/wifi/ScanResult;-><init>()V

    #@5
    .line 630
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    const-string/jumbo v2, "wing"

    #@8
    iput-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@a
    .line 631
    const-string/jumbo v2, "610408"

    #@d
    iput-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f
    .line 632
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@11
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@13
    const-string/jumbo v3, "ie=000f4578616d706c65204e6574776f726b010882848b960c1218240301012a010432043048606c30140100000fac040100000fac040100000fac0100007f04000000806b091e07010203040506076c027f006f1001531122331020304050010203040506dd05506f9a1000"

    #@16
    const/4 v4, 0x0

    #@17
    const/4 v5, 0x0

    #@18
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    #@1b
    .line 633
    .local v0, "nwkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@20
    .line 628
    return-void
.end method

.method private static parseMac(Ljava/lang/String;)J
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 444
    const-wide/16 v2, 0x0

    #@3
    .line 445
    .local v2, "mac":J
    const/4 v0, 0x0

    #@4
    .line 446
    .local v0, "count":I
    const/4 v1, 0x0

    #@5
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v5

    #@9
    if-ge v1, v5, :cond_1

    #@b
    .line 447
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v5

    #@f
    invoke-static {v5, v10}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    #@12
    move-result v4

    #@13
    .line 448
    .local v4, "nibble":I
    if-ltz v4, :cond_0

    #@15
    .line 449
    const/4 v5, 0x4

    #@16
    shl-long v6, v2, v5

    #@18
    int-to-long v8, v4

    #@19
    or-long v2, v6, v8

    #@1b
    .line 450
    add-int/lit8 v0, v0, 0x1

    #@1d
    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 453
    .end local v4    # "nibble":I
    :cond_1
    const/16 v5, 0xc

    #@22
    if-lt v0, v5, :cond_2

    #@24
    and-int/lit8 v5, v0, 0x1

    #@26
    if-ne v5, v10, :cond_3

    #@28
    .line 454
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Bad MAC address: \'"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, "\'"

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 456
    :cond_3
    return-wide v2
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 12
    .param p0, "mac"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 607
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@7
    .line 608
    .local v0, "first":Z
    const/4 v1, 0x5

    #@8
    .local v1, "n":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 609
    if-eqz v0, :cond_0

    #@c
    .line 610
    const/4 v0, 0x0

    #@d
    .line 614
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
    .line 608
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 612
    :cond_0
    const/16 v3, 0x3a

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_1

    #@30
    .line 616
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
    .line 439
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
    .line 566
    if-ne p0, p1, :cond_0

    #@4
    .line 567
    return v1

    #@5
    .line 569
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
    .line 570
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 573
    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@15
    .line 575
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
    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    #@0
    .prologue
    .line 525
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    #@2
    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    #@0
    .prologue
    .line 529
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    #@2
    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    #@0
    .prologue
    .line 485
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    #@2
    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 602
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
    .line 497
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    #@2
    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    #@0
    .prologue
    .line 549
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    #@2
    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    #@0
    .prologue
    .line 553
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    #@2
    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    #@0
    .prologue
    .line 493
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    #@2
    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    #@0
    .prologue
    .line 545
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    #@2
    return v0
.end method

.method public getExtendedCapabilities()Ljava/lang/Long;
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method public getHESSID()J
    .locals 2

    #@0
    .prologue
    .line 481
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@2
    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2
    return-object v0
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    #@2
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    #@0
    .prologue
    .line 489
    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    #@2
    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 472
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
    .line 473
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 474
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    #@13
    return-object v1

    #@14
    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 477
    :cond_1
    const-string/jumbo v1, ""

    #@1a
    return-object v1
.end method

.method public getVenueGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2
    return-object v0
.end method

.method public getVenueType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mVenueType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    #@2
    return-object v0
.end method

.method public has80211uInfo()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 460
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
    .line 464
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
    .line 580
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
    .line 557
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->m80211McRTTResponder:Z

    #@2
    return v0
.end method

.method public isInternet()Z
    .locals 1

    #@0
    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    #@2
    return v0
.end method

.method public isInterworking()Z
    .locals 1

    #@0
    .prologue
    .line 501
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
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 561
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Ljava/lang/Long;

    #@7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@a
    move-result-wide v2

    #@b
    const-wide/high16 v4, 0x1000000000000L

    #@d
    and-long/2addr v2, v4

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    :cond_0
    return v0
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
    .line 596
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 597
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
    .line 596
    :goto_0
    return-object v0

    #@2a
    .line 598
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
    .line 585
    const-string/jumbo v0, "NetworkInfo{mSSID=\'%s\', mHESSID=%x, mBSSID=%x, mStationCount=%d, mChannelUtilization=%d, mCapacity=%d, mAnt=%s, mInternet=%s, mVenueGroup=%s, mVenueType=%s, mHSRelease=%s, mAnqpDomainID=%d, mAnqpOICount=%d, mRoamingConsortiums=%s}"

    #@3
    const/16 v1, 0xe

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    .line 589
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
    .line 590
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
    .line 591
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
    .line 592
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
    .line 585
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    return-object v0
.end method
