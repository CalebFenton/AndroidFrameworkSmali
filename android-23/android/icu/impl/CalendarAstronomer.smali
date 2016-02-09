.class public Landroid/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CalendarAstronomer$SolarLongitude;,
        Landroid/icu/impl/CalendarAstronomer$MoonAge;,
        Landroid/icu/impl/CalendarAstronomer$AngleFunc;,
        Landroid/icu/impl/CalendarAstronomer$CoordFunc;,
        Landroid/icu/impl/CalendarAstronomer$Ecliptic;,
        Landroid/icu/impl/CalendarAstronomer$Equatorial;,
        Landroid/icu/impl/CalendarAstronomer$Horizon;
    }
.end annotation


# static fields
.field public static final AUTUMN_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final DAY_MS:J = 0x5265c00L

.field private static final DEG_RAD:D = 0.017453292519943295

.field static final EPOCH_2000_MS:J = 0xdc65a95000L

.field public static final FIRST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final FULL_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final HOUR_MS:I = 0x36ee80

.field private static final INVALID:D = 4.9E-324

.field static final JD_EPOCH:D = 2447891.5

.field public static final JULIAN_EPOCH_MS:J = -0xbfc83e532200L

.field public static final LAST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final MINUTE_MS:I = 0xea60

.field public static final NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field private static final PI:D = 3.141592653589793

.field private static final PI2:D = 6.283185307179586

.field private static final RAD_DEG:D = 57.29577951308232

.field private static final RAD_HOUR:D = 3.819718634205488

.field public static final SECOND_MS:I = 0x3e8

.field public static final SIDEREAL_DAY:D = 23.93446960027

.field public static final SIDEREAL_MONTH:D = 27.32166

.field public static final SIDEREAL_YEAR:D = 365.25636

.field public static final SOLAR_DAY:D = 24.065709816

.field public static final SUMMER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final SUN_E:D = 0.016713

.field static final SUN_ETA_G:D = 4.87650757829735

.field static final SUN_OMEGA_G:D = 4.935239984568769

.field public static final SYNODIC_MONTH:D = 29.530588853

.field public static final TROPICAL_YEAR:D = 365.242191

.field public static final VERNAL_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final moonA:D = 384401.0

.field static final moonE:D = 0.0549

.field static final moonI:D = 0.08980357792017056

.field static final moonL0:D = 5.556284436750021

.field static final moonN0:D = 5.559050068029439

.field static final moonP0:D = 0.6342598060246725

.field static final moonPi:D = 0.016592845198710092

.field static final moonT0:D = 0.009042550854582622


# instance fields
.field private transient eclipObliquity:D

.field private fGmtOffset:J

.field private fLatitude:D

.field private fLongitude:D

.field private transient julianCentury:D

.field private transient julianDay:D

.field private transient meanAnomalySun:D

.field private transient moonEclipLong:D

.field private transient moonLongitude:D

.field private transient moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

.field private transient siderealT0:D

.field private transient siderealTime:D

.field private transient sunLongitude:D

.field private time:J


