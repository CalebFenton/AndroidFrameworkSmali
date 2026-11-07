.class public final Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAf0:D

.field private blacklist mAf1:D

.field private blacklist mAf2:D

.field private blacklist mBgdSeconds:D

.field private blacklist mSatelliteClockType:I

.field private blacklist mSisaMeters:D

.field private blacklist mTimeOfClockSeconds:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAf0(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mAf0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf1(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mAf1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf2(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mAf2:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBgdSeconds(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mBgdSeconds:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteClockType(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mSatelliteClockType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSisaMeters(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mSisaMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
    .registers 3

    .line 725
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;-><init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;Landroid/location/GalileoSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setAf0(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af0"    # D

    .line 678
    iput-wide p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mAf0:D

    .line 679
    return-object p0
.end method

.method public blacklist setAf1(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af1"    # D

    .line 685
    iput-wide p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mAf1:D

    .line 686
    return-object p0
.end method

.method public blacklist setAf2(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 3
    .param p1, "af2"    # D

    .line 694
    iput-wide p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mAf2:D

    .line 695
    return-object p0
.end method

.method public blacklist setBgdSeconds(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 3
    .param p1, "bgdSeconds"    # D

    .line 702
    iput-wide p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mBgdSeconds:D

    .line 703
    return-object p0
.end method

.method public blacklist setSatelliteClockType(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 2
    .param p1, "satelliteClockType"    # I

    .line 716
    iput p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mSatelliteClockType:I

    .line 717
    return-object p0
.end method

.method public blacklist setSisaMeters(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 3
    .param p1, "sisaMeters"    # D

    .line 709
    iput-wide p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mSisaMeters:D

    .line 710
    return-object p0
.end method

.method public blacklist setTimeOfClockSeconds(J)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    .registers 3
    .param p1, "timeOfClockSeconds"    # J

    .line 671
    iput-wide p1, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    .line 672
    return-object p0
.end method
