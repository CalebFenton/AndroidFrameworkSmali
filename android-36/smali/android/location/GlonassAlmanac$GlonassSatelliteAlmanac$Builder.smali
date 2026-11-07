.class public final Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
.super Ljava/lang/Object;
.source "GlonassAlmanac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCalendarDayNumber:I

.field private blacklist mDeltaI:D

.field private blacklist mDeltaT:D

.field private blacklist mDeltaTDot:D

.field private blacklist mEccentricity:D

.field private blacklist mFrequencyChannelNumber:I

.field private blacklist mGlonassM:Z

.field private blacklist mHealthState:I

.field private blacklist mLambda:D

.field private blacklist mOmega:D

.field private blacklist mSlotNumber:I

.field private blacklist mTLambda:D

.field private blacklist mTau:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCalendarDayNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mCalendarDayNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeltaI(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mDeltaI:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeltaT(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mDeltaT:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeltaTDot(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mDeltaTDot:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEccentricity(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mEccentricity:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyChannelNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mFrequencyChannelNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlonassM(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mGlonassM:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHealthState(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mHealthState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLambda(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mLambda:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmega(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mOmega:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotNumber(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mSlotNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTLambda(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mTLambda:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTau(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mTau:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
    .registers 3

    .line 466
    new-instance v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;-><init>(Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;Landroid/location/GlonassAlmanac-IA;)V

    return-object v0
.end method

.method public blacklist setCalendarDayNumber(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "calendarDayNumber"    # I

    .line 390
    iput p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mCalendarDayNumber:I

    .line 391
    return-object p0
.end method

.method public blacklist setDeltaI(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "deltaI"    # D

    .line 425
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mDeltaI:D

    .line 426
    return-object p0
.end method

.method public blacklist setDeltaT(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "deltaT"    # D

    .line 435
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mDeltaT:D

    .line 436
    return-object p0
.end method

.method public blacklist setDeltaTDot(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "deltaTDot"    # D

    .line 444
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mDeltaTDot:D

    .line 445
    return-object p0
.end method

.method public blacklist setEccentricity(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "eccentricity"    # D

    .line 452
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mEccentricity:D

    .line 453
    return-object p0
.end method

.method public blacklist setFrequencyChannelNumber(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "frequencyChannelNumber"    # I

    .line 379
    iput p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mFrequencyChannelNumber:I

    .line 380
    return-object p0
.end method

.method public blacklist setGlonassM(Z)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "isGlonassM"    # Z

    .line 397
    iput-boolean p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mGlonassM:Z

    .line 398
    return-object p0
.end method

.method public blacklist setHealthState(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "healthState"    # I

    .line 371
    iput p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mHealthState:I

    .line 372
    return-object p0
.end method

.method public blacklist setLambda(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "lambda"    # D

    .line 418
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mLambda:D

    .line 419
    return-object p0
.end method

.method public blacklist setOmega(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "omega"    # D

    .line 459
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mOmega:D

    .line 460
    return-object p0
.end method

.method public blacklist setSlotNumber(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "slotNumber"    # I

    .line 364
    iput p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mSlotNumber:I

    .line 365
    return-object p0
.end method

.method public blacklist setTLambda(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "tLambda"    # D

    .line 411
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mTLambda:D

    .line 412
    return-object p0
.end method

.method public blacklist setTau(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "tau"    # D

    .line 404
    iput-wide p1, p0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->mTau:D

    .line 405
    return-object p0
.end method