# direct methods
.method static synthetic -wrap0(D)Ljava/lang/String;
    .locals 2
    .param p0, "angle"    # D

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToDms(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(D)Ljava/lang/String;
    .locals 2
    .param p0, "angle"    # D

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToHms(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const-wide v8, 0x4012d97c7f3321d2L    # 4.71238898038469

    #@5
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    #@a
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@f
    const-wide/16 v2, 0x0

    #@11
    .line 627
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@13
    invoke-direct {v0, v2, v3}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    #@16
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->VERNAL_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@18
    .line 635
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@1a
    invoke-direct {v0, v4, v5}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    #@1d
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->SUMMER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@1f
    .line 643
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@21
    invoke-direct {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    #@24
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->AUTUMN_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@26
    .line 651
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@28
    invoke-direct {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    #@2b
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@2d
    .line 1132
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@2f
    invoke-direct {v0, v2, v3}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    #@32
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@34
    .line 1139
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@36
    invoke-direct {v0, v4, v5}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    #@39
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->FIRST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@3b
    .line 1146
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@3d
    invoke-direct {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    #@40
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->FULL_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@42
    .line 1153
    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@44
    invoke-direct {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    #@47
    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->LAST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@49
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    #@7
    .line 200
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    #@0
    .prologue
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@5
    .line 240
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    #@8
    .line 241
    mul-double v0, p1, v2

    #@a
    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    #@10
    .line 242
    mul-double v0, p3, v2

    #@12
    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    #@18
    .line 243
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    #@1a
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    #@1c
    mul-double/2addr v0, v2

    #@1d
    const-wide v2, 0x414b774000000000L    # 3600000.0

    #@22
    mul-double/2addr v0, v2

    #@23
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    #@28
    div-double/2addr v0, v2

    #@29
    double-to-long v0, v0

    #@2a
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@2c
    .line 239
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "aTime"    # J

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    const-wide/16 v2, 0x1

    #@4
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1416
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    #@9
    .line 1417
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    #@b
    .line 1418
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@f
    .line 1427
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    #@11
    .line 1428
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    #@13
    .line 1429
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    #@15
    .line 1430
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    #@17
    .line 1431
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@19
    .line 1432
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    #@1b
    .line 1434
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@1d
    .line 1435
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    #@1f
    .line 1436
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    #@21
    .line 1438
    const/4 v0, 0x0

    #@22
    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@24
    .line 222
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@26
    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "d"    # Ljava/util/Date;

    #@0
    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    #@7
    .line 209
    return-void
.end method

.method private clearCache()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x1

    #@2
    .line 1441
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    #@4
    .line 1442
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    #@6
    .line 1443
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    #@8
    .line 1444
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    #@a
    .line 1445
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@c
    .line 1446
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    #@e
    .line 1448
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@10
    .line 1449
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    #@12
    .line 1450
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    #@14
    .line 1451
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@17
    .line 1440
    return-void
.end method

.method private eclipticObliquity()D
    .locals 8

    #@0
    .prologue
    .line 1387
    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@2
    const-wide/16 v6, 0x1

    #@4
    cmpl-double v4, v4, v6

    #@6
    if-nez v4, :cond_0

    #@8
    .line 1388
    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    #@d
    .line 1390
    .local v2, "epoch":D
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    #@10
    move-result-wide v4

    #@11
    const-wide v6, 0x4142b42c80000000L    # 2451545.0

    #@16
    sub-double/2addr v4, v6

    #@17
    const-wide v6, 0x40e1d5a000000000L    # 36525.0

    #@1c
    div-double v0, v4, v6

    #@1e
    .line 1393
    .local v0, "T":D
    const-wide v4, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    #@23
    mul-double/2addr v4, v0

    #@24
    .line 1392
    const-wide v6, 0x4037707570c564f9L    # 23.439292

    #@29
    sub-double v4, v6, v4

    #@2b
    .line 1394
    const-wide v6, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    #@30
    mul-double/2addr v6, v0

    #@31
    mul-double/2addr v6, v0

    #@32
    .line 1392
    sub-double/2addr v4, v6

    #@33
    .line 1395
    const-wide v6, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    #@38
    mul-double/2addr v6, v0

    #@39
    mul-double/2addr v6, v0

    #@3a
    mul-double/2addr v6, v0

    #@3b
    .line 1392
    add-double/2addr v4, v6

    #@3c
    iput-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@3e
    .line 1397
    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@40
    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    #@45
    mul-double/2addr v4, v6

    #@46
    iput-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@48
    .line 1399
    .end local v0    # "T":D
    .end local v2    # "epoch":D
    :cond_0
    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    #@4a
    return-wide v4
.end method

.method private getSiderealOffset()D
    .locals 12

    #@0
    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@2
    .line 373
    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    #@4
    const-wide/16 v8, 0x1

    #@6
    cmpl-double v6, v6, v8

    #@8
    if-nez v6, :cond_0

    #@a
    .line 374
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    #@d
    move-result-wide v6

    #@e
    sub-double/2addr v6, v10

    #@f
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@12
    move-result-wide v6

    #@13
    add-double v0, v6, v10

    #@15
    .line 375
    .local v0, "JD":D
    const-wide v6, 0x4142b42c80000000L    # 2451545.0

    #@1a
    sub-double v2, v0, v6

    #@1c
    .line 376
    .local v2, "S":D
    const-wide v6, 0x40e1d5a000000000L    # 36525.0

    #@21
    div-double v4, v2, v6

    #@23
    .line 377
    .local v4, "T":D
    const-wide v6, 0x40a2c01a48b65237L    # 2400.051336

    #@28
    mul-double/2addr v6, v4

    #@29
    const-wide v8, 0x401aca1c8e5eb098L    # 6.697374558

    #@2e
    add-double/2addr v6, v8

    #@2f
    const-wide v8, 0x3efb1e471b7b0e47L    # 2.5862E-5

    #@34
    mul-double/2addr v8, v4

    #@35
    mul-double/2addr v8, v4

    #@36
    add-double/2addr v6, v8

    #@37
    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    #@39
    invoke-static {v6, v7, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@3c
    move-result-wide v6

    #@3d
    iput-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    #@3f
    .line 379
    .end local v0    # "JD":D
    .end local v2    # "S":D
    .end local v4    # "T":D
    :cond_0
    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    #@41
    return-wide v6
.end method

.method private lstToUT(D)J
    .locals 11
    .param p1, "lst"    # D

    #@0
    .prologue
    const-wide/32 v8, 0x5265c00

    #@3
    .line 401
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    #@6
    move-result-wide v4

    #@7
    sub-double v4, p1, v4

    #@9
    const-wide v6, 0x3fefe9a1dd91bf50L    # 0.9972695663

    #@e
    mul-double/2addr v4, v6

    #@f
    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    #@11
    invoke-static {v4, v5, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@14
    move-result-wide v2

    #@15
    .line 404
    .local v2, "lt":D
    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@17
    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@19
    add-long/2addr v4, v6

    #@1a
    div-long/2addr v4, v8

    #@1b
    mul-long/2addr v4, v8

    #@1c
    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@1e
    sub-long v0, v4, v6

    #@20
    .line 409
    .local v0, "base":J
    const-wide v4, 0x414b774000000000L    # 3600000.0

    #@25
    mul-double/2addr v4, v2

    #@26
    double-to-long v4, v4

    #@27
    add-long/2addr v4, v0

    #@28
    return-wide v4
.end method

.method private static final norm2PI(D)D
    .locals 2
    .param p0, "angle"    # D

    #@0
    .prologue
    .line 1339
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    #@5
    invoke-static {p0, p1, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method private static final normPI(D)D
    .locals 6
    .param p0, "angle"    # D

    #@0
    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    #@5
    .line 1346
    add-double v0, p0, v4

    #@7
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    #@c
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@f
    move-result-wide v0

    #@10
    sub-double/2addr v0, v4

    #@11
    return-wide v0
.end method

.method private static final normalize(DD)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "range"    # D

    #@0
    .prologue
    .line 1330
    div-double v0, p0, p2

    #@2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@5
    move-result-wide v0

    #@6
    mul-double/2addr v0, p2

    #@7
    sub-double v0, p0, v0

    #@9
    return-wide v0
.end method

.method private static radToDms(D)Ljava/lang/String;
    .locals 12
    .param p0, "angle"    # D

    #@0
    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    #@2
    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@7
    .line 1660
    mul-double v4, p0, v8

    #@9
    double-to-int v0, v4

    #@a
    .line 1661
    .local v0, "deg":I
    mul-double v4, p0, v8

    #@c
    int-to-double v6, v0

    #@d
    sub-double/2addr v4, v6

    #@e
    mul-double/2addr v4, v10

    #@f
    double-to-int v1, v4

    #@10
    .line 1662
    .local v1, "min":I
    mul-double v4, p0, v8

    #@12
    int-to-double v6, v0

    #@13
    sub-double/2addr v4, v6

    #@14
    int-to-double v6, v1

    #@15
    div-double/2addr v6, v10

    #@16
    sub-double/2addr v4, v6

    #@17
    const-wide v6, 0x40ac200000000000L    # 3600.0

    #@1c
    mul-double/2addr v4, v6

    #@1d
    double-to-int v2, v4

    #@1e
    .line 1664
    .local v2, "sec":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "\u00b0"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, "\'"

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, "\""

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    return-object v3
.end method

.method private static radToHms(D)Ljava/lang/String;
    .locals 12
    .param p0, "angle"    # D

    #@0
    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    #@2
    const-wide v8, 0x400e8ec8a4aeacc4L    # 3.819718634205488

    #@7
    .line 1652
    mul-double v4, p0, v8

    #@9
    double-to-int v0, v4

    #@a
    .line 1653
    .local v0, "hrs":I
    mul-double v4, p0, v8

    #@c
    int-to-double v6, v0

    #@d
    sub-double/2addr v4, v6

    #@e
    mul-double/2addr v4, v10

    #@f
    double-to-int v1, v4

    #@10
    .line 1654
    .local v1, "min":I
    mul-double v4, p0, v8

    #@12
    int-to-double v6, v0

    #@13
    sub-double/2addr v4, v6

    #@14
    int-to-double v6, v1

    #@15
    div-double/2addr v6, v10

    #@16
    sub-double/2addr v4, v6

    #@17
    const-wide v6, 0x40ac200000000000L    # 3600.0

    #@1c
    mul-double/2addr v4, v6

    #@1d
    double-to-int v2, v4

    #@1e
    .line 1656
    .local v2, "sec":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, "h"

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, "m"

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, "s"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    return-object v3
.end method

.method private riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
    .locals 29
    .param p1, "func"    # Landroid/icu/impl/CalendarAstronomer$CoordFunc;
    .param p2, "rise"    # Z
    .param p3, "diameter"    # D
    .param p5, "refraction"    # D
    .param p7, "epsilon"    # J

    #@0
    .prologue
    .line 1287
    const/4 v7, 0x0

    #@1
    .line 1288
    .local v7, "pos":Landroid/icu/impl/CalendarAstronomer$Equatorial;
    move-object/from16 v0, p0

    #@3
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    #@5
    move-wide/from16 v24, v0

    #@7
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tan(D)D

    #@a
    move-result-wide v18

    #@b
    .line 1289
    .local v18, "tanL":D
    const-wide v10, 0x7fffffffffffffffL

    #@10
    .line 1290
    .local v10, "deltaT":J
    const/4 v6, 0x0

    #@11
    .line 1299
    .end local v7    # "pos":Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .local v6, "count":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$CoordFunc;->eval()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@14
    move-result-object v7

    #@15
    .line 1300
    .local v7, "pos":Landroid/icu/impl/CalendarAstronomer$Equatorial;
    move-wide/from16 v0, v18

    #@17
    neg-double v0, v0

    #@18
    move-wide/from16 v24, v0

    #@1a
    iget-wide v0, v7, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@1c
    move-wide/from16 v26, v0

    #@1e
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->tan(D)D

    #@21
    move-result-wide v26

    #@22
    mul-double v24, v24, v26

    #@24
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    #@27
    move-result-wide v2

    #@28
    .line 1301
    .local v2, "angle":D
    if-eqz p2, :cond_1

    #@2a
    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    #@2f
    sub-double v2, v24, v2

    #@31
    .end local v2    # "angle":D
    :cond_1
    iget-wide v0, v7, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    #@33
    move-wide/from16 v24, v0

    #@35
    add-double v24, v24, v2

    #@37
    const-wide/high16 v26, 0x4038000000000000L    # 24.0

    #@39
    mul-double v24, v24, v26

    #@3b
    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    #@40
    div-double v12, v24, v26

    #@42
    .line 1304
    .local v12, "lst":D
    move-object/from16 v0, p0

    #@44
    invoke-direct {v0, v12, v13}, Landroid/icu/impl/CalendarAstronomer;->lstToUT(D)J

    #@47
    move-result-wide v14

    #@48
    .line 1306
    .local v14, "newTime":J
    move-object/from16 v0, p0

    #@4a
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@4c
    move-wide/from16 v24, v0

    #@4e
    sub-long v10, v14, v24

    #@50
    .line 1307
    move-object/from16 v0, p0

    #@52
    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@55
    .line 1309
    add-int/lit8 v6, v6, 0x1

    #@57
    const/16 v24, 0x5

    #@59
    move/from16 v0, v24

    #@5b
    if-ge v6, v0, :cond_2

    #@5d
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    #@60
    move-result-wide v24

    #@61
    cmp-long v24, v24, p7

    #@63
    if-gtz v24, :cond_0

    #@65
    .line 1312
    :cond_2
    iget-wide v0, v7, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@67
    move-wide/from16 v24, v0

    #@69
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    #@6c
    move-result-wide v4

    #@6d
    .line 1313
    .local v4, "cosD":D
    move-object/from16 v0, p0

    #@6f
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    #@71
    move-wide/from16 v24, v0

    #@73
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    #@76
    move-result-wide v24

    #@77
    div-double v24, v24, v4

    #@79
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    #@7c
    move-result-wide v16

    #@7d
    .line 1314
    .local v16, "psi":D
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@7f
    div-double v24, p3, v24

    #@81
    add-double v20, v24, p5

    #@83
    .line 1315
    .local v20, "x":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    #@86
    move-result-wide v24

    #@87
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    #@8a
    move-result-wide v26

    #@8b
    div-double v24, v24, v26

    #@8d
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    #@90
    move-result-wide v22

    #@91
    .line 1316
    .local v22, "y":D
    const-wide/high16 v24, 0x406e000000000000L    # 240.0

    #@93
    mul-double v24, v24, v22

    #@95
    const-wide v26, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    #@9a
    mul-double v24, v24, v26

    #@9c
    div-double v24, v24, v4

    #@9e
    const-wide v26, 0x408f400000000000L    # 1000.0

    #@a3
    mul-double v24, v24, v26

    #@a5
    move-wide/from16 v0, v24

    #@a7
    double-to-long v8, v0

    #@a8
    .line 1318
    .local v8, "delta":J
    move-object/from16 v0, p0

    #@aa
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@ac
    move-wide/from16 v24, v0

    #@ae
    if-eqz p2, :cond_3

    #@b0
    neg-long v8, v8

    #@b1
    .end local v8    # "delta":J
    :cond_3
    add-long v24, v24, v8

    #@b3
    return-wide v24
.end method

.method private timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
    .locals 24
    .param p1, "func"    # Landroid/icu/impl/CalendarAstronomer$AngleFunc;
    .param p2, "desired"    # D
    .param p4, "periodDays"    # D
    .param p6, "epsilon"    # J
    .param p8, "next"    # Z

    #@0
    .prologue
    .line 1215
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    #@3
    move-result-wide v14

    #@4
    .line 1218
    .local v14, "lastAngle":D
    sub-double v20, p2, v14

    #@6
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@9
    move-result-wide v8

    #@a
    .line 1222
    .local v8, "deltaAngle":D
    if-eqz p8, :cond_1

    #@c
    const-wide/16 v20, 0x0

    #@e
    :goto_0
    add-double v20, v20, v8

    #@10
    const-wide v22, 0x4194997000000000L    # 8.64E7

    #@15
    mul-double v22, v22, p4

    #@17
    mul-double v20, v20, v22

    #@19
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    #@1e
    div-double v10, v20, v22

    #@20
    .line 1224
    .local v10, "deltaT":D
    move-wide/from16 v16, v10

    #@22
    .line 1225
    .local v16, "lastDeltaT":D
    move-object/from16 v0, p0

    #@24
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@26
    move-wide/from16 v18, v0

    #@28
    .line 1227
    .local v18, "startTime":J
    move-object/from16 v0, p0

    #@2a
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@2c
    move-wide/from16 v20, v0

    #@2e
    double-to-long v0, v10

    #@2f
    move-wide/from16 v22, v0

    #@31
    add-long v20, v20, v22

    #@33
    move-object/from16 v0, p0

    #@35
    move-wide/from16 v1, v20

    #@37
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@3a
    .line 1234
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    #@3d
    move-result-wide v4

    #@3e
    .line 1237
    .local v4, "angle":D
    sub-double v20, v4, v14

    #@40
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    #@43
    move-result-wide v20

    #@44
    div-double v20, v10, v20

    #@46
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    #@49
    move-result-wide v12

    #@4a
    .line 1240
    .local v12, "factor":D
    sub-double v20, p2, v4

    #@4c
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    #@4f
    move-result-wide v20

    #@50
    mul-double v10, v20, v12

    #@52
    .line 1263
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    #@55
    move-result-wide v20

    #@56
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    #@59
    move-result-wide v22

    #@5a
    cmpl-double v20, v20, v22

    #@5c
    if-lez v20, :cond_3

    #@5e
    .line 1264
    const-wide v20, 0x4194997000000000L    # 8.64E7

    #@63
    mul-double v20, v20, p4

    #@65
    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    #@67
    div-double v20, v20, v22

    #@69
    move-wide/from16 v0, v20

    #@6b
    double-to-long v6, v0

    #@6c
    .line 1265
    .local v6, "delta":J
    if-eqz p8, :cond_2

    #@6e
    .end local v6    # "delta":J
    :goto_1
    add-long v20, v18, v6

    #@70
    move-object/from16 v0, p0

    #@72
    move-wide/from16 v1, v20

    #@74
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@77
    .line 1266
    invoke-direct/range {p0 .. p8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    #@7a
    move-result-wide v20

    #@7b
    return-wide v20

    #@7c
    .line 1222
    .end local v4    # "angle":D
    .end local v10    # "deltaT":D
    .end local v12    # "factor":D
    .end local v16    # "lastDeltaT":D
    .end local v18    # "startTime":J
    :cond_1
    const-wide v20, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    #@81
    goto :goto_0

    #@82
    .line 1265
    .restart local v4    # "angle":D
    .restart local v6    # "delta":J
    .restart local v10    # "deltaT":D
    .restart local v12    # "factor":D
    .restart local v16    # "lastDeltaT":D
    .restart local v18    # "startTime":J
    :cond_2
    neg-long v6, v6

    #@83
    goto :goto_1

    #@84
    .line 1269
    .end local v6    # "delta":J
    :cond_3
    move-wide/from16 v16, v10

    #@86
    .line 1270
    move-wide v14, v4

    #@87
    .line 1272
    move-object/from16 v0, p0

    #@89
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@8b
    move-wide/from16 v20, v0

    #@8d
    double-to-long v0, v10

    #@8e
    move-wide/from16 v22, v0

    #@90
    add-long v20, v20, v22

    #@92
    move-object/from16 v0, p0

    #@94
    move-wide/from16 v1, v20

    #@96
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@99
    .line 1274
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    #@9c
    move-result-wide v20

    #@9d
    move-wide/from16 v0, p6

    #@9f
    long-to-double v0, v0

    #@a0
    move-wide/from16 v22, v0

    #@a2
    cmpl-double v20, v20, v22

    #@a4
    if-gtz v20, :cond_0

    #@a6
    .line 1276
    move-object/from16 v0, p0

    #@a8
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@aa
    move-wide/from16 v20, v0

    #@ac
    return-wide v20
.end method

.method private trueAnomaly(DD)D
    .locals 11
    .param p1, "meanAnomaly"    # D
    .param p3, "eccentricity"    # D

    #@0
    .prologue
    .line 1367
    move-wide v0, p1

    #@1
    .line 1369
    .local v0, "E":D
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@4
    move-result-wide v4

    #@5
    mul-double/2addr v4, p3

    #@6
    sub-double v4, v0, v4

    #@8
    sub-double v2, v4, p1

    #@a
    .line 1370
    .local v2, "delta":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@d
    move-result-wide v4

    #@e
    mul-double/2addr v4, p3

    #@f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@11
    sub-double v4, v6, v4

    #@13
    div-double v4, v2, v4

    #@15
    sub-double/2addr v0, v4

    #@16
    .line 1372
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@19
    move-result-wide v4

    #@1a
    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@1f
    cmpl-double v4, v4, v6

    #@21
    if-gtz v4, :cond_0

    #@23
    .line 1374
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@25
    div-double v4, v0, v4

    #@27
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    #@2a
    move-result-wide v4

    #@2b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@2d
    add-double/2addr v6, p3

    #@2e
    .line 1375
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@30
    sub-double/2addr v8, p3

    #@31
    .line 1374
    div-double/2addr v6, v8

    #@32
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@35
    move-result-wide v6

    #@36
    mul-double/2addr v4, v6

    #@37
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    #@3a
    move-result-wide v4

    #@3b
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    #@3d
    mul-double/2addr v4, v6

    #@3e
    return-wide v4
.end method


# virtual methods
.method public final eclipticToEquatorial(D)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 3
    .param p1, "eclipLong"    # D

    #@0
    .prologue
    .line 468
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 31
    .param p1, "eclipLong"    # D
    .param p3, "eclipLat"    # D

    #@0
    .prologue
    .line 443
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->eclipticObliquity()D

    #@3
    move-result-wide v12

    #@4
    .line 444
    .local v12, "obliq":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@7
    move-result-wide v16

    #@8
    .line 445
    .local v16, "sinE":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@b
    move-result-wide v8

    #@c
    .line 447
    .local v8, "cosE":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    #@f
    move-result-wide v18

    #@10
    .line 448
    .local v18, "sinL":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    #@13
    move-result-wide v10

    #@14
    .line 450
    .local v10, "cosL":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    #@17
    move-result-wide v14

    #@18
    .line 451
    .local v14, "sinB":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    #@1b
    move-result-wide v6

    #@1c
    .line 452
    .local v6, "cosB":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    #@1f
    move-result-wide v20

    #@20
    .line 454
    .local v20, "tanB":D
    new-instance v22, Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@22
    mul-double v24, v18, v8

    #@24
    mul-double v26, v20, v16

    #@26
    sub-double v24, v24, v26

    #@28
    move-wide/from16 v0, v24

    #@2a
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    #@2d
    move-result-wide v24

    #@2e
    .line 455
    mul-double v26, v14, v8

    #@30
    mul-double v28, v6, v16

    #@32
    mul-double v28, v28, v18

    #@34
    add-double v26, v26, v28

    #@36
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    #@39
    move-result-wide v26

    #@3a
    .line 454
    move-object/from16 v0, v22

    #@3c
    move-wide/from16 v1, v24

    #@3e
    move-wide/from16 v3, v26

    #@40
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer$Equatorial;-><init>(DD)V

    #@43
    return-object v22
.end method

.method public final eclipticToEquatorial(Landroid/icu/impl/CalendarAstronomer$Ecliptic;)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4
    .param p1, "ecliptic"    # Landroid/icu/impl/CalendarAstronomer$Ecliptic;

    #@0
    .prologue
    .line 426
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$Ecliptic;->longitude:D

    #@2
    iget-wide v2, p1, Landroid/icu/impl/CalendarAstronomer$Ecliptic;->latitude:D

    #@4
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public eclipticToHorizon(D)Landroid/icu/impl/CalendarAstronomer$Horizon;
    .locals 27
    .param p1, "eclipLong"    # D

    #@0
    .prologue
    .line 476
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(D)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@3
    move-result-object v14

    #@4
    .line 478
    .local v14, "equatorial":Landroid/icu/impl/CalendarAstronomer$Equatorial;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getLocalSidereal()D

    #@7
    move-result-wide v22

    #@8
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    #@d
    mul-double v22, v22, v24

    #@f
    const-wide/high16 v24, 0x4028000000000000L    # 12.0

    #@11
    div-double v22, v22, v24

    #@13
    iget-wide v0, v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    #@15
    move-wide/from16 v24, v0

    #@17
    sub-double v2, v22, v24

    #@19
    .line 480
    .local v2, "H":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@1c
    move-result-wide v18

    #@1d
    .line 481
    .local v18, "sinH":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@20
    move-result-wide v10

    #@21
    .line 482
    .local v10, "cosH":D
    iget-wide v0, v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@23
    move-wide/from16 v22, v0

    #@25
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    #@28
    move-result-wide v16

    #@29
    .line 483
    .local v16, "sinD":D
    iget-wide v0, v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    #@2b
    move-wide/from16 v22, v0

    #@2d
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    #@30
    move-result-wide v8

    #@31
    .line 484
    .local v8, "cosD":D
    move-object/from16 v0, p0

    #@33
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    #@35
    move-wide/from16 v22, v0

    #@37
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    #@3a
    move-result-wide v20

    #@3b
    .line 485
    .local v20, "sinL":D
    move-object/from16 v0, p0

    #@3d
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    #@3f
    move-wide/from16 v22, v0

    #@41
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    #@44
    move-result-wide v12

    #@45
    .line 487
    .local v12, "cosL":D
    mul-double v22, v16, v20

    #@47
    mul-double v24, v8, v12

    #@49
    mul-double v24, v24, v10

    #@4b
    add-double v22, v22, v24

    #@4d
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    #@50
    move-result-wide v4

    #@51
    .line 488
    .local v4, "altitude":D
    neg-double v0, v8

    #@52
    move-wide/from16 v22, v0

    #@54
    mul-double v22, v22, v12

    #@56
    mul-double v22, v22, v18

    #@58
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@5b
    move-result-wide v24

    #@5c
    mul-double v24, v24, v20

    #@5e
    sub-double v24, v16, v24

    #@60
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    #@63
    move-result-wide v6

    #@64
    .line 490
    .local v6, "azimuth":D
    new-instance v15, Landroid/icu/impl/CalendarAstronomer$Horizon;

    #@66
    invoke-direct {v15, v6, v7, v4, v5}, Landroid/icu/impl/CalendarAstronomer$Horizon;-><init>(DD)V

    #@69
    return-object v15
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 323
    new-instance v0, Ljava/util/Date;

    #@2
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@7
    return-object v0
.end method

.method public getGreenwichSidereal()D
    .locals 8

    #@0
    .prologue
    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    #@2
    .line 361
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    #@4
    const-wide/16 v4, 0x1

    #@6
    cmpl-double v2, v2, v4

    #@8
    if-nez v2, :cond_0

    #@a
    .line 365
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@c
    long-to-double v2, v2

    #@d
    const-wide v4, 0x414b774000000000L    # 3600000.0

    #@12
    div-double/2addr v2, v4

    #@13
    invoke-static {v2, v3, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@16
    move-result-wide v0

    #@17
    .line 367
    .local v0, "UT":D
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    #@1a
    move-result-wide v2

    #@1b
    const-wide v4, 0x3ff00b36e7d9d4aeL    # 1.002737909

    #@20
    mul-double/2addr v4, v0

    #@21
    add-double/2addr v2, v4

    #@22
    invoke-static {v2, v3, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@25
    move-result-wide v2

    #@26
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    #@28
    .line 369
    .end local v0    # "UT":D
    :cond_0
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    #@2a
    return-wide v2
.end method

.method public getJulianCentury()D
    .locals 4

    #@0
    .prologue
    .line 350
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    #@2
    const-wide/16 v2, 0x1

    #@4
    cmpl-double v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 351
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    #@b
    move-result-wide v0

    #@c
    const-wide v2, 0x41426cd600000000L    # 2415020.0

    #@11
    sub-double/2addr v0, v2

    #@12
    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    #@17
    div-double/2addr v0, v2

    #@18
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    #@1a
    .line 353
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    #@1c
    return-wide v0
.end method

.method public getJulianDay()D
    .locals 4

    #@0
    .prologue
    .line 336
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    #@2
    const-wide/16 v2, 0x1

    #@4
    cmpl-double v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 337
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@a
    const-wide v2, -0xbfc83e532200L

    #@f
    sub-long/2addr v0, v2

    #@10
    long-to-double v0, v0

    #@11
    const-wide v2, 0x4194997000000000L    # 8.64E7

    #@16
    div-double/2addr v0, v2

    #@17
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    #@19
    .line 339
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    #@1b
    return-wide v0
.end method

.method public getLocalSidereal()D
    .locals 6

    #@0
    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getGreenwichSidereal()D

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@6
    long-to-double v2, v2

    #@7
    const-wide v4, 0x414b774000000000L    # 3600000.0

    #@c
    div-double/2addr v2, v4

    #@d
    add-double/2addr v0, v2

    #@e
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    #@10
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public getMoonAge()D
    .locals 4

    #@0
    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@3
    .line 1099
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    #@5
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    #@7
    sub-double/2addr v0, v2

    #@8
    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getMoonPhase()D
    .locals 4

    #@0
    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@7
    move-result-wide v0

    #@8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@a
    sub-double v0, v2, v0

    #@c
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@e
    mul-double/2addr v0, v2

    #@f
    return-wide v0
.end method

.method public getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 38

    #@0
    .prologue
    .line 1008
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@4
    move-object/from16 v34, v0

    #@6
    if-nez v34, :cond_0

    #@8
    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    #@b
    move-result-wide v26

    #@c
    .line 1017
    .local v26, "sunLong":D
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    #@f
    move-result-wide v34

    #@10
    const-wide v36, 0x4142ad09c0000000L    # 2447891.5

    #@15
    sub-double v14, v34, v36

    #@17
    .line 1021
    .local v14, "day":D
    const-wide v34, 0x3fcd6fb4ccd0bc8dL    # 0.22997150421858628

    #@1c
    mul-double v34, v34, v14

    #@1e
    const-wide v36, 0x401639a2a09c75e2L    # 5.556284436750021

    #@23
    add-double v34, v34, v36

    #@25
    invoke-static/range {v34 .. v35}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@28
    move-result-wide v20

    #@29
    .line 1022
    .local v20, "meanLongitude":D
    const-wide v34, 0x3f5fdb459d100168L    # 0.001944368345221015

    #@2e
    mul-double v34, v34, v14

    #@30
    sub-double v34, v20, v34

    #@32
    const-wide v36, 0x3fe44bdb3881627cL    # 0.6342598060246725

    #@37
    sub-double v34, v34, v36

    #@39
    invoke-static/range {v34 .. v35}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@3c
    move-result-wide v18

    #@3d
    .line 1030
    .local v18, "meanAnomalyMoon":D
    sub-double v34, v20, v26

    #@3f
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    #@41
    mul-double v34, v34, v36

    #@43
    sub-double v34, v34, v18

    #@45
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@48
    move-result-wide v34

    #@49
    const-wide v36, 0x3f96c471a926a187L    # 0.022233749341155764

    #@4e
    mul-double v16, v36, v34

    #@50
    .line 1032
    .local v16, "evection":D
    move-object/from16 v0, p0

    #@52
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    #@54
    move-wide/from16 v34, v0

    #@56
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@59
    move-result-wide v34

    #@5a
    const-wide v36, 0x3f6a90b0aba4fc89L    # 0.003242821750205464

    #@5f
    mul-double v10, v36, v34

    #@61
    .line 1033
    .local v10, "annual":D
    move-object/from16 v0, p0

    #@63
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    #@65
    move-wide/from16 v34, v0

    #@67
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@6a
    move-result-wide v34

    #@6b
    const-wide v36, 0x3f7a736889d66dd0L    # 0.00645771823237902

    #@70
    mul-double v6, v36, v34

    #@72
    .line 1035
    .local v6, "a3":D
    sub-double v34, v16, v10

    #@74
    sub-double v34, v34, v6

    #@76
    add-double v18, v18, v34

    #@78
    .line 1044
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    #@7b
    move-result-wide v34

    #@7c
    const-wide v36, 0x3fbc1905209a88deL    # 0.10975677534091541

    #@81
    mul-double v12, v36, v34

    #@83
    .line 1045
    .local v12, "center":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    #@85
    mul-double v34, v34, v18

    #@87
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@8a
    move-result-wide v34

    #@8b
    const-wide v36, 0x3f6e98df535623b2L    # 0.0037350045992678655

    #@90
    mul-double v8, v36, v34

    #@92
    .line 1048
    .local v8, "a4":D
    add-double v34, v20, v16

    #@94
    add-double v34, v34, v12

    #@96
    sub-double v34, v34, v10

    #@98
    add-double v34, v34, v8

    #@9a
    move-wide/from16 v0, v34

    #@9c
    move-object/from16 v2, p0

    #@9e
    iput-wide v0, v2, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@a0
    .line 1055
    move-object/from16 v0, p0

    #@a2
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@a4
    move-wide/from16 v34, v0

    #@a6
    sub-double v34, v34, v26

    #@a8
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    #@aa
    mul-double v34, v34, v36

    #@ac
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@af
    move-result-wide v34

    #@b0
    const-wide v36, 0x3f8787ceeab4c1caL    # 0.011489502465878671

    #@b5
    mul-double v28, v36, v34

    #@b7
    .line 1057
    .local v28, "variation":D
    move-object/from16 v0, p0

    #@b9
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@bb
    move-wide/from16 v34, v0

    #@bd
    add-double v34, v34, v28

    #@bf
    move-wide/from16 v0, v34

    #@c1
    move-object/from16 v2, p0

    #@c3
    iput-wide v0, v2, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@c5
    .line 1066
    const-wide v34, 0x3f4e48eb230f0fe5L    # 9.242199067718253E-4

    #@ca
    mul-double v34, v34, v14

    #@cc
    const-wide v36, 0x40163c779efc0d54L    # 5.559050068029439

    #@d1
    sub-double v34, v36, v34

    #@d3
    invoke-static/range {v34 .. v35}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@d6
    move-result-wide v24

    #@d7
    .line 1068
    .local v24, "nodeLongitude":D
    move-object/from16 v0, p0

    #@d9
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    #@db
    move-wide/from16 v34, v0

    #@dd
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@e0
    move-result-wide v34

    #@e1
    const-wide v36, 0x3f66e05a695f8191L    # 0.0027925268031909274

    #@e6
    mul-double v34, v34, v36

    #@e8
    sub-double v24, v24, v34

    #@ea
    .line 1070
    move-object/from16 v0, p0

    #@ec
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@ee
    move-wide/from16 v34, v0

    #@f0
    sub-double v34, v34, v24

    #@f2
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@f5
    move-result-wide v32

    #@f6
    .line 1071
    .local v32, "y":D
    move-object/from16 v0, p0

    #@f8
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    #@fa
    move-wide/from16 v34, v0

    #@fc
    sub-double v34, v34, v24

    #@fe
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    #@101
    move-result-wide v30

    #@102
    .line 1073
    .local v30, "x":D
    const-wide v34, 0x3fb6fd5e063b1d97L    # 0.08980357792017056

    #@107
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    #@10a
    move-result-wide v34

    #@10b
    mul-double v34, v34, v32

    #@10d
    move-wide/from16 v0, v34

    #@10f
    move-wide/from16 v2, v30

    #@111
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@114
    move-result-wide v34

    #@115
    add-double v34, v34, v24

    #@117
    move-wide/from16 v0, v34

    #@119
    move-object/from16 v2, p0

    #@11b
    iput-wide v0, v2, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    #@11d
    .line 1074
    const-wide v34, 0x3fb6fd5e063b1d97L    # 0.08980357792017056

    #@122
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    #@125
    move-result-wide v34

    #@126
    mul-double v34, v34, v32

    #@128
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->asin(D)D

    #@12b
    move-result-wide v22

    #@12c
    .line 1076
    .local v22, "moonEclipLat":D
    move-object/from16 v0, p0

    #@12e
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    #@130
    move-wide/from16 v34, v0

    #@132
    move-object/from16 v0, p0

    #@134
    move-wide/from16 v1, v34

    #@136
    move-wide/from16 v3, v22

    #@138
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@13b
    move-result-object v34

    #@13c
    move-object/from16 v0, v34

    #@13e
    move-object/from16 v1, p0

    #@140
    iput-object v0, v1, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@142
    .line 1078
    .end local v6    # "a3":D
    .end local v8    # "a4":D
    .end local v10    # "annual":D
    .end local v12    # "center":D
    .end local v14    # "day":D
    .end local v16    # "evection":D
    .end local v18    # "meanAnomalyMoon":D
    .end local v20    # "meanLongitude":D
    .end local v22    # "moonEclipLat":D
    .end local v24    # "nodeLongitude":D
    .end local v26    # "sunLong":D
    .end local v28    # "variation":D
    .end local v30    # "x":D
    .end local v32    # "y":D
    :cond_0
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@146
    move-object/from16 v34, v0

    #@148
    return-object v34
.end method

.method public getMoonRiseSet(Z)J
    .locals 10
    .param p1, "rise"    # Z

    #@0
    .prologue
    .line 1194
    new-instance v2, Landroid/icu/impl/CalendarAstronomer$4;

    #@2
    invoke-direct {v2, p0}, Landroid/icu/impl/CalendarAstronomer$4;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    #@5
    .line 1200
    const-wide/32 v8, 0xea60

    #@8
    .line 1198
    const-wide v4, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    #@d
    .line 1199
    const-wide v6, 0x3f8441500d4c900dL    # 0.009890199094634533

    #@12
    move-object v1, p0

    #@13
    move v3, p1

    #@14
    .line 1194
    invoke-direct/range {v1 .. v9}, Landroid/icu/impl/CalendarAstronomer;->riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    #@17
    move-result-wide v0

    #@18
    return-wide v0
.end method

.method public getMoonTime(DZ)J
    .locals 9
    .param p1, "desired"    # D
    .param p3, "next"    # Z

    #@0
    .prologue
    .line 1166
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$3;

    #@2
    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$3;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    #@5
    .line 1170
    const-wide/32 v6, 0xea60

    #@8
    .line 1169
    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    #@d
    move-object v0, p0

    #@e
    move-wide v2, p1

    #@f
    move v8, p3

    #@10
    .line 1166
    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J
    .locals 2
    .param p1, "desired"    # Landroid/icu/impl/CalendarAstronomer$MoonAge;
    .param p2, "next"    # Z

    #@0
    .prologue
    .line 1184
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$MoonAge;->value:D

    #@2
    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(DZ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSunLongitude()D
    .locals 6

    #@0
    .prologue
    .line 571
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    #@2
    const-wide/16 v4, 0x1

    #@4
    cmpl-double v1, v2, v4

    #@6
    if-nez v1, :cond_0

    #@8
    .line 572
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    #@b
    move-result-wide v2

    #@c
    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude(D)[D

    #@f
    move-result-object v0

    #@10
    .line 573
    .local v0, "result":[D
    const/4 v1, 0x0

    #@11
    aget-wide v2, v0, v1

    #@13
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    #@15
    .line 574
    const/4 v1, 0x1

    #@16
    aget-wide v2, v0, v1

    #@18
    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    #@1a
    .line 576
    .end local v0    # "result":[D
    :cond_0
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    #@1c
    return-wide v2
.end method

.method getSunLongitude(D)[D
    .locals 13
    .param p1, "julian"    # D

    #@0
    .prologue
    const-wide v10, 0x4013bdaf8cee89a2L    # 4.935239984568769

    #@5
    .line 587
    const-wide v6, 0x4142ad09c0000000L    # 2447891.5

    #@a
    sub-double v0, p1, v6

    #@c
    .line 591
    .local v0, "day":D
    const-wide v6, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    #@11
    mul-double/2addr v6, v0

    #@12
    invoke-static {v6, v7}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@15
    move-result-wide v2

    #@16
    .line 595
    .local v2, "epochAngle":D
    const-wide v6, 0x4013818b33ddeee0L    # 4.87650757829735

    #@1b
    add-double/2addr v6, v2

    #@1c
    sub-double/2addr v6, v10

    #@1d
    invoke-static {v6, v7}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@20
    move-result-wide v4

    #@21
    .line 601
    .local v4, "meanAnomaly":D
    const/4 v6, 0x2

    #@22
    new-array v6, v6, [D

    #@24
    .line 602
    const-wide v8, 0x3f911d3671ac14c6L    # 0.016713

    #@29
    invoke-direct {p0, v4, v5, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->trueAnomaly(DD)D

    #@2c
    move-result-wide v8

    #@2d
    add-double/2addr v8, v10

    #@2e
    invoke-static {v8, v9}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    #@31
    move-result-wide v8

    #@32
    const/4 v7, 0x0

    #@33
    aput-wide v8, v6, v7

    #@35
    .line 603
    const/4 v7, 0x1

    #@36
    aput-wide v4, v6, v7

    #@38
    .line 601
    return-object v6
.end method

.method public getSunPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4

    #@0
    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSunRiseSet(Z)J
    .locals 20
    .param p1, "rise"    # Z

    #@0
    .prologue
    .line 690
    move-object/from16 v0, p0

    #@2
    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@4
    move-wide/from16 v18, v0

    #@6
    .line 693
    .local v18, "t0":J
    move-object/from16 v0, p0

    #@8
    iget-wide v4, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@a
    move-object/from16 v0, p0

    #@c
    iget-wide v6, v0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@e
    add-long/2addr v4, v6

    #@f
    const-wide/32 v6, 0x5265c00

    #@12
    div-long/2addr v4, v6

    #@13
    const-wide/32 v6, 0x5265c00

    #@16
    mul-long/2addr v4, v6

    #@17
    move-object/from16 v0, p0

    #@19
    iget-wide v6, v0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    #@1b
    sub-long/2addr v4, v6

    #@1c
    const-wide/32 v6, 0x2932e00

    #@1f
    add-long v14, v4, v6

    #@21
    .line 695
    .local v14, "noon":J
    if-eqz p1, :cond_0

    #@23
    const-wide/16 v4, -0x6

    #@25
    :goto_0
    const-wide/32 v6, 0x36ee80

    #@28
    mul-long/2addr v4, v6

    #@29
    add-long/2addr v4, v14

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v4, v5}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@2f
    .line 697
    new-instance v6, Landroid/icu/impl/CalendarAstronomer$2;

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-direct {v6, v0}, Landroid/icu/impl/CalendarAstronomer$2;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    #@36
    .line 703
    const-wide/16 v12, 0x1388

    #@38
    .line 701
    const-wide v8, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    #@3d
    .line 702
    const-wide v10, 0x3f8441500d4c900dL    # 0.009890199094634533

    #@42
    move-object/from16 v5, p0

    #@44
    move/from16 v7, p1

    #@46
    .line 697
    invoke-direct/range {v5 .. v13}, Landroid/icu/impl/CalendarAstronomer;->riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    #@49
    move-result-wide v16

    #@4a
    .line 705
    .local v16, "t":J
    move-object/from16 v0, p0

    #@4c
    move-wide/from16 v1, v18

    #@4e
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@51
    .line 706
    return-wide v16

    #@52
    .line 695
    .end local v16    # "t":J
    :cond_0
    const-wide/16 v4, 0x6

    #@54
    goto :goto_0
.end method

.method public getSunTime(DZ)J
    .locals 9
    .param p1, "desired"    # D
    .param p3, "next"    # Z

    #@0
    .prologue
    .line 660
    new-instance v1, Landroid/icu/impl/CalendarAstronomer$1;

    #@2
    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$1;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    #@5
    .line 663
    const-wide/32 v6, 0xea60

    #@8
    .line 662
    const-wide v4, 0x4076d3e003ab862bL    # 365.242191

    #@d
    move-object v0, p0

    #@e
    move-wide v2, p1

    #@f
    move v8, p3

    #@10
    .line 660
    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J
    .locals 2
    .param p1, "desired"    # Landroid/icu/impl/CalendarAstronomer$SolarLongitude;
    .param p2, "next"    # Z

    #@0
    .prologue
    .line 673
    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;->value:D

    #@2
    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(DZ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 311
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@2
    return-wide v0
.end method

.method public local(J)Ljava/lang/String;
    .locals 5
    .param p1, "localMillis"    # J

    #@0
    .prologue
    .line 1470
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    #@9
    move-result v1

    #@a
    int-to-long v2, v1

    #@b
    sub-long v2, p1, v2

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@10
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@7
    .line 277
    return-void
.end method

.method public setJulianDay(D)V
    .locals 5
    .param p1, "jdn"    # D

    #@0
    .prologue
    .line 296
    const-wide v0, 0x4194997000000000L    # 8.64E7

    #@5
    mul-double/2addr v0, p1

    #@6
    double-to-long v0, v0

    #@7
    const-wide v2, -0xbfc83e532200L

    #@c
    add-long/2addr v0, v2

    #@d
    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@f
    .line 297
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    #@12
    .line 298
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    #@14
    .line 295
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "aTime"    # J

    #@0
    .prologue
    .line 263
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    #@2
    .line 264
    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    #@5
    .line 262
    return-void
.end method
