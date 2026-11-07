.class public final Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClockBias:D

.field private blacklist mFrequencyBias:D

.field private blacklist mFrequencyChannelNumber:I

.field private blacklist mGroupDelayDiffSeconds:D

.field private blacklist mGroupDelayDiffSecondsAvailable:Z

.field private blacklist mTimeOfClockSeconds:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClockBias(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mClockBias:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyBias(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mFrequencyBias:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyChannelNumber(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mFrequencyChannelNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupDelayDiffSeconds(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mGroupDelayDiffSeconds:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupDelayDiffSecondsAvailable(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mGroupDelayDiffSecondsAvailable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOfClockSeconds(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
    .registers 3

    .line 511
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;-><init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;Landroid/location/GlonassSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setClockBias(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    .registers 3
    .param p1, "clockBias"    # D

    .line 472
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mClockBias:D

    .line 473
    return-object p0
.end method

.method public blacklist setFrequencyBias(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    .registers 3
    .param p1, "frequencyBias"    # D

    .line 480
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mFrequencyBias:D

    .line 481
    return-object p0
.end method

.method public blacklist setFrequencyChannelNumber(I)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    .registers 2
    .param p1, "frequencyChannelNumber"    # I

    .line 488
    iput p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mFrequencyChannelNumber:I

    .line 489
    return-object p0
.end method

.method public blacklist setGroupDelayDiffSeconds(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    .registers 3
    .param p1, "groupDelayDiffSeconds"    # D

    .line 496
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mGroupDelayDiffSeconds:D

    .line 497
    return-object p0
.end method

.method public blacklist setGroupDelayDiffSecondsAvailable(Z)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    .registers 2
    .param p1, "isGroupDelayDiffSecondsAvailable"    # Z

    .line 504
    iput-boolean p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mGroupDelayDiffSecondsAvailable:Z

    .line 505
    return-object p0
.end method

.method public blacklist setTimeOfClockSeconds(J)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;
    .registers 3
    .param p1, "timeOfClockSeconds"    # J

    .line 465
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->mTimeOfClockSeconds:J

    .line 466
    return-object p0
.end method
