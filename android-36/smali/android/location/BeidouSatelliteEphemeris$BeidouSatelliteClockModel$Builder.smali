.class public final Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAf0:D

.field private blacklist mAf1:D

.field private blacklist mAf2:D

.field private blacklist mAodc:I

.field private blacklist mTgd1:D

.field private blacklist mTgd2:D

.field private blacklist mTimeOfClockSeconds:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAf0(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAf0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAf1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf2(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAf2:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAodc(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAodc:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTgd1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mTgd1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTgd2(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mTgd2:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOfClockSeconds(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;
    .registers 3

    .line 415
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;-><init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setAf0(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af0"    # D

    .line 373
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAf0:D

    .line 374
    return-object p0
.end method

.method public blacklist setAf1(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af1"    # D

    .line 380
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAf1:D

    .line 381
    return-object p0
.end method

.method public blacklist setAf2(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af2"    # D

    .line 387
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAf2:D

    .line 388
    return-object p0
.end method

.method public blacklist setAodc(I)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 2
    .param p1, "aodc"    # I

    .line 408
    iput p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mAodc:I

    .line 409
    return-object p0
.end method

.method public blacklist setTgd1(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 3
    .param p1, "tgd1"    # D

    .line 394
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mTgd1:D

    .line 395
    return-object p0
.end method

.method public blacklist setTgd2(D)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 3
    .param p1, "tgd2"    # D

    .line 401
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mTgd2:D

    .line 402
    return-object p0
.end method

.method public blacklist setTimeOfClockSeconds(J)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;
    .registers 3
    .param p1, "timeOfClockSeconds"    # J

    .line 366
    iput-wide p1, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    .line 367
    return-object p0
.end method
