.class public Landroid/location/GnssAntennaInfo$Builder;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierFrequencyMHz:D

.field private blacklist mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

.field private blacklist mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

.field private blacklist mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;


# direct methods
.method public constructor whitelist <init>()V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    new-instance v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;-><init>(DDDDDD)V

    invoke-direct {p0, v1, v2, v0}, Landroid/location/GnssAntennaInfo$Builder;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;)V

    .line 408
    return-void
.end method

.method public constructor whitelist <init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;)V
    .registers 5
    .param p1, "carrierFrequencyMHz"    # D
    .param p3, "phaseCenterOffset"    # Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    .line 412
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 413
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssAntennaInfo;)V
    .registers 4
    .param p1, "antennaInfo"    # Landroid/location/GnssAntennaInfo;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmCarrierFrequencyMHz(Landroid/location/GnssAntennaInfo;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    .line 417
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmPhaseCenterOffset(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 418
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmPhaseCenterVariationCorrections(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$SphericalCorrections;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 419
    invoke-static {p1}, Landroid/location/GnssAntennaInfo;->-$$Nest$fgetmSignalGainCorrections(Landroid/location/GnssAntennaInfo;)Landroid/location/GnssAntennaInfo$SphericalCorrections;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 420
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssAntennaInfo;
    .registers 8

    .line 479
    new-instance v0, Landroid/location/GnssAntennaInfo;

    iget-wide v1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iget-object v4, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget-object v5, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAntennaInfo;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo-IA;)V

    return-object v0
.end method

.method public whitelist setCarrierFrequencyMHz(D)Landroid/location/GnssAntennaInfo$Builder;
    .registers 3
    .param p1, "carrierFrequencyMHz"    # D

    .line 430
    iput-wide p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mCarrierFrequencyMHz:D

    .line 431
    return-object p0
.end method

.method public whitelist setPhaseCenterOffset(Landroid/location/GnssAntennaInfo$PhaseCenterOffset;)Landroid/location/GnssAntennaInfo$Builder;
    .registers 3
    .param p1, "phaseCenterOffset"    # Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 442
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterOffset:Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 443
    return-object p0
.end method

.method public whitelist setPhaseCenterVariationCorrections(Landroid/location/GnssAntennaInfo$SphericalCorrections;)Landroid/location/GnssAntennaInfo$Builder;
    .registers 2
    .param p1, "phaseCenterVariationCorrections"    # Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 455
    iput-object p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mPhaseCenterVariationCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 456
    return-object p0
.end method

.method public whitelist setSignalGainCorrections(Landroid/location/GnssAntennaInfo$SphericalCorrections;)Landroid/location/GnssAntennaInfo$Builder;
    .registers 2
    .param p1, "signalGainCorrections"    # Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 468
    iput-object p1, p0, Landroid/location/GnssAntennaInfo$Builder;->mSignalGainCorrections:Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 469
    return-object p0
.end method
