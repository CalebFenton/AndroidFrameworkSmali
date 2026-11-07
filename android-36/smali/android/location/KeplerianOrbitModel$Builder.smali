.class public final Landroid/location/KeplerianOrbitModel$Builder;
.super Ljava/lang/Object;
.source "KeplerianOrbitModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/KeplerianOrbitModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeltaN:D

.field private blacklist mEccentricity:D

.field private blacklist mI0:D

.field private blacklist mIDot:D

.field private blacklist mM0:D

.field private blacklist mOmega:D

.field private blacklist mOmega0:D

.field private blacklist mOmegaDot:D

.field private blacklist mRootA:D

.field private blacklist mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeltaN(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mDeltaN:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEccentricity(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mEccentricity:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmI0(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mI0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIDot(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mIDot:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmM0(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mM0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmega(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mOmega:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmega0(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mOmega0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOmegaDot(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mOmegaDot:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootA(Landroid/location/KeplerianOrbitModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mRootA:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondOrderHarmonicPerturbation(Landroid/location/KeplerianOrbitModel$Builder;)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
    .registers 1

    iget-object p0, p0, Landroid/location/KeplerianOrbitModel$Builder;->mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/KeplerianOrbitModel;
    .registers 3

    .line 308
    new-instance v0, Landroid/location/KeplerianOrbitModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/KeplerianOrbitModel;-><init>(Landroid/location/KeplerianOrbitModel$Builder;Landroid/location/KeplerianOrbitModel-IA;)V

    return-object v0
.end method

.method public blacklist setDeltaN(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "deltaN"    # D

    .line 293
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mDeltaN:D

    .line 294
    return-object p0
.end method

.method public blacklist setEccentricity(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "eccentricity"    # D

    .line 242
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mEccentricity:D

    .line 243
    return-object p0
.end method

.method public blacklist setI0(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "i0"    # D

    .line 249
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mI0:D

    .line 250
    return-object p0
.end method

.method public blacklist setIDot(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "iDot"    # D

    .line 256
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mIDot:D

    .line 257
    return-object p0
.end method

.method public blacklist setM0(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "m0"    # D

    .line 286
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mM0:D

    .line 287
    return-object p0
.end method

.method public blacklist setOmega(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "omega"    # D

    .line 263
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mOmega:D

    .line 264
    return-object p0
.end method

.method public blacklist setOmega0(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "omega0"    # D

    .line 272
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mOmega0:D

    .line 273
    return-object p0
.end method

.method public blacklist setOmegaDot(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "omegaDot"    # D

    .line 279
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mOmegaDot:D

    .line 280
    return-object p0
.end method

.method public blacklist setRootA(D)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 3
    .param p1, "rootA"    # D

    .line 235
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mRootA:D

    .line 236
    return-object p0
.end method

.method public blacklist setSecondOrderHarmonicPerturbation(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;)Landroid/location/KeplerianOrbitModel$Builder;
    .registers 2
    .param p1, "secondOrderHarmonicPerturbation"    # Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    .line 301
    iput-object p1, p0, Landroid/location/KeplerianOrbitModel$Builder;->mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    .line 302
    return-object p0
.end method
