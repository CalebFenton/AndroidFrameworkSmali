.class public Lcom/android/server/location/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field private static final APPROXIMATE_METERS_PER_DEGREE_AT_EQUATOR:I = 0x1b198

.field private static final CHANGE_INTERVAL_MS:J = 0x36ee80L

.field private static final CHANGE_PER_INTERVAL:D = 0.03

.field private static final COARSE_ACCURACY_CONFIG_NAME:Ljava/lang/String; = "locationCoarseAccuracy"

.field private static final D:Z = false

.field private static final DEFAULT_ACCURACY_IN_METERS:F = 2000.0f

.field public static final FASTEST_INTERVAL_MS:J = 0x927c0L

.field private static final MAX_LATITUDE:D = 89.999990990991

.field private static final MINIMUM_ACCURACY_IN_METERS:F = 200.0f

.field private static final NEW_WEIGHT:D = 0.03

.field private static final PREVIOUS_WEIGHT:D

.field private static final TAG:Ljava/lang/String; = "LocationFudge"


# instance fields
.field private mAccuracyInMeters:F

.field private final mContext:Landroid/content/Context;

.field private mGridSizeInMeters:D

.field private final mLock:Ljava/lang/Object;

.field private mNextInterval:J

.field private mOffsetLatitudeMeters:D

.field private mOffsetLongitudeMeters:D

.field private final mRandom:Ljava/security/SecureRandom;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStandardDeviationInMeters:D


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/LocationFudger;)F
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->loadCoarseAccuracy()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/LocationFudger;F)V
    .locals 0
    .param p1, "accuracyInMeters"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->setAccuracyInMeters(F)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 85
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@8
    move-result-wide v0

    #@9
    sput-wide v0, Lcom/android/server/location/LocationFudger;->PREVIOUS_WEIGHT:D

    #@b
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    #@a
    .line 104
    new-instance v1, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/location/LocationFudger;->mRandom:Ljava/security/SecureRandom;

    #@11
    .line 143
    iput-object p1, p0, Lcom/android/server/location/LocationFudger;->mContext:Landroid/content/Context;

    #@13
    .line 144
    new-instance v1, Lcom/android/server/location/LocationFudger$1;

    #@15
    invoke-direct {v1, p0, p2}, Lcom/android/server/location/LocationFudger$1;-><init>(Lcom/android/server/location/LocationFudger;Landroid/os/Handler;)V

    #@18
    iput-object v1, p0, Lcom/android/server/location/LocationFudger;->mSettingsObserver:Landroid/database/ContentObserver;

    #@1a
    .line 150
    iget-object v1, p0, Lcom/android/server/location/LocationFudger;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v1

    #@20
    .line 151
    const-string/jumbo v2, "locationCoarseAccuracy"

    #@23
    .line 150
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@26
    move-result-object v2

    #@27
    .line 151
    iget-object v3, p0, Lcom/android/server/location/LocationFudger;->mSettingsObserver:Landroid/database/ContentObserver;

    #@29
    const/4 v4, 0x0

    #@2a
    .line 150
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@2d
    .line 153
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->loadCoarseAccuracy()F

    #@30
    move-result v0

    #@31
    .line 154
    .local v0, "accuracy":F
    iget-object v2, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    #@33
    monitor-enter v2

    #@34
    .line 155
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationFudger;->setAccuracyInMetersLocked(F)V

    #@37
    .line 156
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    #@3a
    move-result-wide v4

    #@3b
    iput-wide v4, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@3d
    .line 157
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    #@40
    move-result-wide v4

    #@41
    iput-wide v4, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@43
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@46
    move-result-wide v4

    #@47
    const-wide/32 v6, 0x36ee80

    #@4a
    add-long/2addr v4, v6

    #@4b
    iput-wide v4, p0, Lcom/android/server/location/LocationFudger;->mNextInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    monitor-exit v2

    #@4e
    .line 142
    return-void

    #@4f
    .line 154
    :catchall_0
    move-exception v1

    #@50
    monitor-exit v2

    #@51
    throw v1
.end method

.method private addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->createCoarseLocked(Landroid/location/Location;)Landroid/location/Location;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "coarse":Landroid/location/Location;
    const-string/jumbo v1, "coarseLocation"

    #@7
    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    #@a
    .line 181
    return-object v0
.end method

