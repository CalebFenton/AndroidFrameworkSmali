.class public final Landroid/location/GlonassSatelliteEphemeris$Builder;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAgeInDays:I

.field private blacklist mFrameTimeSeconds:D

.field private blacklist mGlonassM:Z

.field private blacklist mHealthState:I

.field private blacklist mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

.field private blacklist mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

.field private blacklist mSlotNumber:I

.field private blacklist mUpdateIntervalMinutes:I

.field private blacklist mUpdateIntervalOdd:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAgeInDays(Landroid/location/GlonassSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mAgeInDays:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeSeconds(Landroid/location/GlonassSatelliteEphemeris$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mFrameTimeSeconds:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlonassM(Landroid/location/GlonassSatelliteEphemeris$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mGlonassM:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHealthState(Landroid/location/GlonassSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mHealthState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteClockModel(Landroid/location/GlonassSatelliteEphemeris$Builder;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GlonassSatelliteEphemeris$Builder;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotNumber(Landroid/location/GlonassSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mSlotNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateIntervalMinutes(Landroid/location/GlonassSatelliteEphemeris$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mUpdateIntervalMinutes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateIntervalOdd(Landroid/location/GlonassSatelliteEphemeris$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mUpdateIntervalOdd:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GlonassSatelliteEphemeris;
    .registers 3

    .line 312
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GlonassSatelliteEphemeris;-><init>(Landroid/location/GlonassSatelliteEphemeris$Builder;Landroid/location/GlonassSatelliteEphemeris-IA;)V

    return-object v0
.end method

.method public blacklist setAgeInDays(I)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "ageInDays"    # I

    .line 267
    iput p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mAgeInDays:I

    .line 268
    return-object p0
.end method

.method public blacklist setFrameTimeSeconds(D)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 3
    .param p1, "frameTimeSeconds"    # D

    .line 260
    iput-wide p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mFrameTimeSeconds:D

    .line 261
    return-object p0
.end method

.method public blacklist setGlonassM(Z)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "isGlonassM"    # Z

    .line 305
    iput-boolean p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mGlonassM:Z

    .line 306
    return-object p0
.end method

.method public blacklist setHealthState(I)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "healthState"    # I

    .line 253
    iput p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mHealthState:I

    .line 254
    return-object p0
.end method

.method public blacklist setSatelliteClockModel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteClockModel"    # Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    .line 275
    iput-object p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    .line 276
    return-object p0
.end method

.method public blacklist setSatelliteOrbitModel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "satelliteOrbitModel"    # Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    .line 283
    iput-object p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    .line 284
    return-object p0
.end method

.method public blacklist setSlotNumber(I)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "slotNumber"    # I

    .line 246
    iput p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mSlotNumber:I

    .line 247
    return-object p0
.end method

.method public blacklist setUpdateIntervalMinutes(I)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "updateIntervalMinutes"    # I

    .line 291
    iput p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mUpdateIntervalMinutes:I

    .line 292
    return-object p0
.end method

.method public blacklist setUpdateIntervalOdd(Z)Landroid/location/GlonassSatelliteEphemeris$Builder;
    .registers 2
    .param p1, "isUpdateIntervalOdd"    # Z

    .line 298
    iput-boolean p1, p0, Landroid/location/GlonassSatelliteEphemeris$Builder;->mUpdateIntervalOdd:Z

    .line 299
    return-object p0
.end method
