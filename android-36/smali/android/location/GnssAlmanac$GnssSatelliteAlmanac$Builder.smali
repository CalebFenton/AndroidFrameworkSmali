.class public final Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
.super Ljava/lang/Object;
.source "GnssAlmanac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAf0:D

.field private blacklist mAf1:D

.field private blacklist mEccentricity:D

.field private blacklist mInclination:D

.field private blacklist mM0:D

.field private blacklist mOmega:D

.field private blacklist mOmega0:D

.field private blacklist mOmegaDot:D

.field private blacklist mRootA:D

.field private blacklist mSvHealth:I

.field private blacklist mSvid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAf0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mAf0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAf1(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mAf1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEccentricity(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mEccentricity:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInclination(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mInclination:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmM0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mM0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmega(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mOmega:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmega0(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mOmega0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmegaDot(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mOmegaDot:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootA(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mRootA:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvHealth(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mSvHealth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvid(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mSvid:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
    .registers 3

    .line 644
    new-instance v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;-><init>(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;Landroid/location/GnssAlmanac-IA;)V

    return-object v0
.end method

.method public blacklist setAf0(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "af0"    # D

    .line 630
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mAf0:D

    .line 631
    return-object p0
.end method

.method public blacklist setAf1(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "af1"    # D

    .line 637
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mAf1:D

    .line 638
    return-object p0
.end method

.method public blacklist setEccentricity(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "eccentricity"    # D

    .line 565
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mEccentricity:D

    .line 566
    return-object p0
.end method

.method public blacklist setInclination(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "inclination"    # D

    .line 580
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mInclination:D

    .line 581
    return-object p0
.end method

.method public blacklist setM0(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "m0"    # D

    .line 623
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mM0:D

    .line 624
    return-object p0
.end method

.method public blacklist setOmega(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "omega"    # D

    .line 587
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mOmega:D

    .line 588
    return-object p0
.end method

.method public blacklist setOmega0(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "omega0"    # D

    .line 597
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mOmega0:D

    .line 598
    return-object p0
.end method

.method public blacklist setOmegaDot(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "omegaDot"    # D

    .line 604
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mOmegaDot:D

    .line 605
    return-object p0
.end method

.method public blacklist setRootA(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 3
    .param p1, "rootA"    # D

    .line 616
    iput-wide p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mRootA:D

    .line 617
    return-object p0
.end method

.method public blacklist setSvHealth(I)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "svHealth"    # I

    .line 558
    iput p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mSvHealth:I

    .line 559
    return-object p0
.end method

.method public blacklist setSvid(I)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;
    .registers 2
    .param p1, "svid"    # I

    .line 538
    iput p1, p0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->mSvid:I

    .line 539
    return-object p0
.end method