.method private createCoarseLocked(Landroid/location/Location;)Landroid/location/Location;
    .locals 12
    .param p1, "fine"    # Landroid/location/Location;

    #@0
    .prologue
    .line 200
    new-instance v0, Landroid/location/Location;

    #@2
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@5
    .line 204
    .local v0, "coarse":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    #@8
    .line 205
    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    #@b
    .line 206
    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    #@e
    .line 207
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    #@12
    .line 209
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    #@15
    move-result-wide v2

    #@16
    .line 210
    .local v2, "lat":D
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    #@19
    move-result-wide v6

    #@1a
    .line 213
    .local v6, "lon":D
    invoke-static {v2, v3}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    #@1d
    move-result-wide v2

    #@1e
    .line 214
    invoke-static {v6, v7}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    #@21
    move-result-wide v6

    #@22
    .line 224
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->updateRandomOffsetLocked()V

    #@25
    .line 226
    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@27
    invoke-static {v10, v11, v2, v3}, Lcom/android/server/location/LocationFudger;->metersToDegreesLongitude(DD)D

    #@2a
    move-result-wide v10

    #@2b
    add-double/2addr v6, v10

    #@2c
    .line 227
    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@2e
    invoke-static {v10, v11}, Lcom/android/server/location/LocationFudger;->metersToDegreesLatitude(D)D

    #@31
    move-result-wide v10

    #@32
    add-double/2addr v2, v10

    #@33
    .line 232
    invoke-static {v2, v3}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    #@36
    move-result-wide v2

    #@37
    .line 233
    invoke-static {v6, v7}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    #@3a
    move-result-wide v6

    #@3b
    .line 245
    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    #@3d
    invoke-static {v10, v11}, Lcom/android/server/location/LocationFudger;->metersToDegreesLatitude(D)D

    #@40
    move-result-wide v4

    #@41
    .line 246
    .local v4, "latGranularity":D
    div-double v10, v2, v4

    #@43
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    #@46
    move-result-wide v10

    #@47
    long-to-double v10, v10

    #@48
    mul-double v2, v10, v4

    #@4a
    .line 247
    iget-wide v10, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    #@4c
    invoke-static {v10, v11, v2, v3}, Lcom/android/server/location/LocationFudger;->metersToDegreesLongitude(DD)D

    #@4f
    move-result-wide v8

    #@50
    .line 248
    .local v8, "lonGranularity":D
    div-double v10, v6, v8

    #@52
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    #@55
    move-result-wide v10

    #@56
    long-to-double v10, v10

    #@57
    mul-double v6, v10, v8

    #@59
    .line 251
    invoke-static {v2, v3}, Lcom/android/server/location/LocationFudger;->wrapLatitude(D)D

    #@5c
    move-result-wide v2

    #@5d
    .line 252
    invoke-static {v6, v7}, Lcom/android/server/location/LocationFudger;->wrapLongitude(D)D

    #@60
    move-result-wide v6

    #@61
    .line 255
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    #@64
    .line 256
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    #@67
    .line 257
    iget v1, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    #@69
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    #@6c
    move-result v10

    #@6d
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    #@70
    move-result v1

    #@71
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    #@74
    .line 260
    return-object v0
.end method

.method private loadCoarseAccuracy()F
    .locals 5

    #@0
    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    #@2
    .line 368
    iget-object v2, p0, Lcom/android/server/location/LocationFudger;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 369
    const-string/jumbo v3, "locationCoarseAccuracy"

    #@b
    .line 368
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 373
    .local v1, "newSetting":Ljava/lang/String;
    if-nez v1, :cond_0

    #@11
    .line 374
    return v4

    #@12
    .line 377
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 378
    :catch_0
    move-exception v0

    #@18
    .line 379
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v4
.end method

.method private static metersToDegreesLatitude(D)D
    .locals 2
    .param p0, "distance"    # D

    #@0
    .prologue
    .line 327
    const-wide v0, 0x40fb198000000000L    # 111000.0

    #@5
    div-double v0, p0, v0

    #@7
    return-wide v0
.end method

.method private static metersToDegreesLongitude(DD)D
    .locals 4
    .param p0, "distance"    # D
    .param p2, "lat"    # D

    #@0
    .prologue
    .line 334
    const-wide v0, 0x40fb198000000000L    # 111000.0

    #@5
    div-double v0, p0, v0

    #@7
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    #@a
    move-result-wide v2

    #@b
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@e
    move-result-wide v2

    #@f
    div-double/2addr v0, v2

    #@10
    return-wide v0
.end method

.method private nextOffsetLocked()D
    .locals 4

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mRandom:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextGaussian()D

    #@5
    move-result-wide v0

    #@6
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mStandardDeviationInMeters:D

    #@8
    mul-double/2addr v0, v2

    #@9
    return-wide v0
.end method

