.class public Lcom/android/server/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L


# instance fields
.field public mState:I

.field public mSunrise:J

.field public mSunset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 29
    .param p1, "time"    # J
    .param p3, "latiude"    # D
    .param p5, "longitude"    # D

    #@0
    .prologue
    .line 71
    const-wide v22, 0xdc6d62da00L

    #@5
    sub-long v22, p1, v22

    #@7
    move-wide/from16 v0, v22

    #@9
    long-to-float v0, v0

    #@a
    move/from16 v22, v0

    #@c
    const v23, 0x4ca4cb80    # 8.64E7f

    #@f
    div-float v8, v22, v23

    #@11
    .line 74
    .local v8, "daysSince2000":F
    const v22, 0x3c8ceb25

    #@14
    mul-float v22, v22, v8

    #@16
    const v23, 0x40c7ae92

    #@19
    add-float v12, v23, v22

    #@1b
    .line 77
    .local v12, "meanAnomaly":F
    float-to-double v0, v12

    #@1c
    move-wide/from16 v22, v0

    #@1e
    float-to-double v0, v12

    #@1f
    move-wide/from16 v24, v0

    #@21
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@24
    move-result-wide v24

    #@25
    const-wide v26, 0x3fa11c5fc0000000L    # 0.03341960161924362

    #@2a
    mul-double v24, v24, v26

    #@2c
    add-double v22, v22, v24

    #@2e
    .line 78
    const/high16 v24, 0x40000000    # 2.0f

    #@30
    mul-float v24, v24, v12

    #@32
    move/from16 v0, v24

    #@34
    float-to-double v0, v0

    #@35
    move-wide/from16 v24, v0

    #@37
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@3a
    move-result-wide v24

    #@3b
    .line 77
    const-wide v26, 0x3f36e05b00000000L    # 3.4906598739326E-4

    #@40
    mul-double v24, v24, v26

    #@42
    add-double v22, v22, v24

    #@44
    .line 78
    const/high16 v24, 0x40400000    # 3.0f

    #@46
    mul-float v24, v24, v12

    #@48
    move/from16 v0, v24

    #@4a
    float-to-double v0, v0

    #@4b
    move-wide/from16 v24, v0

    #@4d
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@50
    move-result-wide v24

    #@51
    const-wide v26, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    #@56
    mul-double v24, v24, v26

    #@58
    .line 77
    add-double v20, v22, v24

    #@5a
    .line 81
    .local v20, "trueAnomaly":D
    const-wide v22, 0x3ffcbed85e1ce332L    # 1.796593063

    #@5f
    add-double v22, v22, v20

    #@61
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    #@66
    add-double v16, v22, v24

    #@68
    .line 84
    .local v16, "solarLng":D
    move-wide/from16 v0, p5

    #@6a
    neg-double v0, v0

    #@6b
    move-wide/from16 v22, v0

    #@6d
    const-wide v24, 0x4076800000000000L    # 360.0

    #@72
    div-double v4, v22, v24

    #@74
    .line 85
    .local v4, "arcLongitude":D
    const v22, 0x3a6bedfa    # 9.0E-4f

    #@77
    sub-float v22, v8, v22

    #@79
    move/from16 v0, v22

    #@7b
    float-to-double v0, v0

    #@7c
    move-wide/from16 v22, v0

    #@7e
    sub-double v22, v22, v4

    #@80
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    #@83
    move-result-wide v22

    #@84
    move-wide/from16 v0, v22

    #@86
    long-to-float v13, v0

    #@87
    .line 86
    .local v13, "n":F
    const v22, 0x3a6bedfa    # 9.0E-4f

    #@8a
    add-float v22, v22, v13

    #@8c
    move/from16 v0, v22

    #@8e
    float-to-double v0, v0

    #@8f
    move-wide/from16 v22, v0

    #@91
    add-double v22, v22, v4

    #@93
    float-to-double v0, v12

    #@94
    move-wide/from16 v24, v0

    #@96
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@99
    move-result-wide v24

    #@9a
    const-wide v26, 0x3f75b573eab367a1L    # 0.0053

    #@9f
    mul-double v24, v24, v26

    #@a1
    add-double v22, v22, v24

    #@a3
    .line 87
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@a5
    mul-double v24, v24, v16

    #@a7
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@aa
    move-result-wide v24

    #@ab
    const-wide v26, -0x4083bcd35a858794L    # -0.0069

    #@b0
    mul-double v24, v24, v26

    #@b2
    .line 86
    add-double v18, v22, v24

    #@b4
    .line 90
    .local v18, "solarTransitJ2000":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    #@b7
    move-result-wide v22

    #@b8
    const-wide v24, 0x3fda31a380000000L    # 0.4092797040939331

    #@bd
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@c0
    move-result-wide v24

    #@c1
    mul-double v22, v22, v24

    #@c3
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    #@c6
    move-result-wide v14

    #@c7
    .line 92
    .local v14, "solarDec":D
    const-wide v22, 0x3f91df46a0000000L    # 0.01745329238474369

    #@cc
    mul-double v10, p3, v22

    #@ce
    .line 94
    .local v10, "latRad":D
    const-wide v22, -0x4045311600000000L    # -0.10471975803375244

    #@d3
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    #@d6
    move-result-wide v22

    #@d7
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    #@da
    move-result-wide v24

    #@db
    .line 95
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    #@de
    move-result-wide v26

    #@df
    .line 94
    mul-double v24, v24, v26

    #@e1
    sub-double v22, v22, v24

    #@e3
    .line 95
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    #@e6
    move-result-wide v24

    #@e7
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    #@ea
    move-result-wide v26

    #@eb
    mul-double v24, v24, v26

    #@ed
    .line 94
    div-double v6, v22, v24

    #@ef
    .line 98
    .local v6, "cosHourAngle":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@f1
    cmpl-double v22, v6, v22

    #@f3
    if-ltz v22, :cond_0

    #@f5
    .line 99
    const/16 v22, 0x1

    #@f7
    move/from16 v0, v22

    #@f9
    move-object/from16 v1, p0

    #@fb
    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    #@fd
    .line 100
    const-wide/16 v22, -0x1

    #@ff
    move-wide/from16 v0, v22

    #@101
    move-object/from16 v2, p0

    #@103
    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@105
    .line 101
    const-wide/16 v22, -0x1

    #@107
    move-wide/from16 v0, v22

    #@109
    move-object/from16 v2, p0

    #@10b
    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@10d
    .line 102
    return-void

    #@10e
    .line 103
    :cond_0
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    #@110
    cmpg-double v22, v6, v22

    #@112
    if-gtz v22, :cond_1

    #@114
    .line 104
    const/16 v22, 0x0

    #@116
    move/from16 v0, v22

    #@118
    move-object/from16 v1, p0

    #@11a
    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    #@11c
    .line 105
    const-wide/16 v22, -0x1

    #@11e
    move-wide/from16 v0, v22

    #@120
    move-object/from16 v2, p0

    #@122
    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@124
    .line 106
    const-wide/16 v22, -0x1

    #@126
    move-wide/from16 v0, v22

    #@128
    move-object/from16 v2, p0

    #@12a
    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@12c
    .line 107
    return-void

    #@12d
    .line 110
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    #@130
    move-result-wide v22

    #@131
    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    #@136
    div-double v22, v22, v24

    #@138
    move-wide/from16 v0, v22

    #@13a
    double-to-float v9, v0

    #@13b
    .line 112
    .local v9, "hourAngle":F
    float-to-double v0, v9

    #@13c
    move-wide/from16 v22, v0

    #@13e
    add-double v22, v22, v18

    #@140
    const-wide v24, 0x4194997000000000L    # 8.64E7

    #@145
    mul-double v22, v22, v24

    #@147
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    #@14a
    move-result-wide v22

    #@14b
    const-wide v24, 0xdc6d62da00L

    #@150
    add-long v22, v22, v24

    #@152
    move-wide/from16 v0, v22

    #@154
    move-object/from16 v2, p0

    #@156
    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@158
    .line 113
    float-to-double v0, v9

    #@159
    move-wide/from16 v22, v0

    #@15b
    sub-double v22, v18, v22

    #@15d
    const-wide v24, 0x4194997000000000L    # 8.64E7

    #@162
    mul-double v22, v22, v24

    #@164
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    #@167
    move-result-wide v22

    #@168
    const-wide v24, 0xdc6d62da00L

    #@16d
    add-long v22, v22, v24

    #@16f
    move-wide/from16 v0, v22

    #@171
    move-object/from16 v2, p0

    #@173
    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@175
    .line 115
    move-object/from16 v0, p0

    #@177
    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunrise:J

    #@179
    move-wide/from16 v22, v0

    #@17b
    cmp-long v22, v22, p1

    #@17d
    if-gez v22, :cond_2

    #@17f
    move-object/from16 v0, p0

    #@181
    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunset:J

    #@183
    move-wide/from16 v22, v0

    #@185
    cmp-long v22, v22, p1

    #@187
    if-lez v22, :cond_2

    #@189
    .line 116
    const/16 v22, 0x0

    #@18b
    move/from16 v0, v22

    #@18d
    move-object/from16 v1, p0

    #@18f
    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    #@191
    .line 70
    :goto_0
    return-void

    #@192
    .line 118
    :cond_2
    const/16 v22, 0x1

    #@194
    move/from16 v0, v22

    #@196
    move-object/from16 v1, p0

    #@198
    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    #@19a
    goto :goto_0
.end method
