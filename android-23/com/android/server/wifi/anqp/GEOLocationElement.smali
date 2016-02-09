.class public Lcom/android/server/wifi/anqp/GEOLocationElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;
    }
.end annotation


# static fields
.field private static final ALT_FRACTION_SIZE:I = 0x8

.field private static final ALT_TYPE_WIDTH:I = 0x4

.field private static final ALT_WIDTH:I = 0x1e

.field private static final DATUM_WIDTH:I = 0x8

.field private static final ELEMENT_ID:I = 0x7b

.field private static final GEO_LOCATION_LENGTH:I = 0x10

.field private static final LL_FRACTION_SIZE:I = 0x19

.field private static final LL_WIDTH:I = 0x22

.field private static final LOG2_FACTOR:D

.field private static final RES_WIDTH:I = 0x6


# instance fields
.field private final mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

.field private final mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field private final mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field private final mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

.field private final mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 272
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@5
    move-result-wide v0

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    div-double v0, v2, v0

    #@a
    sput-wide v0, Lcom/android/server/wifi/anqp/GEOLocationElement;->LOG2_FACTOR:D

    #@c
    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 22
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@3
    .line 104
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    #@6
    .line 105
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    #@9
    move-result v17

    #@a
    move/from16 v0, v17

    #@c
    and-int/lit16 v10, v0, 0xff

    #@e
    .line 107
    .local v10, "locLength":I
    const/16 v17, 0x10

    #@10
    move/from16 v0, v17

    #@12
    if-eq v10, v0, :cond_0

    #@14
    .line 108
    new-instance v17, Ljava/net/ProtocolException;

    #@16
    new-instance v18, Ljava/lang/StringBuilder;

    #@18
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v19, "GeoLocation length field value "

    #@1e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v18

    #@22
    move-object/from16 v0, v18

    #@24
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v18

    #@28
    .line 109
    const-string/jumbo v19, " incorrect, expected 16"

    #@2b
    .line 108
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v18

    #@2f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v18

    #@33
    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@36
    throw v17

    #@37
    .line 111
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@3a
    move-result v17

    #@3b
    const/16 v18, 0x10

    #@3d
    move/from16 v0, v17

    #@3f
    move/from16 v1, v18

    #@41
    if-eq v0, v1, :cond_1

    #@43
    .line 112
    new-instance v17, Ljava/net/ProtocolException;

    #@45
    new-instance v18, Ljava/lang/StringBuilder;

    #@47
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v19, "Bad buffer length "

    #@4d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v18

    #@51
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@54
    move-result v19

    #@55
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v18

    #@59
    .line 113
    const-string/jumbo v19, ", expected 16"

    #@5c
    .line 112
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v18

    #@60
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v18

    #@64
    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@67
    throw v17

    #@68
    .line 116
    :cond_1
    new-instance v16, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;

    #@6a
    const/16 v17, 0x0

    #@6c
    move-object/from16 v0, v16

    #@6e
    move-object/from16 v1, p2

    #@70
    move-object/from16 v2, v17

    #@72
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;-><init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;)V

    #@75
    .line 118
    .local v16, "reverseBitStream":Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;
    const/16 v17, 0x6

    #@77
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@7a
    move-result-wide v18

    #@7b
    move-wide/from16 v0, v18

    #@7d
    long-to-int v14, v0

    #@7e
    .line 120
    .local v14, "rawLatRes":I
    const/16 v17, 0x22

    #@80
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@83
    move-result-wide v18

    #@84
    const/16 v17, 0x19

    #@86
    const/16 v20, 0x22

    #@88
    move-wide/from16 v0, v18

    #@8a
    move/from16 v2, v17

    #@8c
    move/from16 v3, v20

    #@8e
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement;->fixToFloat(JII)D

    #@91
    move-result-wide v8

    #@92
    .line 122
    .local v8, "latitude":D
    if-eqz v14, :cond_2

    #@94
    .line 123
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@96
    int-to-long v0, v14

    #@97
    move-wide/from16 v18, v0

    #@99
    const/16 v20, 0x22

    #@9b
    .line 124
    const/16 v21, 0x19

    #@9d
    .line 123
    invoke-static/range {v18 .. v21}, Lcom/android/server/wifi/anqp/GEOLocationElement;->bitsToAbsResolution(JII)I

    #@a0
    move-result v18

    #@a1
    move-object/from16 v0, v17

    #@a3
    move/from16 v1, v18

    #@a5
    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(DI)V

    #@a8
    .line 122
    :goto_0
    move-object/from16 v0, v17

    #@aa
    move-object/from16 v1, p0

    #@ac
    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@ae
    .line 127
    const/16 v17, 0x6

    #@b0
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@b3
    move-result-wide v18

    #@b4
    move-wide/from16 v0, v18

    #@b6
    long-to-int v15, v0

    #@b7
    .line 129
    .local v15, "rawLonRes":I
    const/16 v17, 0x22

    #@b9
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@bc
    move-result-wide v18

    #@bd
    const/16 v17, 0x19

    #@bf
    const/16 v20, 0x22

    #@c1
    move-wide/from16 v0, v18

    #@c3
    move/from16 v2, v17

    #@c5
    move/from16 v3, v20

    #@c7
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement;->fixToFloat(JII)D

    #@ca
    move-result-wide v12

    #@cb
    .line 131
    .local v12, "longitude":D
    if-eqz v15, :cond_3

    #@cd
    .line 132
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@cf
    int-to-long v0, v15

    #@d0
    move-wide/from16 v18, v0

    #@d2
    const/16 v20, 0x22

    #@d4
    .line 133
    const/16 v21, 0x19

    #@d6
    .line 132
    invoke-static/range {v18 .. v21}, Lcom/android/server/wifi/anqp/GEOLocationElement;->bitsToAbsResolution(JII)I

    #@d9
    move-result v18

    #@da
    move-object/from16 v0, v17

    #@dc
    move/from16 v1, v18

    #@de
    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(DI)V

    #@e1
    .line 131
    :goto_1
    move-object/from16 v0, v17

    #@e3
    move-object/from16 v1, p0

    #@e5
    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@e7
    .line 136
    const/16 v17, 0x4

    #@e9
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@ec
    move-result-wide v18

    #@ed
    move-wide/from16 v0, v18

    #@ef
    long-to-int v4, v0

    #@f0
    .line 137
    .local v4, "altType":I
    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@f3
    move-result-object v17

    #@f4
    move-object/from16 v0, v17

    #@f6
    array-length v0, v0

    #@f7
    move/from16 v17, v0

    #@f9
    move/from16 v0, v17

    #@fb
    if-ge v4, v0, :cond_4

    #@fd
    .line 138
    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@100
    move-result-object v17

    #@101
    aget-object v17, v17, v4

    #@103
    .line 137
    :goto_2
    move-object/from16 v0, v17

    #@105
    move-object/from16 v1, p0

    #@107
    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@109
    .line 141
    const/16 v17, 0x6

    #@10b
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@10e
    move-result-wide v18

    #@10f
    move-wide/from16 v0, v18

    #@111
    long-to-int v11, v0

    #@112
    .line 142
    .local v11, "rawAltRes":I
    const/16 v17, 0x1e

    #@114
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@117
    move-result-wide v18

    #@118
    const/16 v17, 0x8

    #@11a
    .line 143
    const/16 v20, 0x1e

    #@11c
    .line 142
    move-wide/from16 v0, v18

    #@11e
    move/from16 v2, v17

    #@120
    move/from16 v3, v20

    #@122
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement;->fixToFloat(JII)D

    #@125
    move-result-wide v6

    #@126
    .line 145
    .local v6, "altitude":D
    if-eqz v11, :cond_5

    #@128
    .line 146
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@12a
    int-to-long v0, v11

    #@12b
    move-wide/from16 v18, v0

    #@12d
    const/16 v20, 0x1e

    #@12f
    .line 147
    const/16 v21, 0x8

    #@131
    .line 146
    invoke-static/range {v18 .. v21}, Lcom/android/server/wifi/anqp/GEOLocationElement;->bitsToAbsResolution(JII)I

    #@134
    move-result v18

    #@135
    move-object/from16 v0, v17

    #@137
    move/from16 v1, v18

    #@139
    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(DI)V

    #@13c
    .line 145
    :goto_3
    move-object/from16 v0, v17

    #@13e
    move-object/from16 v1, p0

    #@140
    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@142
    .line 150
    const/16 v17, 0x8

    #@144
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->-wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    #@147
    move-result-wide v18

    #@148
    move-wide/from16 v0, v18

    #@14a
    long-to-int v5, v0

    #@14b
    .line 151
    .local v5, "datumValue":I
    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@14e
    move-result-object v17

    #@14f
    move-object/from16 v0, v17

    #@151
    array-length v0, v0

    #@152
    move/from16 v17, v0

    #@154
    move/from16 v0, v17

    #@156
    if-ge v5, v0, :cond_6

    #@158
    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@15b
    move-result-object v17

    #@15c
    aget-object v17, v17, v5

    #@15e
    :goto_4
    move-object/from16 v0, v17

    #@160
    move-object/from16 v1, p0

    #@162
    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@164
    .line 101
    return-void

    #@165
    .line 125
    .end local v4    # "altType":I
    .end local v5    # "datumValue":I
    .end local v6    # "altitude":D
    .end local v11    # "rawAltRes":I
    .end local v12    # "longitude":D
    .end local v15    # "rawLonRes":I
    :cond_2
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@167
    move-object/from16 v0, v17

    #@169
    invoke-direct {v0, v8, v9}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(D)V

    #@16c
    goto/16 :goto_0

    #@16e
    .line 134
    .restart local v12    # "longitude":D
    .restart local v15    # "rawLonRes":I
    :cond_3
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@170
    move-object/from16 v0, v17

    #@172
    invoke-direct {v0, v12, v13}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(D)V

    #@175
    goto/16 :goto_1

    #@177
    .line 139
    .restart local v4    # "altType":I
    :cond_4
    sget-object v17, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@179
    goto :goto_2

    #@17a
    .line 148
    .restart local v6    # "altitude":D
    .restart local v11    # "rawAltRes":I
    :cond_5
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@17c
    move-object/from16 v0, v17

    #@17e
    invoke-direct {v0, v6, v7}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(D)V

    #@181
    goto :goto_3

    #@182
    .line 151
    .restart local v5    # "datumValue":I
    :cond_6
    sget-object v17, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@184
    goto :goto_4
