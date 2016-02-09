.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$1;
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


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mIsFromMockProvider:Z

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private final mResults:[F

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

.method static synthetic -set10(Landroid/location/Location;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set11(Landroid/location/Location;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/Location;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    #@2
    return p1
.end method

.method static synthetic -set13(Landroid/location/Location;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

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

.method static synthetic -set5(Landroid/location/Location;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/location/Location;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/location/Location;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/location/Location;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    #@2
    return p1
.end method

.method static synthetic -set9(Landroid/location/Location;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 869
    new-instance v0, Landroid/location/Location$1;

    #@2
    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    #@5
    .line 868
    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8
    .param p1, "l"    # Landroid/location/Location;

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
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 82
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    #@b
    .line 83
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@d
    .line 84
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    #@f
    .line 85
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@11
    .line 86
    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    #@13
    .line 87
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@15
    .line 88
    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    #@17
    .line 89
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    #@19
    .line 90
    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    #@1b
    .line 91
    iput v1, p0, Landroid/location/Location;->mBearing:F

    #@1d
    .line 92
    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@1f
    .line 93
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    #@21
    .line 94
    const/4 v0, 0x0

    #@22
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@24
    .line 95
    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@26
    .line 99
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    #@28
    .line 100
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    #@2a
    .line 101
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    #@2c
    .line 102
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    #@2e
    .line 103
    iput v1, p0, Landroid/location/Location;->mDistance:F

    #@30
    .line 104
    iput v1, p0, Landroid/location/Location;->mInitialBearing:F

    #@32
    .line 106
    const/4 v0, 0x2

    #@33
    new-array v0, v0, [F

    #@35
    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    #@37
    .line 124
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@3a
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;

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
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 82
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    #@b
    .line 83
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@d
    .line 84
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    #@f
    .line 85
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@11
    .line 86
    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    #@13
    .line 87
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@15
    .line 88
    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    #@17
    .line 89
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    #@19
    .line 90
    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    #@1b
    .line 91
    iput v1, p0, Landroid/location/Location;->mBearing:F

    #@1d
    .line 92
    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@1f
    .line 93
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    #@21
    .line 94
    const/4 v0, 0x0

    #@22
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@24
    .line 95
    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@26
    .line 99
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    #@28
    .line 100
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    #@2a
    .line 101
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    #@2c
    .line 102
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    #@2e
    .line 103
    iput v1, p0, Landroid/location/Location;->mDistance:F

    #@30
    .line 104
    iput v1, p0, Landroid/location/Location;->mInitialBearing:F

    #@32
    .line 106
    const/4 v0, 0x2

    #@33
    new-array v0, v0, [F

    #@35
    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    #@37
    .line 117
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@39
    .line 116
    return-void
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .locals 82
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # [F

    #@0
    .prologue
    .line 300
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@5
    mul-double p0, p0, v70

    #@7
    .line 301
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@c
    mul-double p4, p4, v70

    #@e
    .line 302
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@13
    mul-double p2, p2, v70

    #@15
    .line 303
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@1a
    mul-double p6, p6, v70

    #@1c
    .line 307
    const-wide v70, 0x40d4e22be425af00L    # 21384.685800000094

    #@21
    .line 305
    const-wide v72, 0x415854a640000000L    # 6378137.0

    #@26
    .line 307
    div-double v40, v70, v72

    #@28
    .line 308
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
    .line 310
    .local v16, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    #@3d
    .line 311
    .local v10, "L":D
    const-wide/16 v4, 0x0

    #@3f
    .line 312
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
    .line 313
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
    .line 315
    .local v14, "U2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@5e
    move-result-wide v28

    #@5f
    .line 316
    .local v28, "cosU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    #@62
    move-result-wide v32

    #@63
    .line 317
    .local v32, "cosU2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@66
    move-result-wide v58

    #@67
    .line 318
    .local v58, "sinU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    #@6a
    move-result-wide v62

    #@6b
    .line 319
    .local v62, "sinU2":D
    mul-double v30, v28, v32

    #@6d
    .line 320
    .local v30, "cosU1cosU2":D
    mul-double v60, v58, v62

    #@6f
    .line 322
    .local v60, "sinU1sinU2":D
    const-wide/16 v48, 0x0

    #@71
    .line 323
    .local v48, "sigma":D
    const-wide/16 v36, 0x0

    #@73
    .line 324
    .local v36, "deltaSigma":D
    const-wide/16 v26, 0x0

    #@75
    .line 325
    .local v26, "cosSqAlpha":D
    const-wide/16 v18, 0x0

    #@77
    .line 326
    .local v18, "cos2SM":D
    const-wide/16 v24, 0x0

    #@79
    .line 327
    .local v24, "cosSigma":D
    const-wide/16 v54, 0x0

    #@7b
    .line 328
    .local v54, "sinSigma":D
    const-wide/16 v22, 0x0

    #@7d
    .line 329
    .local v22, "cosLambda":D
    const-wide/16 v52, 0x0

    #@7f
    .line 331
    .local v52, "sinLambda":D
    move-wide/from16 v44, v10

    #@81
    .line 332
    .local v44, "lambda":D
    const/16 v43, 0x0

    #@83
    .line 298
    .local v43, "iter":I
    :goto_0
    const/16 v70, 0x14

    #@85
    .line 332
    move/from16 v0, v43

    #@87
    move/from16 v1, v70

    #@89
    if-ge v0, v1, :cond_0

    #@8b
    .line 333
    move-wide/from16 v46, v44

    #@8d
    .line 334
    .local v46, "lambdaOrig":D
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    #@90
    move-result-wide v22

    #@91
    .line 335
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sin(D)D

    #@94
    move-result-wide v52

    #@95
    .line 336
    mul-double v64, v32, v52

    #@97
    .line 337
    .local v64, "t1":D
    mul-double v70, v28, v62

    #@99
    mul-double v72, v58, v32

    #@9b
    mul-double v72, v72, v22

    #@9d
    sub-double v66, v70, v72

    #@9f
    .line 338
    .local v66, "t2":D
    mul-double v70, v64, v64

    #@a1
    mul-double v72, v66, v66

    #@a3
    add-double v56, v70, v72

    #@a5
    .line 339
    .local v56, "sinSqSigma":D
    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    #@a8
    move-result-wide v54

    #@a9
    .line 340
    mul-double v70, v30, v22

    #@ab
    add-double v24, v60, v70

    #@ad
    .line 341
    move-wide/from16 v0, v54

    #@af
    move-wide/from16 v2, v24

    #@b1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@b4
    move-result-wide v48

    #@b5
    .line 342
    const-wide/16 v70, 0x0

    #@b7
    cmpl-double v70, v54, v70

    #@b9
    if-nez v70, :cond_2

    #@bb
    const-wide/16 v50, 0x0

    #@bd
    .line 344
    .local v50, "sinAlpha":D
    :goto_1
    mul-double v70, v50, v50

    #@bf
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    #@c1
    sub-double v26, v72, v70

    #@c3
    .line 345
    const-wide/16 v70, 0x0

    #@c5
    cmpl-double v70, v26, v70

    #@c7
    if-nez v70, :cond_3

    #@c9
    const-wide/16 v18, 0x0

    #@cb
    .line 348
    :goto_2
    mul-double v68, v26, v16

    #@cd
    .line 349
    .local v68, "uSquared":D
    const-wide/high16 v70, 0x40d0000000000000L    # 16384.0

    #@cf
    div-double v70, v68, v70

    #@d1
    .line 351
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
    .line 350
    mul-double v72, v72, v68

    #@e4
    const-wide/high16 v74, 0x40b0000000000000L    # 4096.0

    #@e6
    add-double v72, v72, v74

    #@e8
    .line 349
    mul-double v70, v70, v72

    #@ea
    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    #@ec
    add-double v4, v72, v70

    #@ee
    .line 352
    const-wide/high16 v70, 0x4090000000000000L    # 1024.0

    #@f0
    div-double v70, v68, v70

    #@f2
    .line 354
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
    .line 353
    mul-double v72, v72, v68

    #@108
    const-wide/high16 v74, 0x4070000000000000L    # 256.0

    #@10a
    add-double v72, v72, v74

    #@10c
    .line 352
    mul-double v6, v70, v72

    #@10e
    .line 355
    .local v6, "B":D
    const-wide/high16 v70, 0x4030000000000000L    # 16.0

    #@110
    div-double v70, v40, v70

    #@112
    mul-double v70, v70, v26

    #@114
    .line 357
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
    .line 355
    mul-double v8, v70, v72

    #@124
    .line 358
    .local v8, "C":D
    mul-double v20, v18, v18

    #@126
    .line 359
    .local v20, "cos2SMSq":D
    mul-double v70, v6, v54

    #@128
    .line 360
    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    #@12a
    div-double v72, v6, v72

    #@12c
    .line 361
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
    .line 362
    const-wide/high16 v76, 0x4018000000000000L    # 6.0

    #@138
    div-double v76, v6, v76

    #@13a
    mul-double v76, v76, v18

    #@13c
    .line 363
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
    .line 362
    mul-double v76, v76, v78

    #@148
    .line 364
    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    #@14a
    mul-double v78, v78, v20

    #@14c
    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    #@14e
    add-double v78, v78, v80

    #@150
    .line 362
    mul-double v76, v76, v78

    #@152
    .line 361
    sub-double v74, v74, v76

    #@154
    .line 360
    mul-double v72, v72, v74

    #@156
    add-double v72, v72, v18

    #@158
    .line 359
    mul-double v36, v70, v72

    #@15a
    .line 367
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    #@15c
    sub-double v70, v70, v8

    #@15e
    mul-double v70, v70, v40

    #@160
    mul-double v70, v70, v50

    #@162
    .line 368
    mul-double v72, v8, v54

    #@164
    .line 369
    mul-double v74, v8, v24

    #@166
    .line 370
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
    .line 369
    mul-double v74, v74, v76

    #@172
    add-double v74, v74, v18

    #@174
    .line 368
    mul-double v72, v72, v74

    #@176
    add-double v72, v72, v48

    #@178
    .line 367
    mul-double v70, v70, v72

    #@17a
    .line 366
    add-double v44, v10, v70

    #@17c
    .line 372
    sub-double v70, v44, v46

    #@17e
    div-double v34, v70, v44

    #@180
    .line 373
    .local v34, "delta":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    #@183
    move-result-wide v70

    #@184
    const-wide v72, 0x3d719799812dea11L    # 1.0E-12

    #@189
    cmpg-double v70, v70, v72

    #@18b
    if-gez v70, :cond_4

    #@18d
    .line 306
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
    .line 378
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
    .line 379
    .local v38, "distance":F
    const/16 v70, 0x0

    #@19f
    aput v38, p8, v70

    #@1a1
    .line 380
    move-object/from16 v0, p8

    #@1a3
    array-length v0, v0

    #@1a4
    move/from16 v70, v0

    #@1a6
    const/16 v71, 0x1

    #@1a8
    move/from16 v0, v70

    #@1aa
    move/from16 v1, v71

    #@1ac
    if-le v0, v1, :cond_1

    #@1ae
    .line 381
    mul-double v70, v32, v52

    #@1b0
    .line 382
    mul-double v72, v28, v62

    #@1b2
    mul-double v74, v58, v32

    #@1b4
    mul-double v74, v74, v22

    #@1b6
    sub-double v72, v72, v74

    #@1b8
    .line 381
    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    #@1bb
    move-result-wide v70

    #@1bc
    move-wide/from16 v0, v70

    #@1be
    double-to-float v0, v0

    #@1bf
    move/from16 v42, v0

    #@1c1
    .line 383
    .local v42, "initialBearing":F
    move/from16 v0, v42

    #@1c3
    float-to-double v0, v0

    #@1c4
    move-wide/from16 v70, v0

    #@1c6
    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@1cb
    mul-double v70, v70, v72

    #@1cd
    move-wide/from16 v0, v70

    #@1cf
    double-to-float v0, v0

    #@1d0
    move/from16 v42, v0

    #@1d2
    .line 384
    const/16 v70, 0x1

    #@1d4
    aput v42, p8, v70

    #@1d6
    .line 385
    move-object/from16 v0, p8

    #@1d8
    array-length v0, v0

    #@1d9
    move/from16 v70, v0

    #@1db
    const/16 v71, 0x2

    #@1dd
    move/from16 v0, v70

    #@1df
    move/from16 v1, v71

    #@1e1
    if-le v0, v1, :cond_1

    #@1e3
    .line 386
    mul-double v70, v28, v52

    #@1e5
    .line 387
    move-wide/from16 v0, v58

    #@1e7
    neg-double v0, v0

    #@1e8
    move-wide/from16 v72, v0

    #@1ea
    mul-double v72, v72, v32

    #@1ec
    mul-double v74, v28, v62

    #@1ee
    mul-double v74, v74, v22

    #@1f0
    add-double v72, v72, v74

    #@1f2
    .line 386
    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    #@1f5
    move-result-wide v70

    #@1f6
    move-wide/from16 v0, v70

    #@1f8
    double-to-float v0, v0

    #@1f9
    move/from16 v39, v0

    #@1fb
    .line 388
    .local v39, "finalBearing":F
    move/from16 v0, v39

    #@1fd
    float-to-double v0, v0

    #@1fe
    move-wide/from16 v70, v0

    #@200
    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@205
    mul-double v70, v70, v72

    #@207
    move-wide/from16 v0, v70

    #@209
    double-to-float v0, v0

    #@20a
    move/from16 v39, v0

    #@20c
    .line 389
    const/16 v70, 0x2

    #@20e
    aput v39, p8, v70

    #@210
    .line 294
    .end local v39    # "finalBearing":F
    .end local v42    # "initialBearing":F
    :cond_1
    return-void

    #@211
    .line 343
    .end local v38    # "distance":F
    .restart local v46    # "lambdaOrig":D
    .restart local v56    # "sinSqSigma":D
    .restart local v64    # "t1":D
    .restart local v66    # "t2":D
    :cond_2
    mul-double v70, v30, v52

    #@213
    div-double v50, v70, v54

    #@215
    .restart local v50    # "sinAlpha":D
    goto/16 :goto_1

    #@217
    .line 346
    :cond_3
    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    #@219
    mul-double v70, v70, v60

    #@21b
    div-double v70, v70, v26

    #@21d
    sub-double v18, v24, v70

    #@21f
    goto/16 :goto_2

    #@221
    .line 332
    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v20    # "cos2SMSq":D
    .restart local v34    # "delta":D
    .restart local v68    # "uSquared":D
    :cond_4
    add-int/lit8 v43, v43, 0x1

    #@223
    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 22
    .param p0, "coordinate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    if-nez p0, :cond_0

    #@2
    .line 234
    new-instance v15, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v18, "coordinate"

    #@7
    move-object/from16 v0, v18

    #@9
    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v15

    #@d
    .line 237
    :cond_0
    const/4 v8, 0x0

    #@e
    .line 238
    .local v8, "negative":Z
    const/4 v15, 0x0

    #@f
    move-object/from16 v0, p0

    #@11
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v15

    #@15
    const/16 v18, 0x2d

    #@17
    move/from16 v0, v18

    #@19
    if-ne v15, v0, :cond_1

    #@1b
    .line 239
    const/4 v15, 0x1

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    .line 240
    const/4 v8, 0x1

    #@23
    .line 243
    :cond_1
    new-instance v13, Ljava/util/StringTokenizer;

    #@25
    const-string/jumbo v15, ":"

    #@28
    move-object/from16 v0, p0

    #@2a
    invoke-direct {v13, v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 244
    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    #@30
    move-result v14

    #@31
    .line 245
    .local v14, "tokens":I
    const/4 v15, 0x1

    #@32
    if-ge v14, v15, :cond_2

    #@34
    .line 246
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v18, Ljava/lang/StringBuilder;

    #@38
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v19, "coordinate="

    #@3e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v18

    #@42
    move-object/from16 v0, v18

    #@44
    move-object/from16 v1, p0

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v18

    #@4a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v18

    #@4e
    move-object/from16 v0, v18

    #@50
    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v15

    #@54
    .line 249
    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 251
    .local v3, "degrees":Ljava/lang/String;
    const/4 v15, 0x1

    #@59
    if-ne v14, v15, :cond_4

    #@5b
    .line 252
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@5e
    move-result-wide v16

    #@5f
    .line 253
    .local v16, "val":D
    if-eqz v8, :cond_3

    #@61
    move-wide/from16 v0, v16

    #@63
    neg-double v0, v0

    #@64
    move-wide/from16 v16, v0

    #@66
    .end local v16    # "val":D
    :cond_3
    return-wide v16

    #@67
    .line 256
    :cond_4
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 257
    .local v5, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6e
    move-result v2

    #@6f
    .line 259
    .local v2, "deg":I
    const-wide/16 v10, 0x0

    #@71
    .line 261
    .local v10, "sec":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@74
    move-result v15

    #@75
    if-eqz v15, :cond_7

    #@77
    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7a
    move-result v15

    #@7b
    int-to-double v6, v15

    #@7c
    .line 263
    .local v6, "min":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@7f
    move-result-object v12

    #@80
    .line 264
    .local v12, "seconds":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@83
    move-result-wide v10

    #@84
    .line 269
    .end local v12    # "seconds":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_9

    #@86
    const/16 v15, 0xb4

    #@88
    if-ne v2, v15, :cond_9

    #@8a
    .line 270
    const-wide/16 v18, 0x0

    #@8c
    cmpl-double v15, v6, v18

    #@8e
    if-nez v15, :cond_9

    #@90
    const-wide/16 v18, 0x0

    #@92
    cmpl-double v15, v10, v18

    #@94
    if-nez v15, :cond_8

    #@96
    const/4 v4, 0x1

    #@97
    .line 273
    .local v4, "isNegative180":Z
    :goto_1
    int-to-double v0, v2

    #@98
    move-wide/from16 v18, v0

    #@9a
    const-wide/16 v20, 0x0

    #@9c
    cmpg-double v15, v18, v20

    #@9e
    if-ltz v15, :cond_a

    #@a0
    const/16 v15, 0xb3

    #@a2
    if-le v2, v15, :cond_5

    #@a4
    if-eqz v4, :cond_a

    #@a6
    .line 276
    :cond_5
    const-wide/16 v18, 0x0

    #@a8
    cmpg-double v15, v6, v18

    #@aa
    if-ltz v15, :cond_6

    #@ac
    const-wide v18, 0x404d800000000000L    # 59.0

    #@b1
    cmpl-double v15, v6, v18

    #@b3
    if-lez v15, :cond_b

    #@b5
    .line 277
    :cond_6
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@b7
    new-instance v18, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v19, "coordinate="

    #@bf
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v18

    #@c3
    move-object/from16 v0, v18

    #@c5
    move-object/from16 v1, p0

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v18

    #@cb
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v18

    #@cf
    move-object/from16 v0, v18

    #@d1
    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d5
    .line 288
    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "min":D
    .end local v10    # "sec":D
    :catch_0
    move-exception v9

    #@d6
    .line 289
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@d8
    new-instance v18, Ljava/lang/StringBuilder;

    #@da
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v19, "coordinate="

    #@e0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v18

    #@e4
    move-object/from16 v0, v18

    #@e6
    move-object/from16 v1, p0

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v18

    #@ec
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v18

    #@f0
    move-object/from16 v0, v18

    #@f2
    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v15

    #@f6
    .line 266
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v5    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    :cond_7
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@f9
    move-result-wide v6

    #@fa
    .restart local v6    # "min":D
    goto :goto_0

    #@fb
    .line 270
    :cond_8
    const/4 v4, 0x0

    #@fc
    .restart local v4    # "isNegative180":Z
    goto :goto_1

    #@fd
    .line 269
    .end local v4    # "isNegative180":Z
    :cond_9
    const/4 v4, 0x0

    #@fe
    .restart local v4    # "isNegative180":Z
    goto :goto_1

    #@ff
    .line 274
    :cond_a
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@101
    new-instance v18, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v19, "coordinate="

    #@109
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v18

    #@10d
    move-object/from16 v0, v18

    #@10f
    move-object/from16 v1, p0

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v18

    #@115
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v18

    #@119
    move-object/from16 v0, v18

    #@11b
    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11e
    throw v15

    #@11f
    .line 280
    :cond_b
    const-wide/16 v18, 0x0

    #@121
    cmpg-double v15, v10, v18

    #@123
    if-ltz v15, :cond_c

    #@125
    const-wide v18, 0x404d800000000000L    # 59.0

    #@12a
    cmpl-double v15, v10, v18

    #@12c
    if-lez v15, :cond_d

    #@12e
    .line 281
    :cond_c
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@130
    new-instance v18, Ljava/lang/StringBuilder;

    #@132
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v19, "coordinate="

    #@138
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v18

    #@13c
    move-object/from16 v0, v18

    #@13e
    move-object/from16 v1, p0

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v18

    #@144
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v18

    #@148
    move-object/from16 v0, v18

    #@14a
    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14d
    throw v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@14e
    .line 285
    :cond_d
    int-to-double v0, v2

    #@14f
    move-wide/from16 v18, v0

    #@151
    const-wide v20, 0x40ac200000000000L    # 3600.0

    #@156
    mul-double v18, v18, v20

    #@158
    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    #@15a
    mul-double v20, v20, v6

    #@15c
    add-double v18, v18, v20

    #@15e
    add-double v16, v18, v10

    #@160
    .line 286
    .restart local v16    # "val":D
    const-wide v18, 0x40ac200000000000L    # 3600.0

    #@165
    div-double v16, v16, v18

    #@167
    .line 287
    if-eqz v8, :cond_e

    #@169
    move-wide/from16 v0, v16

    #@16b
    neg-double v0, v0

    #@16c
    move-wide/from16 v16, v0

    #@16e
    .end local v16    # "val":D
    :cond_e
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
    .line 183
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
    .line 185
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
    .line 184
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@35
    move-result v4

    #@36
    .line 183
    if-nez v4, :cond_0

    #@38
    .line 187
    if-eqz p2, :cond_2

    #@3a
    .line 188
    if-eq p2, v7, :cond_2

    #@3c
    .line 189
    if-eq p2, v6, :cond_2

    #@3e
    .line 190
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
    .line 193
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    .line 196
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    #@5f
    cmpg-double v4, p0, v4

    #@61
    if-gez v4, :cond_3

    #@63
    .line 197
    const/16 v4, 0x2d

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 198
    neg-double p0, p0

    #@69
    .line 201
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    #@6b
    const-string/jumbo v4, "###.#####"

    #@6e
    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    #@71
    .line 202
    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v7, :cond_4

    #@73
    if-ne p2, v6, :cond_5

    #@75
    .line 203
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    #@78
    move-result-wide v4

    #@79
    double-to-int v0, v4

    #@7a
    .line 204
    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    .line 205
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@80
    .line 206
    int-to-double v4, v0

    #@81
    sub-double/2addr p0, v4

    #@82
    .line 207
    mul-double/2addr p0, v8

    #@83
    .line 208
    if-ne p2, v6, :cond_5

    #@85
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    #@88
    move-result-wide v4

    #@89
    double-to-int v2, v4

    #@8a
    .line 210
    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    .line 211
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    .line 212
    int-to-double v4, v2

    #@91
    sub-double/2addr p0, v4

    #@92
    .line 213
    mul-double/2addr p0, v8

    #@93
    .line 216
    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 2
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    #@0
    .prologue
    .line 414
    if-eqz p8, :cond_0

    #@2
    array-length v0, p8

    #@3
    const/4 v1, 0x1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "results is null or has length < 1"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 417
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    #@12
    .line 413
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    #@0
    .prologue
    .line 458
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    #@2
    monitor-enter v9

    #@3
    .line 460
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@5
    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    #@7
    cmpl-double v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@d
    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    #@f
    cmpl-double v0, v0, v2

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 462
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@15
    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@17
    .line 463
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    #@19
    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    #@1b
    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    #@1d
    .line 462
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    #@20
    .line 464
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@22
    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    #@24
    .line 465
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@26
    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    #@28
    .line 466
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    #@2a
    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    #@2c
    .line 467
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    #@2e
    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    #@30
    .line 468
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    #@32
    const/4 v1, 0x0

    #@33
    aget v0, v0, v1

    #@35
    iput v0, p0, Landroid/location/Location;->mDistance:F

    #@37
    .line 469
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    #@39
    const/4 v1, 0x1

    #@3a
    aget v0, v0, v1

    #@3c
    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    #@3e
    .line 471
    :cond_1
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v9

    #@41
    return v0

    #@42
    .line 461
    :cond_2
    :try_start_1
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    #@44
    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    #@46
    cmpl-double v0, v0, v2

    #@48
    if-nez v0, :cond_0

    #@4a
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    #@4c
    iget-wide v2, p0, Landroid/location/Location;->mLon2:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    cmpl-double v0, v0, v2

    #@50
    if-eqz v0, :cond_1

    #@52
    goto :goto_0

    #@53
    .line 458
    :catchall_0
    move-exception v0

    #@54
    monitor-exit v9

    #@55
    throw v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 899
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    #@0
    .prologue
    .line 431
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    #@2
    monitor-enter v9

    #@3
    .line 432
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@5
    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    #@7
    cmpl-double v0, v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@d
    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    #@f
    cmpl-double v0, v0, v2

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 434
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@15
    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@17
    .line 435
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    #@19
    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    #@1b
    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    #@1d
    .line 434
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    #@20
    .line 436
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@22
    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    #@24
    .line 437
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@26
    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    #@28
    .line 438
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    #@2a
    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    #@2c
    .line 439
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    #@2e
    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    #@30
    .line 440
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    #@32
    const/4 v1, 0x0

    #@33
    aget v0, v0, v1

    #@35
    iput v0, p0, Landroid/location/Location;->mDistance:F

    #@37
    .line 441
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    #@39
    const/4 v1, 0x1

    #@3a
    aget v0, v0, v1

    #@3c
    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    #@3e
    .line 443
    :cond_1
    iget v0, p0, Landroid/location/Location;->mDistance:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit v9

    #@41
    return v0

    #@42
    .line 433
    :cond_2
    :try_start_1
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    #@44
    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    #@46
    cmpl-double v0, v0, v2

    #@48
    if-nez v0, :cond_0

    #@4a
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    #@4c
    iget-wide v2, p0, Landroid/location/Location;->mLon2:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    cmpl-double v0, v0, v2

    #@50
    if-eqz v0, :cond_1

    #@52
    goto :goto_0

    #@53
    .line 431
    :catchall_0
    move-exception v0

    #@54
    monitor-exit v9

    #@55
    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 865
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
    .line 864
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    #@0
    .prologue
    .line 742
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    #@2
    return v0
.end method

.method public getAltitude()D
    .locals 2

    #@0
    .prologue
    .line 598
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@2
    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    #@0
    .prologue
    .line 676
    iget v0, p0, Landroid/location/Location;->mBearing:F

    #@2
    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 538
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
    .line 930
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 931
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v0

    #@b
    .line 932
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 933
    check-cast v0, Landroid/location/Location;

    #@11
    .end local v0    # "value":Landroid/os/Parcelable;
    return-object v0

    #@12
    .line 936
    :cond_0
    return-object v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    #@0
    .prologue
    .line 557
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    #@2
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    #@0
    .prologue
    .line 574
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    #@2
    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    #@0
    .prologue
    .line 635
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    #@2
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 509
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@2
    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    #@0
    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@2
    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    #@0
    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    #@2
    return v0
.end method

.method public hasBearing()Z
    .locals 1

    #@0
    .prologue
    .line 663
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    #@2
    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    #@0
    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    #@2
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
    .line 782
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    return v2

    #@8
    .line 783
    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@a
    if-nez v0, :cond_1

    #@c
    return v2

    #@d
    .line 784
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@f
    cmp-long v0, v0, v4

    #@11
    if-nez v0, :cond_2

    #@13
    return v2

    #@14
    .line 785
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@16
    cmp-long v0, v0, v4

    #@18
    if-nez v0, :cond_3

    #@1a
    return v2

    #@1b
    .line 786
    :cond_3
    const/4 v0, 0x1

    #@1c
    return v0
.end method

.method public isFromMockProvider()Z
    .locals 1

    #@0
    .prologue
    .line 959
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@2
    return v0
.end method

.method public makeComplete()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 800
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "?"

    #@9
    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@b
    .line 801
    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@d
    if-nez v0, :cond_1

    #@f
    .line 802
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@12
    .line 803
    const/high16 v0, 0x42c80000    # 100.0f

    #@14
    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    #@16
    .line 805
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-nez v0, :cond_2

    #@1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    #@22
    .line 806
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@24
    cmp-long v0, v0, v2

    #@26
    if-nez v0, :cond_3

    #@28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@2b
    move-result-wide v0

    #@2c
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@2e
    .line 799
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    #@0
    .prologue
    .line 764
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    #@3
    .line 765
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@6
    .line 763
    return-void
.end method

.method public removeAltitude()V
    .locals 2

    #@0
    .prologue
    .line 618
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    #@4
    .line 619
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    #@7
    .line 617
    return-void
.end method

.method public removeBearing()V
    .locals 1

    #@0
    .prologue
    .line 705
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/Location;->mBearing:F

    #@3
    .line 706
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    #@6
    .line 704
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    #@0
    .prologue
    .line 655
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    #@3
    .line 656
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    #@6
    .line 654
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
    const/4 v0, 0x0

    #@7
    .line 152
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@9
    .line 153
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    #@b
    .line 154
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@d
    .line 155
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    #@f
    .line 156
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@11
    .line 157
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    #@13
    .line 158
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@15
    .line 159
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    #@17
    .line 160
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    #@19
    .line 161
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    #@1b
    .line 162
    iput v1, p0, Landroid/location/Location;->mBearing:F

    #@1d
    .line 163
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@1f
    .line 164
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    #@21
    .line 165
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@23
    .line 166
    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@25
    .line 151
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 4
    .param p1, "l"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    iget-object v1, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@3
    iput-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@5
    .line 132
    iget-wide v2, p1, Landroid/location/Location;->mTime:J

    #@7
    iput-wide v2, p0, Landroid/location/Location;->mTime:J

    #@9
    .line 133
    iget-wide v2, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@b
    iput-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@d
    .line 134
    iget-wide v2, p1, Landroid/location/Location;->mLatitude:D

    #@f
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    #@11
    .line 135
    iget-wide v2, p1, Landroid/location/Location;->mLongitude:D

    #@13
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    #@15
    .line 136
    iget-boolean v1, p1, Landroid/location/Location;->mHasAltitude:Z

    #@17
    iput-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    #@19
    .line 137
    iget-wide v2, p1, Landroid/location/Location;->mAltitude:D

    #@1b
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@1d
    .line 138
    iget-boolean v1, p1, Landroid/location/Location;->mHasSpeed:Z

    #@1f
    iput-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    #@21
    .line 139
    iget v1, p1, Landroid/location/Location;->mSpeed:F

    #@23
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    #@25
    .line 140
    iget-boolean v1, p1, Landroid/location/Location;->mHasBearing:Z

    #@27
    iput-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    #@29
    .line 141
    iget v1, p1, Landroid/location/Location;->mBearing:F

    #@2b
    iput v1, p0, Landroid/location/Location;->mBearing:F

    #@2d
    .line 142
    iget-boolean v1, p1, Landroid/location/Location;->mHasAccuracy:Z

    #@2f
    iput-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@31
    .line 143
    iget v1, p1, Landroid/location/Location;->mAccuracy:F

    #@33
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    #@35
    .line 144
    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@37
    if-nez v1, :cond_0

    #@39
    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@3b
    .line 145
    iget-boolean v0, p1, Landroid/location/Location;->mIsFromMockProvider:Z

    #@3d
    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@3f
    .line 130
    return-void

    #@40
    .line 144
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@42
    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@44
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@47
    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "accuracy"    # F

    #@0
    .prologue
    .line 753
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    #@2
    .line 754
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@5
    .line 752
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    #@0
    .prologue
    .line 607
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    #@2
    .line 608
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    #@5
    .line 606
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    #@0
    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    #@2
    .line 688
    :goto_0
    const/4 v0, 0x0

    #@3
    cmpg-float v0, p1, v0

    #@5
    if-gez v0, :cond_0

    #@7
    .line 689
    add-float/2addr p1, v1

    #@8
    goto :goto_0

    #@9
    .line 691
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    #@b
    if-ltz v0, :cond_1

    #@d
    .line 692
    sub-float/2addr p1, v1

    #@e
    goto :goto_1

    #@f
    .line 694
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    #@11
    .line 695
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    #@14
    .line 687
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 547
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@2
    .line 546
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 948
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@b
    .line 950
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@10
    .line 946
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 832
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@5
    .line 831
    return-void

    #@6
    .line 832
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@b
    goto :goto_0
.end method

.method public setIsFromMockProvider(Z)V
    .locals 0
    .param p1, "isFromMockProvider"    # Z

    #@0
    .prologue
    .line 970
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@2
    .line 969
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    #@0
    .prologue
    .line 564
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    #@2
    .line 563
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    #@0
    .prologue
    .line 581
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    #@2
    .line 580
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 488
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@2
    .line 487
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    #@0
    .prologue
    .line 644
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    #@2
    .line 645
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    #@5
    .line 643
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 519
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    #@2
    .line 518
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
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 838
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Location["

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 839
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 840
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
    .line 841
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@33
    if-eqz v1, :cond_6

    #@35
    const-string/jumbo v1, " acc=%.0f"

    #@38
    new-array v2, v7, [Ljava/lang/Object;

    #@3a
    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    #@3c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3f
    move-result-object v3

    #@40
    aput-object v3, v2, v6

    #@42
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 843
    :goto_0
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    #@4b
    cmp-long v1, v2, v8

    #@4d
    if-nez v1, :cond_0

    #@4f
    .line 844
    const-string/jumbo v1, " t=?!?"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 846
    :cond_0
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@57
    cmp-long v1, v2, v8

    #@59
    if-nez v1, :cond_7

    #@5b
    .line 847
    const-string/jumbo v1, " et=?!?"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 852
    :goto_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    #@63
    if-eqz v1, :cond_1

    #@65
    const-string/jumbo v1, " alt="

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    #@6e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@71
    .line 853
    :cond_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    #@73
    if-eqz v1, :cond_2

    #@75
    const-string/jumbo v1, " vel="

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    iget v2, p0, Landroid/location/Location;->mSpeed:F

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@81
    .line 854
    :cond_2
    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    #@83
    if-eqz v1, :cond_3

    #@85
    const-string/jumbo v1, " bear="

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget v2, p0, Landroid/location/Location;->mBearing:F

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@91
    .line 855
    :cond_3
    iget-boolean v1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@93
    if-eqz v1, :cond_4

    #@95
    const-string/jumbo v1, " mock"

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    .line 857
    :cond_4
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@9d
    if-eqz v1, :cond_5

    #@9f
    .line 858
    const-string/jumbo v1, " {"

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    const/16 v2, 0x7d

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b1
    .line 860
    :cond_5
    const/16 v1, 0x5d

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b6
    .line 861
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    return-object v1

    #@bb
    .line 842
    :cond_6
    const-string/jumbo v1, " acc=???"

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    goto :goto_0

    #@c2
    .line 849
    :cond_7
    const-string/jumbo v1, " et="

    #@c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    .line 850
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@ca
    const-wide/32 v4, 0xf4240

    #@cd
    div-long/2addr v2, v4

    #@ce
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@d1
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 904
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 905
    iget-wide v4, p0, Landroid/location/Location;->mTime:J

    #@9
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@c
    .line 906
    iget-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    #@e
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 907
    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    #@13
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    #@16
    .line 908
    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    #@18
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    #@1b
    .line 909
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 910
    iget-wide v4, p0, Landroid/location/Location;->mAltitude:D

    #@25
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    #@28
    .line 911
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    #@2a
    if-eqz v0, :cond_1

    #@2c
    move v0, v1

    #@2d
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 912
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@35
    .line 913
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    #@37
    if-eqz v0, :cond_2

    #@39
    move v0, v1

    #@3a
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 914
    iget v0, p0, Landroid/location/Location;->mBearing:F

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@42
    .line 915
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    #@44
    if-eqz v0, :cond_3

    #@46
    move v0, v1

    #@47
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 916
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@4f
    .line 917
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    #@51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@54
    .line 918
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    #@56
    if-eqz v0, :cond_4

    #@58
    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 903
    return-void

    #@5c
    :cond_0
    move v0, v2

    #@5d
    .line 909
    goto :goto_0

    #@5e
    :cond_1
    move v0, v2

    #@5f
    .line 911
    goto :goto_1

    #@60
    :cond_2
    move v0, v2

    #@61
    .line 913
    goto :goto_2

    #@62
    :cond_3
    move v0, v2

    #@63
    .line 915
    goto :goto_3

    #@64
    :cond_4
    move v1, v2

    #@65
    .line 918
    goto :goto_4
.end method
