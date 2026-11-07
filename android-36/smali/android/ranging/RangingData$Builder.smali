.class public final Landroid/ranging/RangingData$Builder;
.super Ljava/lang/Object;
.source "RangingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAzimuth:Landroid/ranging/RangingMeasurement;

.field private blacklist mDelaySpreadMeters:D

.field private blacklist mDetectedAttackLevel:B

.field private blacklist mDistance:Landroid/ranging/RangingMeasurement;

.field private blacklist mElevation:Landroid/ranging/RangingMeasurement;

.field private blacklist mRangingTechnology:I

.field private blacklist mRssi:I

.field private blacklist mTimestamp:J

.field private blacklist mVelocityMetersPerSec:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAzimuth(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingData$Builder;->mAzimuth:Landroid/ranging/RangingMeasurement;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDelaySpreadMeters(Landroid/ranging/RangingData$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/ranging/RangingData$Builder;->mDelaySpreadMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetectedAttackLevel(Landroid/ranging/RangingData$Builder;)B
    .registers 1

    iget-byte p0, p0, Landroid/ranging/RangingData$Builder;->mDetectedAttackLevel:B

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistance(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingData$Builder;->mDistance:Landroid/ranging/RangingMeasurement;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmElevation(Landroid/ranging/RangingData$Builder;)Landroid/ranging/RangingMeasurement;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingData$Builder;->mElevation:Landroid/ranging/RangingMeasurement;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingTechnology(Landroid/ranging/RangingData$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/RangingData$Builder;->mRangingTechnology:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi(Landroid/ranging/RangingData$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/RangingData$Builder;->mRssi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimestamp(Landroid/ranging/RangingData$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/ranging/RangingData$Builder;->mTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityMetersPerSec(Landroid/ranging/RangingData$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/ranging/RangingData$Builder;->mVelocityMetersPerSec:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/ranging/RangingData$Builder;->mRangingTechnology:I

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/ranging/RangingData$Builder;->mDistance:Landroid/ranging/RangingMeasurement;

    .line 261
    iput-object v1, p0, Landroid/ranging/RangingData$Builder;->mAzimuth:Landroid/ranging/RangingMeasurement;

    .line 262
    iput-object v1, p0, Landroid/ranging/RangingData$Builder;->mElevation:Landroid/ranging/RangingMeasurement;

    .line 263
    iput v0, p0, Landroid/ranging/RangingData$Builder;->mRssi:I

    .line 264
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/ranging/RangingData$Builder;->mTimestamp:J

    .line 265
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/ranging/RangingData$Builder;->mDelaySpreadMeters:D

    .line 266
    const/4 v2, -0x1

    iput-byte v2, p0, Landroid/ranging/RangingData$Builder;->mDetectedAttackLevel:B

    .line 267
    iput-wide v0, p0, Landroid/ranging/RangingData$Builder;->mVelocityMetersPerSec:D

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/ranging/RangingData;
    .registers 3

    .line 404
    new-instance v0, Landroid/ranging/RangingData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/RangingData;-><init>(Landroid/ranging/RangingData$Builder;Landroid/ranging/RangingData-IA;)V

    return-object v0
.end method

.method public blacklist setAzimuth(Landroid/ranging/RangingMeasurement;)Landroid/ranging/RangingData$Builder;
    .registers 2
    .param p1, "azimuth"    # Landroid/ranging/RangingMeasurement;

    .line 305
    iput-object p1, p0, Landroid/ranging/RangingData$Builder;->mAzimuth:Landroid/ranging/RangingMeasurement;

    .line 306
    return-object p0
.end method

.method public blacklist setDelaySpreadMeters(D)Landroid/ranging/RangingData$Builder;
    .registers 5
    .param p1, "delaySpread"    # D

    .line 360
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_9

    .line 363
    iput-wide p1, p0, Landroid/ranging/RangingData$Builder;->mDelaySpreadMeters:D

    .line 364
    return-object p0

    .line 361
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Delay spread meters must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDetectedAttackLevel(B)Landroid/ranging/RangingData$Builder;
    .registers 2
    .param p1, "detectedAttackLevel"    # B

    .line 379
    iput-byte p1, p0, Landroid/ranging/RangingData$Builder;->mDetectedAttackLevel:B

    .line 380
    return-object p0
.end method

.method public blacklist setDistance(Landroid/ranging/RangingMeasurement;)Landroid/ranging/RangingData$Builder;
    .registers 2
    .param p1, "distance"    # Landroid/ranging/RangingMeasurement;

    .line 291
    iput-object p1, p0, Landroid/ranging/RangingData$Builder;->mDistance:Landroid/ranging/RangingMeasurement;

    .line 292
    return-object p0
.end method

.method public blacklist setElevation(Landroid/ranging/RangingMeasurement;)Landroid/ranging/RangingData$Builder;
    .registers 2
    .param p1, "elevation"    # Landroid/ranging/RangingMeasurement;

    .line 319
    iput-object p1, p0, Landroid/ranging/RangingData$Builder;->mElevation:Landroid/ranging/RangingMeasurement;

    .line 320
    return-object p0
.end method

.method public blacklist setRangingTechnology(I)Landroid/ranging/RangingData$Builder;
    .registers 2
    .param p1, "rangingTechnology"    # I

    .line 277
    iput p1, p0, Landroid/ranging/RangingData$Builder;->mRangingTechnology:I

    .line 278
    return-object p0
.end method

.method public blacklist setRssi(I)Landroid/ranging/RangingData$Builder;
    .registers 2
    .param p1, "rssi"    # I

    .line 331
    iput p1, p0, Landroid/ranging/RangingData$Builder;->mRssi:I

    .line 332
    return-object p0
.end method

.method public blacklist setTimestampMillis(J)Landroid/ranging/RangingData$Builder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 343
    iput-wide p1, p0, Landroid/ranging/RangingData$Builder;->mTimestamp:J

    .line 344
    return-object p0
.end method

.method public blacklist setVelocityMetersPerSec(D)Landroid/ranging/RangingData$Builder;
    .registers 3
    .param p1, "velocity"    # D

    .line 393
    iput-wide p1, p0, Landroid/ranging/RangingData$Builder;->mVelocityMetersPerSec:D

    .line 394
    return-object p0
.end method