.method private setAccuracyInMeters(F)V
    .locals 2
    .param p1, "accuracyInMeters"    # F

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 360
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->setAccuracyInMetersLocked(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 358
    return-void

    #@8
    .line 359
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private setAccuracyInMetersLocked(F)V
    .locals 4
    .param p1, "accuracyInMeters"    # F

    #@0
    .prologue
    .line 347
    const/high16 v0, 0x43480000    # 200.0f

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    #@8
    .line 351
    iget v0, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    #@a
    float-to-double v0, v0

    #@b
    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    #@d
    .line 352
    iget-wide v0, p0, Lcom/android/server/location/LocationFudger;->mGridSizeInMeters:D

    #@f
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    #@11
    div-double/2addr v0, v2

    #@12
    iput-wide v0, p0, Lcom/android/server/location/LocationFudger;->mStandardDeviationInMeters:D

    #@14
    .line 346
    return-void
.end method

.method private updateRandomOffsetLocked()V
    .locals 8

    #@0
    .prologue
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    #@5
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 282
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mNextInterval:J

    #@b
    cmp-long v2, v0, v2

    #@d
    if-gez v2, :cond_0

    #@f
    .line 283
    return-void

    #@10
    .line 290
    :cond_0
    const-wide/32 v2, 0x36ee80

    #@13
    add-long/2addr v2, v0

    #@14
    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mNextInterval:J

    #@16
    .line 292
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@18
    sget-wide v4, Lcom/android/server/location/LocationFudger;->PREVIOUS_WEIGHT:D

    #@1a
    mul-double/2addr v2, v4

    #@1b
    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@1d
    .line 293
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@1f
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    #@22
    move-result-wide v4

    #@23
    mul-double/2addr v4, v6

    #@24
    add-double/2addr v2, v4

    #@25
    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@27
    .line 294
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@29
    sget-wide v4, Lcom/android/server/location/LocationFudger;->PREVIOUS_WEIGHT:D

    #@2b
    mul-double/2addr v2, v4

    #@2c
    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@2e
    .line 295
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@30
    invoke-direct {p0}, Lcom/android/server/location/LocationFudger;->nextOffsetLocked()D

    #@33
    move-result-wide v4

    #@34
    mul-double/2addr v4, v6

    #@35
    add-double/2addr v2, v4

    #@36
    iput-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@38
    .line 280
    return-void
.end method

.method private static wrapLatitude(D)D
    .locals 2
    .param p0, "lat"    # D

    #@0
    .prologue
    .line 306
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    #@5
    cmpl-double v0, p0, v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 307
    const-wide p0, 0x40567fffda36a676L    # 89.999990990991

    #@e
    .line 309
    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    #@13
    cmpg-double v0, p0, v0

    #@15
    if-gez v0, :cond_1

    #@17
    .line 310
    const-wide p0, -0x3fa9800025c9598aL    # -89.999990990991

    #@1c
    .line 312
    :cond_1
    return-wide p0
.end method

.method private static wrapLongitude(D)D
    .locals 4
    .param p0, "lon"    # D

    #@0
    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    #@5
    .line 316
    rem-double/2addr p0, v2

    #@6
    .line 317
    const-wide v0, 0x4066800000000000L    # 180.0

    #@b
    cmpl-double v0, p0, v0

    #@d
    if-ltz v0, :cond_0

    #@f
    .line 318
    sub-double/2addr p0, v2

    #@10
    .line 320
    :cond_0
    const-wide v0, -0x3f99800000000000L    # -180.0

    #@15
    cmpg-double v0, p0, v0

    #@17
    if-gez v0, :cond_1

    #@19
    .line 321
    add-double/2addr p0, v2

    #@1a
    .line 323
    :cond_1
    return-wide p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 338
    const-string/jumbo v0, "offset: %.0f, %.0f (meters)"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLongitudeMeters:D

    #@8
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    .line 339
    iget-wide v2, p0, Lcom/android/server/location/LocationFudger;->mOffsetLatitudeMeters:D

    #@11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    .line 338
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 337
    return-void
.end method

.method public getOrCreate(Landroid/location/Location;)Landroid/location/Location;
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/server/location/LocationFudger;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 167
    :try_start_0
    const-string/jumbo v1, "coarseLocation"

    #@6
    invoke-virtual {p1, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    #@9
    move-result-object v0

    #@a
    .line 168
    .local v0, "coarse":Landroid/location/Location;
    if-nez v0, :cond_0

    #@c
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v1

    #@10
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 171
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    #@15
    move-result v1

    #@16
    iget v3, p0, Lcom/android/server/location/LocationFudger;->mAccuracyInMeters:F

    #@18
    cmpg-float v1, v1, v3

    #@1a
    if-gez v1, :cond_1

    #@1c
    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationFudger;->addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v1

    #@20
    monitor-exit v2

    #@21
    return-object v1

    #@22
    :cond_1
    monitor-exit v2

    #@23
    .line 174
    return-object v0

    #@24
    .line 166
    .end local v0    # "coarse":Landroid/location/Location;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method
