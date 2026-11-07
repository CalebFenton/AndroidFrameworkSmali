.class public Landroid/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CalendarAstronomer$Equatorial;,
        Landroid/icu/impl/CalendarAstronomer$AngleFunc;,
        Landroid/icu/impl/CalendarAstronomer$SolarLongitude;,
        Landroid/icu/impl/CalendarAstronomer$MoonAge;,
        Landroid/icu/impl/CalendarAstronomer$Ecliptic;
    }
.end annotation


# static fields
.field public static final blacklist DAY_MS:J = 0x5265c00L

.field private static final greylist-max-o DEG_RAD:D = 0.017453292519943295

.field static final greylist-max-o EPOCH_2000_MS:J = 0xdc65a95000L

.field public static final blacklist HOUR_MS:I = 0x36ee80

.field private static final greylist-max-o INVALID:D = 4.9E-324

.field static final greylist-max-o JD_EPOCH:D = 2447891.5

.field public static final blacklist JULIAN_EPOCH_MS:J = -0xbfc83e532200L

.field public static final blacklist MINUTE_MS:I = 0xea60

.field public static final blacklist NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field private static final greylist-max-o PI:D = 3.141592653589793

.field private static final greylist-max-o PI2:D = 6.283185307179586

.field private static final greylist-max-o RAD_DEG:D = 57.29577951308232

.field private static final greylist-max-o RAD_HOUR:D = 3.819718634205488

.field public static final blacklist SECOND_MS:I = 0x3e8

.field public static final blacklist SIDEREAL_DAY:D = 23.93446960027

.field public static final blacklist SIDEREAL_MONTH:D = 27.32166

.field public static final blacklist SIDEREAL_YEAR:D = 365.25636

.field public static final blacklist SOLAR_DAY:D = 24.065709816

.field static final greylist-max-o SUN_E:D = 0.016713

.field static final greylist-max-o SUN_ETA_G:D = 4.87650757829735

.field static final greylist-max-o SUN_OMEGA_G:D = 4.935239984568769

.field public static final blacklist SYNODIC_MONTH:D = 29.530588853

.field public static final blacklist TROPICAL_YEAR:D = 365.242191

.field public static final blacklist WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final greylist-max-o moonA:D = 384401.0

.field static final greylist-max-o moonE:D = 0.0549

.field static final greylist-max-o moonI:D = 0.08980357792017056

.field static final greylist-max-o moonL0:D = 5.556284436750021

.field static final greylist-max-o moonN0:D = 5.559050068029439

.field static final greylist-max-o moonP0:D = 0.6342598060246725

.field static final greylist-max-o moonPi:D = 0.016592845198710092

.field static final greylist-max-o moonT0:D = 0.009042550854582622


# instance fields
.field private transient greylist-max-o julianDay:D

.field private transient greylist-max-o meanAnomalySun:D

.field private transient greylist-max-o moonEclipLong:D

.field private transient greylist-max-o moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

.field private transient greylist-max-o sunLongitude:D

