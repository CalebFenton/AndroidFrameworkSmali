.class public final Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAf0:D

.field private blacklist mAf1:D

.field private blacklist mAf2:D

.field private blacklist mIodc:I

.field private blacklist mTgd:D

.field private blacklist mTimeOfClockSeconds:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAf0(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mAf0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf1(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mAf1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf2(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mAf2:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIodc(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mIodc:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTgd(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mTgd:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;
    .registers 3

    .line 628
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;-><init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setAf0(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af0"    # D

    .line 593
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mAf0:D

    .line 594
    return-object p0
.end method

.method public blacklist setAf1(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af1"    # D

    .line 600
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mAf1:D

    .line 601
    return-object p0
.end method

.method public blacklist setAf2(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af2"    # D

    .line 607
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mAf2:D

    .line 608
    return-object p0
.end method

.method public blacklist setIodc(I)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    .registers 2
    .param p1, "iodc"    # I

    .line 621
    iput p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mIodc:I

    .line 622
    return-object p0
.end method

.method public blacklist setTgd(D)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    .registers 3
    .param p1, "tgd"    # D

    .line 614
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mTgd:D

    .line 615
    return-object p0
.end method

.method public blacklist setTimeOfClockSeconds(J)Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;
    .registers 3
    .param p1, "timeOfClockSeconds"    # J

    .line 586
    iput-wide p1, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    .line 587
    return-object p0
.end method
