.class public final Landroid/location/GnssCapabilities$Builder;
.super Ljava/lang/Object;
.source "GnssCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mGnssSignalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsAdrCapabilityKnown:Z

.field private blacklist mMeasurementCorrectionsFlags:I

.field private blacklist mPowerFlags:I

.field private blacklist mTopFlags:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 667
    iput-boolean v0, p0, Landroid/location/GnssCapabilities$Builder;->mIsAdrCapabilityKnown:Z

    .line 668
    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 669
    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssCapabilities$Builder;->mGnssSignalTypes:Ljava/util/List;

    .line 671
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssCapabilities;)V
    .registers 3
    .param p1, "capabilities"    # Landroid/location/GnssCapabilities;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmTopFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 675
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmIsAdrCapabilityKnown(Landroid/location/GnssCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssCapabilities$Builder;->mIsAdrCapabilityKnown:Z

    .line 676
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmMeasurementCorrectionsFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 677
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmPowerFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 678
    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmGnssSignalTypes(Landroid/location/GnssCapabilities;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssCapabilities$Builder;->mGnssSignalTypes:Ljava/util/List;

    .line 679
    return-void
.end method

.method private static blacklist setFlag(IIZ)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "flag"    # I
    .param p2, "set"    # Z

    .line 918
    if-eqz p2, :cond_5

    .line 919
    or-int v0, p0, p1

    return v0

    .line 921
    :cond_5
    not-int v0, p1

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssCapabilities;
    .registers 8

    .line 913
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    iget-boolean v2, p0, Landroid/location/GnssCapabilities$Builder;->mIsAdrCapabilityKnown:Z

    iget v3, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    iget v4, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/location/GnssCapabilities$Builder;->mGnssSignalTypes:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssCapabilities;-><init>(IZIILjava/util/List;Landroid/location/GnssCapabilities-IA;)V

    return-object v0
.end method

.method public whitelist setGnssSignalTypes(Ljava/util/List;)Landroid/location/GnssCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;)",
            "Landroid/location/GnssCapabilities$Builder;"
        }
    .end annotation

    .line 905
    .local p1, "gnssSignalTypes":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssSignalType;>;"
    iput-object p1, p0, Landroid/location/GnssCapabilities$Builder;->mGnssSignalTypes:Ljava/util/List;

    .line 906
    return-object p0
.end method

.method public whitelist setHasAccumulatedDeltaRange(I)Landroid/location/GnssCapabilities$Builder;
    .registers 6
    .param p1, "capable"    # I

    .line 809
    const v0, 0x8000

    const/4 v1, 0x0

    if-nez p1, :cond_11

    .line 810
    iput-boolean v1, p0, Landroid/location/GnssCapabilities$Builder;->mIsAdrCapabilityKnown:Z

    .line 811
    iget v2, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    invoke-static {v2, v0, v1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    goto :goto_2c

    .line 812
    :cond_11
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1f

    .line 813
    iput-boolean v2, p0, Landroid/location/GnssCapabilities$Builder;->mIsAdrCapabilityKnown:Z

    .line 814
    iget v1, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    invoke-static {v1, v0, v2}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    goto :goto_2c

    .line 815
    :cond_1f
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2c

    .line 816
    iput-boolean v2, p0, Landroid/location/GnssCapabilities$Builder;->mIsAdrCapabilityKnown:Z

    .line 817
    iget v2, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    invoke-static {v2, v0, v1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 819
    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public whitelist setHasAntennaInfo(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 784
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x800

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 785
    return-object p0
.end method

.method public whitelist setHasGeofencing(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 725
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 726
    return-object p0
.end method

.method public whitelist setHasLowPowerMode(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 752
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x100

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 753
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrections(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 776
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x400

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 777
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsExcessPathLength(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 835
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 837
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsForDriving(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 800
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x4000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 802
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsLosSats(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 826
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 828
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrectionsReflectingPlane(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 844
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    .line 846
    return-object p0
.end method

.method public whitelist setHasMeasurementCorrelationVectors(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 792
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 793
    return-object p0
.end method

.method public whitelist setHasMeasurements(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 733
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 734
    return-object p0
.end method

.method public whitelist setHasMsa(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 701
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 702
    return-object p0
.end method

.method public whitelist setHasMsb(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 693
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 694
    return-object p0
.end method

.method public whitelist setHasNavigationMessages(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 741
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x80

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 742
    return-object p0
.end method

.method public whitelist setHasOnDemandTime(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 717
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 718
    return-object p0
.end method

.method public whitelist setHasPowerMultibandAcquisition(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 888
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 890
    return-object p0
.end method

.method public whitelist setHasPowerMultibandTracking(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 870
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 872
    return-object p0
.end method

.method public whitelist setHasPowerOtherModes(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 897
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 898
    return-object p0
.end method

.method public whitelist setHasPowerSinglebandAcquisition(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 879
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 881
    return-object p0
.end method

.method public whitelist setHasPowerSinglebandTracking(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 861
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 863
    return-object p0
.end method

.method public whitelist setHasPowerTotal(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 853
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    .line 854
    return-object p0
.end method

.method public whitelist setHasSatelliteBlocklist(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 760
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x200

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 761
    return-object p0
.end method

.method public whitelist setHasSatellitePvt(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 768
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x2000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 769
    return-object p0
.end method

.method public whitelist setHasScheduling(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 685
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 686
    return-object p0
.end method

.method public whitelist setHasSingleShotFix(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .param p1, "capable"    # Z

    .line 709
    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    .line 710
    return-object p0
.end method