.field private greylist-max-o time:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smradToDms(D)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToDms(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smradToHms(D)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToHms(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 457
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    const-wide v1, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    .line 613
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    .line 205
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 5
    .param p1, "aTime"    # J

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 821
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 822
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    .line 823
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 216
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 217
    return-void
.end method

.method private greylist-max-o clearCache()V
    .registers 3

    .line 828
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 829
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 830
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    .line 831
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 833
    return-void
.end method

.method private greylist-max-o eclipticObliquity()D
    .registers 9

    .line 790
    const-wide v0, 0x4142b42c80000000L    # 2451545.0

    .line 792
    .local v0, "epoch":D
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v2

    const-wide v4, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v2, v4

    const-wide v4, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v2, v4

    .line 794
    .local v2, "T":D
    const-wide v4, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    mul-double/2addr v4, v2

    const-wide v6, 0x4037707570c564f9L    # 23.439292

    sub-double/2addr v6, v4

    const-wide v4, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sub-double/2addr v6, v4

    const-wide v4, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    add-double/2addr v6, v4

    .line 799
    .local v6, "eclipObliquity":D
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private static final greylist-max-o norm2PI(D)D
    .registers 4
    .param p0, "angle"    # D

    .line 742
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p0, p1, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final greylist-max-o normPI(D)D
    .registers 8
    .param p0, "angle"    # D

    .line 749
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double v2, p0, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3, v4, v5}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v2

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method private static final greylist-max-o normalize(DD)D
    .registers 6
    .param p0, "value"    # D
    .param p2, "range"    # D

    .line 733
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    return-wide v0
.end method

.method private static greylist-max-o radToDms(D)Ljava/lang/String;
    .registers 11
    .param p0, "angle"    # D

    .line 971
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v2, p0, v0

    double-to-int v2, v2

    .line 972
    .local v2, "deg":I
    mul-double v3, p0, v0

    int-to-double v5, v2

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 973
    .local v3, "min":I
    mul-double/2addr v0, p0

    int-to-double v7, v2

    sub-double/2addr v0, v7

    int-to-double v7, v3

    div-double/2addr v7, v5

    sub-double/2addr v0, v7

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 975
    .local v0, "sec":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u00b0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o radToHms(D)Ljava/lang/String;
    .registers 11
    .param p0, "angle"    # D

    .line 963
    const-wide v0, 0x400e8ec8a4aeacc4L    # 3.819718634205488

    mul-double v2, p0, v0

    double-to-int v2, v2

    .line 964
    .local v2, "hrs":I
    mul-double v3, p0, v0

    int-to-double v5, v2

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 965
    .local v3, "min":I
    mul-double/2addr v0, p0

    int-to-double v7, v2

    sub-double/2addr v0, v7

    int-to-double v7, v3

    div-double/2addr v7, v5

    sub-double/2addr v0, v7

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 967
    .local v0, "sec":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "h"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "m"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
    .registers 30
    .param p1, "func"    # Landroid/icu/impl/CalendarAstronomer$AngleFunc;
    .param p2, "desired"    # D
    .param p4, "periodDays"    # D
    .param p6, "epsilon"    # J
    .param p8, "next"    # Z

    .line 660
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    move-result-wide v1

    .line 663
    .local v1, "lastAngle":D
    sub-double v3, p2, v1

    invoke-static {v3, v4}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v3

    .line 667
    .local v3, "deltaAngle":D
    if-eqz p8, :cond_11

    const-wide/16 v5, 0x0

    goto :goto_16

    :cond_11
    const-wide v5, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    :goto_16
    add-double/2addr v5, v3

    const-wide v7, 0x4194997000000000L    # 8.64E7

    mul-double v9, p4, v7

    mul-double/2addr v5, v9

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v5, v9

    .line 669
    .local v5, "deltaT":D
    move-wide v9, v5

    .line 670
    .local v9, "lastDeltaT":D
    iget-wide v11, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 672
    .local v11, "startTime":J
    iget-wide v13, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide v15, v7

    double-to-long v7, v5

    add-long/2addr v13, v7

    invoke-virtual {v0, v13, v14}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 679
    :goto_30
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    move-result-wide v7

    .line 682
    .local v7, "angle":D
    sub-double v13, v7, v1

    invoke-static {v13, v14}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v13

    div-double v13, v5, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 685
    .local v13, "factor":D
    sub-double v17, p2, v7

    invoke-static/range {v17 .. v18}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v17

    mul-double v5, v17, v13

    .line 708
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-lez v17, :cond_6d

    .line 709
    mul-double v15, v15, p4

    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    move-wide/from16 v19, v1

    .end local v1    # "lastAngle":D
    .local v19, "lastAngle":D
    div-double v1, v15, v17

    double-to-long v1, v1

    .line 710
    .local v1, "delta":J
    move-wide/from16 v17, v3

    if-eqz p8, :cond_63

    move-wide v3, v1

    goto :goto_64

    .end local v3    # "deltaAngle":D
    .local v17, "deltaAngle":D
    :cond_63
    neg-long v3, v1

    :goto_64
    add-long/2addr v3, v11

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 711
    invoke-direct/range {p0 .. p8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide v3

    return-wide v3

    .line 714
    .end local v17    # "deltaAngle":D
    .end local v19    # "lastAngle":D
    .local v1, "lastAngle":D
    .restart local v3    # "deltaAngle":D
    :cond_6d
    move-wide/from16 v19, v1

    move-wide/from16 v17, v3

    .end local v1    # "lastAngle":D
    .end local v3    # "deltaAngle":D
    .restart local v17    # "deltaAngle":D
    .restart local v19    # "lastAngle":D
    move-wide v9, v5

    .line 715
    move-wide v1, v7

    .line 717
    .end local v19    # "lastAngle":D
    .restart local v1    # "lastAngle":D
    iget-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v19, v1

    .end local v1    # "lastAngle":D
    .restart local v19    # "lastAngle":D
    double-to-long v1, v5

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 719
    .end local v7    # "angle":D
    .end local v13    # "factor":D
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    move-wide/from16 v3, p6

    long-to-double v7, v3

    cmpl-double v1, v1, v7

    if-gtz v1, :cond_8a

    .line 721
    iget-wide v1, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-wide v1

    .line 719
    :cond_8a
    move-wide/from16 v3, v17

    move-wide/from16 v1, v19

    goto :goto_30
.end method

.method private greylist-max-o trueAnomaly(DD)D
    .registers 17
    .param p1, "meanAnomaly"    # D
    .param p3, "eccentricity"    # D

    .line 770
    move-wide v0, p1

    .line 772
    .local v0, "E":D
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p3

    sub-double v2, v0, v2

    sub-double/2addr v2, p1

    .line 773
    .local v2, "delta":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    div-double v4, v2, v4

    sub-double/2addr v0, v4

    .line 775
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v4, v8

    if-gtz v4, :cond_1

    .line 777
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    add-double v10, p3, v6

    sub-double/2addr v6, p3

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    return-wide v6
.end method


# virtual methods
.method public final blacklist eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .registers 29
    .param p1, "eclipLong"    # D
    .param p3, "eclipLat"    # D

    .line 318
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->eclipticObliquity()D

    move-result-wide v0

    .line 319
    .local v0, "obliq":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 320
    .local v2, "sinE":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 322
    .local v4, "cosE":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 323
    .local v6, "sinL":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 325
    .local v8, "cosL":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 326
    .local v10, "sinB":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 327
    .local v12, "cosB":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    .line 329
    .local v14, "tanB":D
    move-wide/from16 v16, v0

    .end local v0    # "obliq":D
    .local v16, "obliq":D
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$Equatorial;

    mul-double v18, v6, v4

    mul-double v20, v14, v2

    move-wide/from16 v22, v2

    .end local v2    # "sinE":D
    .local v22, "sinE":D
    sub-double v1, v18, v20

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    mul-double v18, v10, v4

    mul-double v20, v12, v22

    mul-double v20, v20, v6

    add-double v18, v18, v20

    .line 330
    move-wide/from16 v20, v4

    .end local v4    # "cosE":D
    .local v20, "cosE":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer$Equatorial;-><init>(DD)V

    .line 329
    return-object v0
.end method

.method public blacklist getDate()Ljava/util/Date;
    .registers 4

    .line 281
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getJulianDay()D
    .registers 5

    .line 294
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_19

    .line 295
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    const-wide v2, -0xbfc83e532200L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 297
    :cond_19
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    return-wide v0
.end method

.method public blacklist getMoonAge()D
    .registers 5

    .line 598
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 600
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .registers 36

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    if-nez v1, :cond_f1

    .line 512
    invoke-virtual {v0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v1

    .line 518
    .local v1, "sunLong":D
    invoke-virtual {v0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v3

    const-wide v5, 0x4142ad09c0000000L    # 2447891.5

    sub-double/2addr v3, v5

    .line 522
    .local v3, "day":D
    const-wide v5, 0x3fcd6fb4ccd0bc8dL    # 0.22997150421858628

    mul-double/2addr v5, v3

    const-wide v7, 0x401639a2a09c75e2L    # 5.556284436750021

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v5

    .line 523
    .local v5, "meanLongitude":D
    const-wide v7, 0x3f5fdb459d100168L    # 0.001944368345221015

    mul-double/2addr v7, v3

    sub-double v7, v5, v7

    const-wide v9, 0x3fe44bdb3881627cL    # 0.6342598060246725

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v7

    .line 531
    .local v7, "meanAnomalyMoon":D
    sub-double v9, v5, v1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v13, 0x3f96c471a926a187L    # 0.022233749341155764

    mul-double/2addr v9, v13

    .line 533
    .local v9, "evection":D
    iget-wide v13, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide v15, 0x3f6a90b0aba4fc89L    # 0.003242821750205464

    mul-double/2addr v13, v15

    .line 534
    .local v13, "annual":D
    move-wide v15, v11

    iget-wide v11, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide v17, 0x3f7a736889d66dd0L    # 0.00645771823237902

    mul-double v11, v11, v17

    .line 536
    .local v11, "a3":D
    sub-double v17, v9, v13

    sub-double v17, v17, v11

    add-double v7, v7, v17

    .line 545
    const-wide v17, 0x3fbc1905209a88deL    # 0.10975677534091541

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v17

    .line 546
    .local v19, "center":D
    mul-double v17, v7, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide v21, 0x3f6e98df535623b2L    # 0.0037350045992678655

    mul-double v17, v17, v21

    .line 549
    .local v17, "a4":D
    add-double v21, v5, v9

    add-double v21, v21, v19

    sub-double v21, v21, v13

    add-double v21, v21, v17

    .line 556
    .local v21, "moonLongitude":D
    sub-double v23, v21, v1

    mul-double v23, v23, v15

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    const-wide v23, 0x3f8787ceeab4c1caL    # 0.011489502465878671

    mul-double v15, v15, v23

    .line 558
    .local v15, "variation":D
    add-double v21, v21, v15

    .line 567
    const-wide v23, 0x3f4e48eb230f0fe5L    # 9.242199067718253E-4

    mul-double v23, v23, v3

    const-wide v25, 0x40163c779efc0d54L    # 5.559050068029439

    sub-double v25, v25, v23

    invoke-static/range {v25 .. v26}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v23

    .line 569
    .local v23, "nodeLongitude":D
    move-wide/from16 v25, v1

    .end local v1    # "sunLong":D
    .local v25, "sunLong":D
    iget-wide v1, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v27, 0x3f66e05a695f8191L    # 0.0027925268031909274

    mul-double v1, v1, v27

    sub-double v23, v23, v1

    .line 571
    sub-double v1, v21, v23

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 572
    .local v1, "y":D
    sub-double v27, v21, v23

    move-wide/from16 v29, v1

    .end local v1    # "y":D
    .local v29, "y":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 574
    .local v1, "x":D
    const-wide v27, 0x3fb6fd5e063b1d97L    # 0.08980357792017056

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    move-wide/from16 v33, v3

    .end local v3    # "day":D
    .local v33, "day":D
    mul-double v3, v29, v31

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    add-double v3, v3, v23

    iput-wide v3, v0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    .line 575
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v29

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    .line 577
    .local v3, "moonEclipLat":D
    move-wide/from16 v27, v1

    .end local v1    # "x":D
    .local v27, "x":D
    iget-wide v1, v0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    .line 579
    .end local v3    # "moonEclipLat":D
    .end local v5    # "meanLongitude":D
    .end local v7    # "meanAnomalyMoon":D
    .end local v9    # "evection":D
    .end local v11    # "a3":D
    .end local v13    # "annual":D
    .end local v15    # "variation":D
    .end local v17    # "a4":D
    .end local v19    # "center":D
    .end local v21    # "moonLongitude":D
    .end local v23    # "nodeLongitude":D
    .end local v25    # "sunLong":D
    .end local v27    # "x":D
    .end local v29    # "y":D
    .end local v33    # "day":D
    :cond_f1
    iget-object v1, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    return-object v1
.end method

.method public blacklist getMoonTime(DZ)J
    .registers 13
    .param p1, "desired"    # D
    .param p3, "next"    # Z

    .line 626
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$2;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$2;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    const-wide/32 v6, 0xea60

    move-object v0, p0

    move-wide v2, p1

    move v8, p3

    .end local p1    # "desired":D
    .end local p3    # "next":Z
    .local v2, "desired":D
    .local v8, "next":Z
    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J
    .registers 5
    .param p1, "desired"    # Landroid/icu/impl/CalendarAstronomer$MoonAge;
    .param p2, "next"    # Z

    .line 645
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$MoonAge;->value:D

    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(DZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSunLongitude()D
    .registers 5

    .line 410
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1a

    .line 411
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude(D)[D

    move-result-object v0

    .line 412
    .local v0, "result":[D
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    .line 413
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    .line 415
    .end local v0    # "result":[D
    :cond_1a
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    return-wide v0
.end method

.method greylist-max-o getSunLongitude(D)[D
    .registers 13
    .param p1, "julian"    # D

    .line 426
    const-wide v0, 0x4142ad09c0000000L    # 2447891.5

    sub-double v0, p1, v0

    .line 430
    .local v0, "day":D
    const-wide v2, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v2

    .line 434
    .local v2, "epochAngle":D
    const-wide v4, 0x4013818b33ddeee0L    # 4.87650757829735

    add-double/2addr v4, v2

    const-wide v6, 0x4013bdaf8cee89a2L    # 4.935239984568769

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v4

    .line 440
    .local v4, "meanAnomaly":D
    nop

    .line 441
    const-wide v8, 0x3f911d3671ac14c6L    # 0.016713

    invoke-direct {p0, v4, v5, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->trueAnomaly(DD)D

    move-result-wide v8

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v6

    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v6, v8, v9

    const/4 v6, 0x1

    aput-wide v4, v8, v6

    .line 440
    return-object v8
.end method

.method public blacklist getSunTime(DZ)J
    .registers 13
    .param p1, "desired"    # D
    .param p3, "next"    # Z

    .line 466
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$1;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$1;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide v4, 0x4076d3e003ab862bL    # 365.242191

    const-wide/32 v6, 0xea60

    move-object v0, p0

    move-wide v2, p1

    move v8, p3

    .end local p1    # "desired":D
    .end local p3    # "next":Z
    .local v2, "desired":D
    .local v8, "next":Z
    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J
    .registers 5
    .param p1, "desired"    # Landroid/icu/impl/CalendarAstronomer$SolarLongitude;
    .param p2, "next"    # Z

    .line 480
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;->value:D

    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(DZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTime()J
    .registers 3

    .line 269
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-wide v0
.end method

.method public blacklist setJulianDay(D)V
    .registers 7
    .param p1, "jdn"    # D

    .line 254
    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, p1

    double-to-long v0, v0

    const-wide v2, -0xbfc83e532200L

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 255
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    .line 256
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    .line 257
    return-void
.end method

.method public blacklist setTime(J)V
    .registers 3
    .param p1, "aTime"    # J

    .line 234
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    .line 235
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    .line 236
    return-void
.end method