.end method

.method private static absResolutionToBits(III)I
    .locals 1
    .param p0, "resolution"    # I
    .param p1, "fieldWidth"    # I
    .param p2, "fractionBits"    # I

    #@0
    .prologue
    .line 296
    sub-int v0, p1, p2

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    sub-int/2addr v0, p0

    #@5
    return v0
.end method

.method private static bitsToAbsResolution(JII)I
    .locals 2
    .param p0, "bits"    # J
    .param p2, "fieldWidth"    # I
    .param p3, "fractionBits"    # I

    #@0
    .prologue
    .line 309
    sub-int v0, p2, p3

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    long-to-int v1, p0

    #@5
    sub-int/2addr v0, v1

    #@6
    return v0
.end method

.method static fixToFloat(JII)D
    .locals 8
    .param p0, "value"    # J
    .param p2, "fractionSize"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    .line 259
    add-int/lit8 v2, p3, -0x1

    #@4
    shl-long v0, v6, v2

    #@6
    .line 260
    .local v0, "sign":J
    and-long v2, p0, v0

    #@8
    const-wide/16 v4, 0x0

    #@a
    cmp-long v2, v2, v4

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 261
    neg-long p0, p0

    #@f
    .line 262
    sub-long v2, v0, v6

    #@11
    and-long/2addr v2, p0

    #@12
    long-to-double v2, v2

    #@13
    neg-double v2, v2

    #@14
    shl-long v4, v6, p2

    #@16
    long-to-double v4, v4

    #@17
    div-double/2addr v2, v4

    #@18
    return-wide v2

    #@19
    .line 264
    :cond_0
    sub-long v2, v0, v6

    #@1b
    and-long/2addr v2, p0

    #@1c
    long-to-double v2, v2

    #@1d
    shl-long v4, v6, p2

    #@1f
    long-to-double v4, v4

    #@20
    div-double/2addr v2, v4

    #@21
    return-wide v2
