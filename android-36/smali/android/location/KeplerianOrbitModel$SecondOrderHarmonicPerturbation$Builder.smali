.class public final Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
.super Ljava/lang/Object;
.source "KeplerianOrbitModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCic:D

.field private blacklist mCis:D

.field private blacklist mCrc:D

.field private blacklist mCrs:D

.field private blacklist mCuc:D

.field private blacklist mCus:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCic(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCic:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCis(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCis:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCrc(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCrc:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCrs(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCrs:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCuc(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCuc:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCus(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCus:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
    .registers 3

    .line 514
    new-instance v0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;-><init>(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;Landroid/location/KeplerianOrbitModel-IA;)V

    return-object v0
.end method

.method public blacklist setCic(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    .registers 3
    .param p1, "cic"    # D

    .line 460
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCic:D

    .line 461
    return-object p0
.end method

.method public blacklist setCis(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    .registers 3
    .param p1, "cis"    # D

    .line 470
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCis:D

    .line 471
    return-object p0
.end method

.method public blacklist setCrc(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    .registers 3
    .param p1, "crc"    # D

    .line 477
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCrc:D

    .line 478
    return-object p0
.end method

.method public blacklist setCrs(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    .registers 3
    .param p1, "crs"    # D

    .line 484
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCrs:D

    .line 485
    return-object p0
.end method

.method public blacklist setCuc(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    .registers 3
    .param p1, "cuc"    # D

    .line 494
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCuc:D

    .line 495
    return-object p0
.end method

.method public blacklist setCus(D)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    .registers 3
    .param p1, "cus"    # D

    .line 504
    iput-wide p1, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->mCus:D

    .line 505
    return-object p0
.end method
