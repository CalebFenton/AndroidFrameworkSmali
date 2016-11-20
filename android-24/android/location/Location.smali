.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$1;,
        Landroid/location/Location$2;,
        Landroid/location/Location$BearingDistanceCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ACCURACY_MASK:B = 0x8t

.field private static final HAS_ALTITUDE_MASK:B = 0x1t

.field private static final HAS_BEARING_MASK:B = 0x4t

.field private static final HAS_MOCK_PROVIDER_MASK:B = 0x10t

.field private static final HAS_SPEED_MASK:B = 0x2t

.field private static sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:B

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static synthetic -set0(Landroid/location/Location;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/location/Location;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/Location;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Location;->mBearing:F

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/location/Location;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/location/Location;B)B
    .locals 0

    #@0
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/location/Location;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/Location;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/Location;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    #@2
    return p1
.end method

.method static synthetic -set9(Landroid/location/Location;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    #@2
    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Landroid/location/Location$1;

    #@2
    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    #@5
    .line 105
    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    #@7
    .line 880
    new-instance v0, Landroid/location/Location$2;

    #@9
    invoke-direct {v0}, Landroid/location/Location$2;-><init>()V

    #@c
    .line 879
    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 6
    .param p1, "l"    # Landroid/location/Location;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const-wide/16 v0, 0x0

    #@5
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 114
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    #@a
    .line 115
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@c
    .line 116
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@e
    .line 117
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@10
    .line 118
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@12
    .line 119
    iput v2, p0, Landroid/location/Location;->mSpeed:F

    #@14
    .line 120
    iput v2, p0, Landroid/location/Location;->mBearing:F

    #@16
    .line 121
    iput v2, p0, Landroid/location/Location;->mAccuracy:F

    #@18
    .line 122
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@1b
    .line 125
    const/4 v0, 0x0

    #@1c
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@1e
    .line 143
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@21
    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const-wide/16 v0, 0x0

    #@5
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 114
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    #@a
    .line 115
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@c
    .line 116
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@e
    .line 117
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@10
    .line 118
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@12
    .line 119
    iput v2, p0, Landroid/location/Location;->mSpeed:F

    #@14
    .line 120
    iput v2, p0, Landroid/location/Location;->mBearing:F

    #@16
    .line 121
    iput v2, p0, Landroid/location/Location;->mAccuracy:F

    #@18
    .line 122
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@1b
    .line 125
    const/4 v0, 0x0

    #@1c
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@1e
    .line 136
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@20
    .line 135
    return-void
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 82
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # Landroid/location/Location$BearingDistanceCache;

    #@0
    .prologue
    .line 317
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@5
    mul-double p0, p0, v70

    #@7
    .line 318
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@c
    mul-double p4, p4, v70

    #@e
    .line 319
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@13
    mul-double p2, p2, v70

    #@15
    .line 320
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@1a
    mul-double p6, p6, v70

    #@1c
    .line 324
    const-wide v70, 0x40d4e22be425af00L    # 21384.685800000094

    #@21
    .line 322
    const-wide v72, 0x415854a640000000L    # 6378137.0

    #@26
    .line 324
    div-double v40, v70, v72

    #@28
    .line 325
    .local v40, "f":D
    const-wide v70, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    #@2d
    const-wide v72, 0x42c260252eea6b87L    # 4.0408299984087055E13

    #@32
    sub-double v70, v70, v72

    #@34
    const-wide v72, 0x42c260252eea6b87L    # 4.0408299984087055E13

    #@39
    div-double v16, v70, v72

    #@3b
    .line 327
    .local v16, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    #@3d
    .line 328
    .local v10, "L":D
    const-wide/16 v4, 0x0

    #@3f
    .line 329
    .local v4, "A":D
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    #@41
    sub-double v70, v70, v40

    #@43
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    #@46
    move-result-wide v72

    #@47
    mul-double v70, v70, v72

    #@49
    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->atan(D)D

    #@4c
    move-result-wide v12

    #@4d
    .line 330
    .local v12, "U1":D
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    #@4f
    sub-double v70, v70, v40

    #@51
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    #@54
    move-result-wide v72

    #@55
    mul-double v70, v70, v72

    #@57
    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->atan(D)D

    #@5a
    move-result-wide v14

    #@5b
    .line 332
    .local v14, "U2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@5e
    move-result-wide v28

    #@5f
    .line 333
    .local v28, "cosU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    #@62
    move-result-wide v32

    #@63
    .line 334
    .local v32, "cosU2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@66
    move-result-wide v58

    #@67
    .line 335
    .local v58, "sinU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    #@6a
    move-result-wide v62

    #@6b
    .line 336
    .local v62, "sinU2":D
    mul-double v30, v28, v32

    #@6d
    .line 337
    .local v30, "cosU1cosU2":D
    mul-double v60, v58, v62

    #@6f
    .line 339
    .local v60, "sinU1sinU2":D
    const-wide/16 v48, 0x0

    #@71
    .line 340
    .local v48, "sigma":D
    const-wide/16 v36, 0x0

    #@73
    .line 341
    .local v36, "deltaSigma":D
    const-wide/16 v26, 0x0

    #@75
    .line 342
    .local v26, "cosSqAlpha":D
    const-wide/16 v18, 0x0

    #@77
    .line 343
    .local v18, "cos2SM":D
    const-wide/16 v24, 0x0

    #@79
    .line 344
    .local v24, "cosSigma":D
    const-wide/16 v54, 0x0

    #@7b
    .line 345
    .local v54, "sinSigma":D
    const-wide/16 v22, 0x0

    #@7d
    .line 346
    .local v22, "cosLambda":D
    const-wide/16 v52, 0x0

    #@7f
    .line 348
    .local v52, "sinLambda":D
    move-wide/from16 v44, v10

    #@81
    .line 349
    .local v44, "lambda":D
    const/16 v43, 0x0

    #@83
    .line 315
    .local v43, "iter":I
    :goto_0
    const/16 v70, 0x14

    #@85
    .line 349
    move/from16 v0, v43

    #@87
    move/from16 v1, v70

    #@89
    if-ge v0, v1, :cond_0

    #@8b
    .line 350
    move-wide/from16 v46, v44

    #@8d
    .line 351
    .local v46, "lambdaOrig":D
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    #@90
    move-result-wide v22

    #@91
    .line 352
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sin(D)D

    #@94
    move-result-wide v52

    #@95
    .line 353
    mul-double v64, v32, v52

    #@97
    .line 354
    .local v64, "t1":D
    mul-double v70, v28, v62

    #@99
    mul-double v72, v58, v32

    #@9b
    mul-double v72, v72, v22

    #@9d
    sub-double v66, v70, v72

    #@9f
    .line 355
    .local v66, "t2":D
    mul-double v70, v64, v64

    #@a1
    mul-double v72, v66, v66

    #@a3
    add-double v56, v70, v72

    #@a5
    .line 356
    .local v56, "sinSqSigma":D
    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    #@a8
    move-result-wide v54

    #@a9
    .line 357
    mul-double v70, v30, v22

    #@ab
    add-double v24, v60, v70

    #@ad
    .line 358
    move-wide/from16 v0, v54

    #@af
    move-wide/from16 v2, v24

    #@b1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@b4
    move-result-wide v48

    #@b5
    .line 359
    const-wide/16 v70, 0x0

    #@b7
    cmpl-double v70, v54, v70

    #@b9
    if-nez v70, :cond_1

    #@bb
    const-wide/16 v50, 0x0

    #@bd
    .line 361
    .local v50, "sinAlpha":D
    :goto_1
    mul-double v70, v50, v50

    #@bf
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    #@c1
    sub-double v26, v72, v70

    #@c3
    .line 362
    const-wide/16 v70, 0x0

    #@c5
    cmpl-double v70, v26, v70

    #@c7
    if-nez v70, :cond_2

    #@c9
    const-wide/16 v18, 0x0

    #@cb
    .line 365
    :goto_2
    mul-double v68, v26, v16

    #@cd
    .line 366
    .local v68, "uSquared":D
    const-wide/high16 v70, 0x40d0000000000000L    # 16384.0

    #@cf
    div-double v70, v68, v70

    #@d1
    .line 368
    const-wide v72, 0x4065e00000000000L    # 175.0

    #@d6
    mul-double v72, v72, v68

    #@d8
    const-wide/high16 v74, 0x4074000000000000L    # 320.0

    #@da
    sub-double v72, v74, v72

    #@dc
    mul-double v72, v72, v68

    #@de
    const-wide/high16 v74, -0x3f78000000000000L    # -768.0

    #@e0
    add-double v72, v72, v74

    #@e2
    .line 367
    mul-double v72, v72, v68

    #@e4
    const-wide/high16 v74, 0x40b0000000000000L    # 4096.0

    #@e6
    add-double v72, v72, v74

    #@e8
    .line 366
    mul-double v70, v70, v72

    #@ea
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    #@ec
    add-double v4, v72, v70

    #@ee
    .line 369
    const-wide/high16 v70, 0x4090000000000000L    # 1024.0

    #@f0
    div-double v70, v68, v70

    #@f2
    .line 371
    const-wide v72, 0x4047800000000000L    # 47.0

    #@f7
    mul-double v72, v72, v68

    #@f9
    const-wide v74, 0x4052800000000000L    # 74.0

    #@fe
    sub-double v72, v74, v72

    #@100
    mul-double v72, v72, v68

    #@102
    const-wide/high16 v74, -0x3fa0000000000000L    # -128.0

    #@104
    add-double v72, v72, v74

    #@106
    .line 370
    mul-double v72, v72, v68

    #@108
    const-wide/high16 v74, 0x4070000000000000L    # 256.0

    #@10a
    add-double v72, v72, v74

    #@10c
    .line 369
    mul-double v6, v70, v72

    #@10e
    .line 372
    .local v6, "B":D
    const-wide/high16 v70, 0x4030000000000000L    # 16.0

    #@110
    div-double v70, v40, v70

    #@112
    mul-double v70, v70, v26

    #@114
    .line 374
    const-wide/high16 v72, 0x4008000000000000L    # 3.0

    #@116
    mul-double v72, v72, v26

    #@118
    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    #@11a
    sub-double v72, v74, v72

    #@11c
    mul-double v72, v72, v40

    #@11e
    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    #@120
    add-double v72, v72, v74

    #@122
    .line 372
    mul-double v8, v70, v72

    #@124
    .line 375
    .local v8, "C":D
    mul-double v20, v18, v18

    #@126
    .line 376
    .local v20, "cos2SMSq":D
    mul-double v70, v6, v54

    #@128
    .line 377
    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    #@12a
    div-double v72, v6, v72

    #@12c
    .line 378
    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    #@12e
    mul-double v74, v74, v20

    #@130
    const-wide/high16 v76, -0x4010000000000000L    # -1.0

    #@132
    add-double v74, v74, v76

    #@134
    mul-double v74, v74, v24

    #@136
    .line 379
    const-wide/high16 v76, 0x4018000000000000L    # 6.0

    #@138
    div-double v76, v6, v76

    #@13a
    mul-double v76, v76, v18

    #@13c
    .line 380
    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    #@13e
    mul-double v78, v78, v54

    #@140
    mul-double v78, v78, v54

    #@142
    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    #@144
    add-double v78, v78, v80

    #@146
    .line 379
    mul-double v76, v76, v78

    #@148
    .line 381
    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    #@14a
    mul-double v78, v78, v20

    #@14c
    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    #@14e
    add-double v78, v78, v80

    #@150
    .line 379
    mul-double v76, v76, v78

    #@152
    .line 378
    sub-double v74, v74, v76

    #@154
    .line 377
    mul-double v72, v72, v74

    #@156
    add-double v72, v72, v18

    #@158
    .line 376
    mul-double v36, v70, v72

    #@15a
    .line 384
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    #@15c
    sub-double v70, v70, v8

    #@15e
    mul-double v70, v70, v40

    #@160
    mul-double v70, v70, v50

    #@162
    .line 385
    mul-double v72, v8, v54

    #@164
    .line 386
    mul-double v74, v8, v24

    #@166
    .line 387
    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    #@168
    mul-double v76, v76, v18

    #@16a
    mul-double v76, v76, v18

    #@16c
    const-wide/high16 v78, -0x4010000000000000L    # -1.0

    #@16e
    add-double v76, v76, v78

    #@170
    .line 386
    mul-double v74, v74, v76

    #@172
    add-double v74, v74, v18

    #@174
    .line 385
    mul-double v72, v72, v74

    #@176
    add-double v72, v72, v48

    #@178
    .line 384
    mul-double v70, v70, v72

    #@17a
    .line 383
    add-double v44, v10, v70

    #@17c
    .line 389
    sub-double v70, v44, v46

    #@17e
    div-double v34, v70, v44

    #@180
    .line 390
    .local v34, "delta":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    #@183
    move-result-wide v70

    #@184
    const-wide v72, 0x3d719799812dea11L    # 1.0E-12

    #@189
    cmpg-double v70, v70, v72

    #@18b
    if-gez v70, :cond_3

    #@18d
    .line 323
    .end local v6    # "B":D
    .end local v8    # "C":D
    .end local v20    # "cos2SMSq":D
    .end local v34    # "delta":D
    .end local v46    # "lambdaOrig":D
    .end local v50    # "sinAlpha":D
    .end local v56    # "sinSqSigma":D
    .end local v64    # "t1":D
    .end local v66    # "t2":D
    .end local v68    # "uSquared":D
    :cond_0
    const-wide v70, 0x41583fc4141bda51L    # 6356752.3142

    #@192
    .line 395
    mul-double v70, v70, v4

    #@194
    sub-double v72, v48, v36

    #@196
    mul-double v70, v70, v72

    #@198
    move-wide/from16 v0, v70

    #@19a
    double-to-float v0, v0

    #@19b
    move/from16 v38, v0

    #@19d
    .line 396
    .local v38, "distance":F
    move-object/from16 v0, p8

    #@19f
    move/from16 v1, v38

    #@1a1
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set0(Landroid/location/Location$BearingDistanceCache;F)F

    #@1a4
    .line 397
    mul-double v70, v32, v52

    #@1a6
    .line 398
    mul-double v72, v28, v62

    #@1a8
    mul-double v74, v58, v32

    #@1aa
    mul-double v74, v74, v22

    #@1ac
    sub-double v72, v72, v74

    #@1ae
    .line 397
    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    #@1b1
    move-result-wide v70

    #@1b2
    move-wide/from16 v0, v70

    #@1b4
    double-to-float v0, v0

    #@1b5
    move/from16 v42, v0

    #@1b7
    .line 399
    .local v42, "initialBearing":F
    move/from16 v0, v42

    #@1b9
    float-to-double v0, v0

    #@1ba
    move-wide/from16 v70, v0

    #@1bc
    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@1c1
    mul-double v70, v70, v72

    #@1c3
    move-wide/from16 v0, v70

    #@1c5
    double-to-float v0, v0

    #@1c6
    move/from16 v42, v0

    #@1c8
    .line 400
    move-object/from16 v0, p8

    #@1ca
    move/from16 v1, v42

    #@1cc
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set2(Landroid/location/Location$BearingDistanceCache;F)F

    #@1cf
    .line 401
    mul-double v70, v28, v52

    #@1d1
    .line 402
    move-wide/from16 v0, v58

    #@1d3
    neg-double v0, v0

    #@1d4
    move-wide/from16 v72, v0

    #@1d6
    mul-double v72, v72, v32

    #@1d8
    mul-double v74, v28, v62

    #@1da
    mul-double v74, v74, v22

    #@1dc
    add-double v72, v72, v74

    #@1de
    .line 401
    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    #@1e1
    move-result-wide v70

    #@1e2
    move-wide/from16 v0, v70

    #@1e4
    double-to-float v0, v0

    #@1e5
    move/from16 v39, v0

    #@1e7
    .line 403
    .local v39, "finalBearing":F
    move/from16 v0, v39

    #@1e9
    float-to-double v0, v0

    #@1ea
    move-wide/from16 v70, v0

    #@1ec
    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@1f1
    mul-double v70, v70, v72

    #@1f3
    move-wide/from16 v0, v70

    #@1f5
    double-to-float v0, v0

    #@1f6
    move/from16 v39, v0

    #@1f8
    .line 404
    move-object/from16 v0, p8

    #@1fa
    move/from16 v1, v39

    #@1fc
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set1(Landroid/location/Location$BearingDistanceCache;F)F

    #@1ff
    .line 405
    move-object/from16 v0, p8

    #@201
    move-wide/from16 v1, p0

    #@203
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set3(Landroid/location/Location$BearingDistanceCache;D)D

    #@206
    .line 406
    move-object/from16 v0, p8

    #@208
    move-wide/from16 v1, p4

    #@20a
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set4(Landroid/location/Location$BearingDistanceCache;D)D

    #@20d
    .line 407
    move-object/from16 v0, p8

    #@20f
    move-wide/from16 v1, p2

    #@211
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set5(Landroid/location/Location$BearingDistanceCache;D)D

    #@214
    .line 408
    move-object/from16 v0, p8

    #@216
    move-wide/from16 v1, p6

    #@218
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set6(Landroid/location/Location$BearingDistanceCache;D)D

    #@21b
    .line 311
    return-void

    #@21c
    .line 360
    .end local v38    # "distance":F
    .end local v39    # "finalBearing":F
    .end local v42    # "initialBearing":F
    .restart local v46    # "lambdaOrig":D
    .restart local v56    # "sinSqSigma":D
    .restart local v64    # "t1":D
    .restart local v66    # "t2":D
    :cond_1
    mul-double v70, v30, v52

    #@21e
    div-double v50, v70, v54

    #@220
    goto/16 :goto_1

    #@222
    .line 363
    .restart local v50    # "sinAlpha":D
    :cond_2
    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    #@224
    mul-double v70, v70, v60

    #@226
    div-double v70, v70, v26

    #@228
    sub-double v18, v24, v70

    #@22a
    goto/16 :goto_2

    #@22c
    .line 349
    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v20    # "cos2SMSq":D
    .restart local v34    # "delta":D
    .restart local v68    # "uSquared":D
    :cond_3
    add-int/lit8 v43, v43, 0x1

    #@22e
    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 22
    .param p0, "coordinate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    if-nez p0, :cond_0

    #@2
    .line 245
    new-instance v18, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v19, "coordinate"

    #@7
    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v18

    #@b
    .line 248
    :cond_0
    const/4 v8, 0x0

    #@c
    .line 249
    .local v8, "negative":Z
    const/16 v18, 0x0

    #@e
    move-object/from16 v0, p0

    #@10
    move/from16 v1, v18

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v18

    #@16
    const/16 v19, 0x2d

    #@18
    move/from16 v0, v18

    #@1a
    move/from16 v1, v19

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 250
    const/16 v18, 0x1

    #@20
    move-object/from16 v0, p0

    #@22
    move/from16 v1, v18

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    .line 251
    const/4 v8, 0x1

    #@29
    .line 254
    :cond_1
    new-instance v14, Ljava/util/StringTokenizer;

    #@2b
    const-string/jumbo v18, ":"

    #@2e
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, v18

    #@32
    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 255
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->countTokens()I

    #@38
    move-result v15

    #@39
    .line 256
    .local v15, "tokens":I
    const/16 v18, 0x1

    #@3b
    move/from16 v0, v18

    #@3d
    if-ge v15, v0, :cond_2

    #@3f
    .line 257
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v19, Ljava/lang/StringBuilder;

    #@43
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v20, "coordinate="

    #@49
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v19

    #@4d
    move-object/from16 v0, v19

    #@4f
    move-object/from16 v1, p0

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v19

    #@55
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v19

    #@59
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v18

    #@5d
    .line 260
    :cond_2
    :try_start_0
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 262
    .local v3, "degrees":Ljava/lang/String;
    const/16 v18, 0x1

    #@63
    move/from16 v0, v18

    #@65
    if-ne v15, v0, :cond_4

    #@67
    .line 263
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@6a
    move-result-wide v16

    #@6b
    .line 264
    .local v16, "val":D
    if-eqz v8, :cond_3

    #@6d
    move-wide/from16 v0, v16

    #@6f
    neg-double v0, v0

    #@70
    move-wide/from16 v16, v0

    #@72
    .end local v16    # "val":D
    :cond_3
    return-wide v16

    #@73
    .line 267
    :cond_4
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    .line 268
    .local v5, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7a
    move-result v2

    #@7b
    .line 270
    .local v2, "deg":I
    const-wide/16 v10, 0x0

    #@7d
    .line 271
    .local v10, "sec":D
    const/4 v12, 0x0

    #@7e
    .line 273
    .local v12, "secPresent":Z
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@81
    move-result v18

    #@82
    if-eqz v18, :cond_7

    #@84
    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@87
    move-result v18

    #@88
    move/from16 v0, v18

    #@8a
    int-to-double v6, v0

    #@8b
    .line 275
    .local v6, "min":D
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@8e
    move-result-object v13

    #@8f
    .line 276
    .local v13, "seconds":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@92
    move-result-wide v10

    #@93
    .line 277
    const/4 v12, 0x1

    #@94
    .line 282
    .end local v13    # "seconds":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_9

    #@96
    const/16 v18, 0xb4

    #@98
    move/from16 v0, v18

    #@9a
    if-ne v2, v0, :cond_9

    #@9c
    .line 283
    const-wide/16 v18, 0x0

    #@9e
    cmpl-double v18, v6, v18

    #@a0
    if-nez v18, :cond_9

    #@a2
    const-wide/16 v18, 0x0

    #@a4
    cmpl-double v18, v10, v18

    #@a6
    if-nez v18, :cond_8

    #@a8
    const/4 v4, 0x1

    #@a9
    .line 286
    .local v4, "isNegative180":Z
    :goto_1
    int-to-double v0, v2

    #@aa
    move-wide/from16 v18, v0

    #@ac
    const-wide/16 v20, 0x0

    #@ae
    cmpg-double v18, v18, v20

    #@b0
    if-ltz v18, :cond_a

    #@b2
    const/16 v18, 0xb3

    #@b4
    move/from16 v0, v18

    #@b6
    if-le v2, v0, :cond_5

    #@b8
    if-eqz v4, :cond_a

    #@ba
    .line 291
    :cond_5
    const-wide/16 v18, 0x0

    #@bc
    cmpg-double v18, v6, v18

    #@be
    if-ltz v18, :cond_6

    #@c0
    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    #@c2
    cmpl-double v18, v6, v18

    #@c4
    if-ltz v18, :cond_b

    #@c6
    .line 292
    :cond_6
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@c8
    new-instance v19, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v20, "coordinate="

    #@d0
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v19

    #@d4
    move-object/from16 v0, v19

    #@d6
    move-object/from16 v1, p0

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v19

    #@dc
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v19

    #@e0
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e3
    throw v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e4
    .line 305
    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "min":D
    .end local v10    # "sec":D
    .end local v12    # "secPresent":Z
    :catch_0
    move-exception v9

    #@e5
    .line 306
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@e7
    new-instance v19, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v20, "coordinate="

    #@ef
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v19

    #@f3
    move-object/from16 v0, v19

    #@f5
    move-object/from16 v1, p0

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v19

    #@fb
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v19

    #@ff
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@102
    throw v18

    #@103
    .line 279
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v5    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    .restart local v12    # "secPresent":Z
    :cond_7
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@106
    move-result-wide v6

    #@107
    .restart local v6    # "min":D
    goto :goto_0

    #@108
    .line 283
    :cond_8
    const/4 v4, 0x0

    #@109
    .restart local v4    # "isNegative180":Z
    goto :goto_1

    #@10a
    .line 282
    .end local v4    # "isNegative180":Z
    :cond_9
    const/4 v4, 0x0

    #@10b
    .restart local v4    # "isNegative180":Z
    goto :goto_1

    #@10c
    .line 287
    :cond_a
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@10e
    new-instance v19, Ljava/lang/StringBuilder;

    #@110
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v20, "coordinate="

    #@116
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v19

    #@11a
    move-object/from16 v0, v19

    #@11c
    move-object/from16 v1, p0

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v19

    #@122
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v19

    #@126
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@129
    throw v18

    #@12a
    .line 291
    :cond_b
    if-eqz v12, :cond_c

    #@12c
    const-wide v18, 0x404d800000000000L    # 59.0

    #@131
    cmpl-double v18, v6, v18

    #@133
    if-gtz v18, :cond_6

    #@135
    .line 297
    :cond_c
    const-wide/16 v18, 0x0

    #@137
    cmpg-double v18, v10, v18

    #@139
    if-ltz v18, :cond_d

    #@13b
    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    #@13d
    cmpl-double v18, v10, v18

    #@13f
    if-ltz v18, :cond_e

    #@141
    .line 298
    :cond_d
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@143
    new-instance v19, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v20, "coordinate="

    #@14b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v19

    #@14f
    move-object/from16 v0, v19

    #@151
    move-object/from16 v1, p0

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v19

    #@157
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v19

    #@15b
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15e
    throw v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@15f
    .line 302
    :cond_e
    int-to-double v0, v2

    #@160
    move-wide/from16 v18, v0

    #@162
    const-wide v20, 0x40ac200000000000L    # 3600.0

    #@167
    mul-double v18, v18, v20

    #@169
    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    #@16b
    mul-double v20, v20, v6

    #@16d
    add-double v18, v18, v20

    #@16f
    add-double v16, v18, v10

    #@171
    .line 303
    .restart local v16    # "val":D
    const-wide v18, 0x40ac200000000000L    # 3600.0

    #@176
    div-double v16, v16, v18

    #@178
    .line 304
    if-eqz v8, :cond_f

    #@17a
    move-wide/from16 v0, v16

    #@17c
    neg-double v0, v0

    #@17d
    move-wide/from16 v16, v0

    #@17f
    .end local v16    # "val":D
    :cond_f
    return-wide v16
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 12
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    #@0
    .prologue
    const/16 v10, 0x3a

    #@2
    const/4 v7, 0x1

    #@3
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    #@5
    const/4 v6, 0x2

    #@6
    .line 194
    const-wide v4, -0x3f99800000000000L    # -180.0

    #@b
    cmpg-double v4, p0, v4

    #@d
    if-ltz v4, :cond_0

    #@f
    const-wide v4, 0x4066800000000000L    # 180.0

    #@14
    cmpl-double v4, p0, v4

    #@16
    if-lez v4, :cond_1

    #@18
    .line 196
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v6, "coordinate="

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v4

    #@32
    .line 195
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@35
    move-result v4

    #@36
    .line 194
    if-nez v4, :cond_0

    #@38
    .line 198
    if-eqz p2, :cond_2

    #@3a
    .line 199
    if-eq p2, v7, :cond_2

    #@3c
    .line 200
    if-eq p2, v6, :cond_2

    #@3e
    .line 201
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "outputType="

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v4

    #@58
    .line 204
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    .line 207
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    #@5f
    cmpg-double v4, p0, v4

    #@61
    if-gez v4, :cond_3

    #@63
    .line 208
    const/16 v4, 0x2d

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 209
    neg-double p0, p0

    #@69
    .line 212
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    #@6b
    const-string/jumbo v4, "###.#####"

    #@6e
    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    #@71
    .line 213
    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v7, :cond_4

    #@73
    if-ne p2, v6, :cond_5

    #@75
    .line 214
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    #@78
    move-result-wide v4

    #@79
    double-to-int v0, v4

    #@7a
    .line 215
    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    .line 216
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@80
    .line 217
    int-to-double v4, v0

    #@81
    sub-double/2addr p0, v4

    #@82
    .line 218
    mul-double/2addr p0, v8

    #@83
    .line 219
    if-ne p2, v6, :cond_5

    #@85
    .line 220
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    #@88
    move-result-wide v4

    #@89
    double-to-int v2, v4

    #@8a
    .line 221
    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    .line 222
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    .line 223
    int-to-double v4, v2

    #@91
    sub-double/2addr p0, v4

    #@92
    .line 224
    mul-double/2addr p0, v8

    #@93
    .line 227
    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 12
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    #@0
    .prologue
    .line 431
    if-eqz p8, :cond_0

    #@2
    move-object/from16 v0, p8

    #@4
    array-length v2, v0

    #@5
    const/4 v3, 0x1

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 432
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "results is null or has length < 1"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 434
    :cond_1
    sget-object v2, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    #@13
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@16
    move-result-object v10

    #@17
    check-cast v10, Landroid/location/Location$BearingDistanceCache;

    #@19
    .local v10, "cache":Landroid/location/Location$BearingDistanceCache;
    move-wide v2, p0

    #@1a
    move-wide v4, p2

    #@1b
    move-wide/from16 v6, p4

    #@1d
    move-wide/from16 v8, p6

    #@1f
    .line 435
    invoke-static/range {v2 .. v10}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    #@22
    .line 437
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get0(Landroid/location/Location$BearingDistanceCache;)F

    #@25
    move-result v2

    #@26
    const/4 v3, 0x0

    #@27
    aput v2, p8, v3

    #@29
    .line 438
    move-object/from16 v0, p8

    #@2b
    array-length v2, v0

    #@2c
    const/4 v3, 0x1

    #@2d
    if-le v2, v3, :cond_2

    #@2f
    .line 439
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get2(Landroid/location/Location$BearingDistanceCache;)F

    #@32
    move-result v2

    #@33
    const/4 v3, 0x1

    #@34
    aput v2, p8, v3

    #@36
    .line 440
    move-object/from16 v0, p8

    #@38
    array-length v2, v0

    #@39
    const/4 v3, 0x2

    #@3a
    if-le v2, v3, :cond_2

    #@3c
    .line 441
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get1(Landroid/location/Location$BearingDistanceCache;)F

    #@3f
    move-result v2

    #@40
    const/4 v3, 0x2

    #@41
    aput v2, p8, v3

    #@43
    .line 430
    :cond_2
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 9
    .param p1, "dest"    # Landroid/location/Location;

    #@0
    .prologue
    .line 476
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    check-cast v8, Landroid/location/Location$BearingDistanceCache;

    #@8
    .line 478
    .local v8, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@a
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get3(Landroid/location/Location$BearingDistanceCache;)D

    #@d
    move-result-wide v2

    #@e
    cmpl-double v0, v0, v2

    #@10
    if-nez v0, :cond_0

    #@12
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@14
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get5(Landroid/location/Location$BearingDistanceCache;)D

    #@17
    move-result-wide v2

    #@18
    cmpl-double v0, v0, v2

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 480
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@1e
    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@20
    .line 481
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    #@22
    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    #@24
    .line 480
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    #@27
    .line 483
    :cond_1
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get2(Landroid/location/Location$BearingDistanceCache;)F

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 479
    :cond_2
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    #@2e
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get4(Landroid/location/Location$BearingDistanceCache;)D

    #@31
    move-result-wide v2

    #@32
    cmpl-double v0, v0, v2

    #@34
    if-nez v0, :cond_0

    #@36
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    #@38
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get6(Landroid/location/Location$BearingDistanceCache;)D

    #@3b
    move-result-wide v2

    #@3c
    cmpl-double v0, v0, v2

    #@3e
    if-eqz v0, :cond_1

    #@40
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 906
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 9
    .param p1, "dest"    # Landroid/location/Location;

    #@0
    .prologue
    .line 455
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    check-cast v8, Landroid/location/Location$BearingDistanceCache;

    #@8
    .line 457
    .local v8, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@a
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get3(Landroid/location/Location$BearingDistanceCache;)D

    #@d
    move-result-wide v2

    #@e
    cmpl-double v0, v0, v2

    #@10
    if-nez v0, :cond_0

    #@12
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@14
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get5(Landroid/location/Location$BearingDistanceCache;)D

    #@17
    move-result-wide v2

    #@18
    cmpl-double v0, v0, v2

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 459
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@1e
    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@20
    .line 460
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    #@22
    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    #@24
    .line 459
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    #@27
    .line 462
    :cond_1
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get0(Landroid/location/Location$BearingDistanceCache;)F

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 458
    :cond_2
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    #@2e
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get4(Landroid/location/Location$BearingDistanceCache;)D

    #@31
    move-result-wide v2

    #@32
    cmpl-double v0, v0, v2

    #@34
    if-nez v0, :cond_0

    #@36
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    #@38
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get6(Landroid/location/Location$BearingDistanceCache;)D

    #@3b
    move-result-wide v2

    #@3c
    cmpl-double v0, v0, v2

    #@3e
    if-eqz v0, :cond_1

    #@40
    goto :goto_0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@18
    .line 875
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    #@0
    .prologue
    .line 753
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    #@2
    return v0
.end method

.method public getAltitude()D
    .locals 2

    #@0
    .prologue
    .line 609
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@2
    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    #@0
    .prologue
    .line 687
    iget v0, p0, Landroid/location/Location;->mBearing:F

    #@2
    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 549
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@2
    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 933
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 934
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v0

    #@b
    .line 935
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 936
    check-cast v0, Landroid/location/Location;

    #@11
    .end local v0    # "value":Landroid/os/Parcelable;
    return-object v0

    #@12
    .line 939
    :cond_0
    return-object v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 835
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    #@0
    .prologue
    .line 568
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@2
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    #@0
    .prologue
    .line 585
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@2
    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    #@0
    .prologue
    .line 646
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    #@2
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 520
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@2
    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 727
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 599
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasBearing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 674
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasSpeed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 637
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isComplete()Z
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 793
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    return v2

    #@8
    .line 794
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    return v2

    #@f
    .line 795
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@11
    cmp-long v0, v0, v4

    #@13
    if-nez v0, :cond_2

    #@15
    return v2

    #@16
    .line 796
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@18
    cmp-long v0, v0, v4

    #@1a
    if-nez v0, :cond_3

    #@1c
    return v2

    #@1d
    .line 797
    :cond_3
    const/4 v0, 0x1

    #@1e
    return v0
.end method

.method public isFromMockProvider()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 962
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public makeComplete()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 811
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "?"

    #@9
    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@b
    .line 812
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 813
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@13
    or-int/lit8 v0, v0, 0x8

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@18
    .line 814
    const/high16 v0, 0x42c80000    # 100.0f

    #@1a
    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    #@1c
    .line 816
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@1e
    cmp-long v0, v0, v2

    #@20
    if-nez v0, :cond_2

    #@22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    #@28
    .line 817
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@2a
    cmp-long v0, v0, v2

    #@2c
    if-nez v0, :cond_3

    #@2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@31
    move-result-wide v0

    #@32
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@34
    .line 810
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    #@0
    .prologue
    .line 775
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    #@3
    .line 776
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    int-to-byte v0, v0

    #@8
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@a
    .line 774
    return-void
.end method

.method public removeAltitude()V
    .locals 2

    #@0
    .prologue
    .line 629
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@4
    .line 630
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@6
    and-int/lit8 v0, v0, -0x2

    #@8
    int-to-byte v0, v0

    #@9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@b
    .line 628
    return-void
.end method

.method public removeBearing()V
    .locals 1

    #@0
    .prologue
    .line 716
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/Location;->mBearing:F

    #@3
    .line 717
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    int-to-byte v0, v0

    #@8
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@a
    .line 715
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    #@0
    .prologue
    .line 666
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    #@3
    .line 667
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    int-to-byte v0, v0

    #@8
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@a
    .line 665
    return-void
.end method

.method public reset()V
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    const-wide/16 v2, 0x0

    #@6
    .line 167
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@8
    .line 168
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    #@a
    .line 169
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@c
    .line 170
    const/4 v0, 0x0

    #@d
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@f
    .line 171
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    #@11
    .line 172
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@13
    .line 173
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@15
    .line 174
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    #@17
    .line 175
    iput v1, p0, Landroid/location/Location;->mBearing:F

    #@19
    .line 176
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    #@1b
    .line 177
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@1d
    .line 166
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 4
    .param p1, "l"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 150
    iget-object v1, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@3
    iput-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@5
    .line 151
    iget-wide v2, p1, Landroid/location/Location;->mTime:J

    #@7
    iput-wide v2, p0, Landroid/location/Location;->mTime:J

    #@9
    .line 152
    iget-wide v2, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@b
    iput-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@d
    .line 153
    iget-byte v1, p1, Landroid/location/Location;->mFieldsMask:B

    #@f
    iput-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    #@11
    .line 154
    iget-wide v2, p1, Landroid/location/Location;->mLatitude:D

    #@13
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    #@15
    .line 155
    iget-wide v2, p1, Landroid/location/Location;->mLongitude:D

    #@17
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@19
    .line 156
    iget-wide v2, p1, Landroid/location/Location;->mAltitude:D

    #@1b
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@1d
    .line 157
    iget v1, p1, Landroid/location/Location;->mSpeed:F

    #@1f
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    #@21
    .line 158
    iget v1, p1, Landroid/location/Location;->mBearing:F

    #@23
    iput v1, p0, Landroid/location/Location;->mBearing:F

    #@25
    .line 159
    iget v1, p1, Landroid/location/Location;->mAccuracy:F

    #@27
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    #@29
    .line 160
    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2b
    if-nez v1, :cond_0

    #@2d
    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2f
    .line 149
    return-void

    #@30
    .line 160
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@32
    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@34
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@37
    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "accuracy"    # F

    #@0
    .prologue
    .line 764
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    #@2
    .line 765
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@9
    .line 763
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    #@0
    .prologue
    .line 618
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    #@2
    .line 619
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@9
    .line 617
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    #@0
    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    #@2
    .line 699
    :goto_0
    const/4 v0, 0x0

    #@3
    cmpg-float v0, p1, v0

    #@5
    if-gez v0, :cond_0

    #@7
    .line 700
    add-float/2addr p1, v1

    #@8
    goto :goto_0

    #@9
    .line 702
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    #@b
    if-ltz v0, :cond_1

    #@d
    .line 703
    sub-float/2addr p1, v1

    #@e
    goto :goto_1

    #@f
    .line 705
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    #@11
    .line 706
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@13
    or-int/lit8 v0, v0, 0x4

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@18
    .line 698
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 558
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@2
    .line 557
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 951
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@b
    .line 953
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@10
    .line 949
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 843
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@5
    .line 842
    return-void

    #@6
    .line 843
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@b
    goto :goto_0
.end method

.method public setIsFromMockProvider(Z)V
    .locals 1
    .param p1, "isFromMockProvider"    # Z

    #@0
    .prologue
    .line 973
    if-eqz p1, :cond_0

    #@2
    .line 974
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@9
    .line 972
    :goto_0
    return-void

    #@a
    .line 976
    :cond_0
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@c
    and-int/lit8 v0, v0, -0x11

    #@e
    int-to-byte v0, v0

    #@f
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@11
    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    #@0
    .prologue
    .line 575
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    #@2
    .line 574
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    #@0
    .prologue
    .line 592
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    #@2
    .line 591
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 499
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@2
    .line 498
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    #@0
    .prologue
    .line 655
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    #@2
    .line 656
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@9
    .line 654
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 530
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    #@2
    .line 529
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 849
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Location["

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 850
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 851
    const-string/jumbo v1, " %.6f,%.6f"

    #@17
    const/4 v2, 0x2

    #@18
    new-array v2, v2, [Ljava/lang/Object;

    #@1a
    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    #@1c
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1f
    move-result-object v3

    #@20
    aput-object v3, v2, v6

    #@22
    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    #@24
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@27
    move-result-object v3

    #@28
    aput-object v3, v2, v7

    #@2a
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 852
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_6

    #@37
    const-string/jumbo v1, " acc=%.0f"

    #@3a
    new-array v2, v7, [Ljava/lang/Object;

    #@3c
    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    #@3e
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@41
    move-result-object v3

    #@42
    aput-object v3, v2, v6

    #@44
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 854
    :goto_0
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    #@4d
    cmp-long v1, v2, v8

    #@4f
    if-nez v1, :cond_0

    #@51
    .line 855
    const-string/jumbo v1, " t=?!?"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 857
    :cond_0
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@59
    cmp-long v1, v2, v8

    #@5b
    if-nez v1, :cond_7

    #@5d
    .line 858
    const-string/jumbo v1, " et=?!?"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 863
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_1

    #@69
    const-string/jumbo v1, " alt="

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@72
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@75
    .line 864
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    #@78
    move-result v1

    #@79
    if-eqz v1, :cond_2

    #@7b
    const-string/jumbo v1, " vel="

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    iget v2, p0, Landroid/location/Location;->mSpeed:F

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@87
    .line 865
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_3

    #@8d
    const-string/jumbo v1, " bear="

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    iget v2, p0, Landroid/location/Location;->mBearing:F

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@99
    .line 866
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_4

    #@9f
    const-string/jumbo v1, " mock"

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 868
    :cond_4
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@a7
    if-eqz v1, :cond_5

    #@a9
    .line 869
    const-string/jumbo v1, " {"

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    const/16 v2, 0x7d

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bb
    .line 871
    :cond_5
    const/16 v1, 0x5d

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c0
    .line 872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    return-object v1

    #@c5
    .line 853
    :cond_6
    const-string/jumbo v1, " acc=???"

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    goto :goto_0

    #@cc
    .line 860
    :cond_7
    const-string/jumbo v1, " et="

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 861
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@d4
    const-wide/32 v4, 0xf4240

    #@d7
    div-long/2addr v2, v4

    #@d8
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@db
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 911
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 912
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 913
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 914
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@14
    .line 915
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@19
    .line 916
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@1e
    .line 917
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@23
    .line 918
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@28
    .line 919
    iget v0, p0, Landroid/location/Location;->mBearing:F

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@2d
    .line 920
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@32
    .line 921
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@37
    .line 910
    return-void
.end method