.end method

.method private static floatToFix(DII)J
    .locals 6
    .param p0, "value"    # D
    .param p2, "fractionSize"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    .line 269
    shl-long v0, v4, p2

    #@4
    long-to-double v0, v0

    #@5
    mul-double/2addr v0, p0

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@9
    move-result-wide v0

    #@a
    shl-long v2, v4, p3

    #@c
    sub-long/2addr v2, v4

    #@d
    and-long/2addr v0, v2

    #@e
    return-wide v0
.end method

.method private static getResolution(D)I
    .locals 4
    .param p0, "variance"    # D

    #@0
    .prologue
    .line 282
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    #@3
    move-result-wide v0

    #@4
    sget-wide v2, Lcom/android/server/wifi/anqp/GEOLocationElement;->LOG2_FACTOR:D

    #@6
    mul-double/2addr v0, v2

    #@7
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@a
    move-result-wide v0

    #@b
    double-to-int v0, v0

    #@c
    return v0
.end method


# virtual methods
.method public getAltitude()Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@2
    return-object v0
.end method

.method public getAltitudeType()Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@2
    return-object v0
.end method

.method public getDatum()Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@2
    return-object v0
.end method

.method public getLatitude()Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@2
    return-object v0
.end method

.method public getLongitude()Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "GEOLocation{mLatitude="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 177
    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@e
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 178
    const-string/jumbo v1, ", mLongitude="

    #@15
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 178
    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@1b
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 179
    const-string/jumbo v1, ", mAltitude="

    #@22
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 179
    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    #@28
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 180
    const-string/jumbo v1, ", mAltitudeType="

    #@2f
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 180
    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@35
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 181
    const-string/jumbo v1, ", mDatum="

    #@3c
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 181
    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@42
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 182
    const/16 v1, 0x7d

    #@48
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method
