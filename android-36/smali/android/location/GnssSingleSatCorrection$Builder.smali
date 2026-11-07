.class public final Landroid/location/GnssSingleSatCorrection$Builder;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierFrequencyHz:F

.field private blacklist mCombinedAttenuationDb:F

.field private blacklist mCombinedExcessPathLengthMeters:F

.field private blacklist mCombinedExcessPathLengthUncertaintyMeters:F

.field private blacklist mConstellationType:I

.field private blacklist mGnssExcessInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProbSatIsLos:F

.field private blacklist mSatId:I

.field private blacklist mSingleSatCorrectionFlags:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mGnssExcessInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssSingleSatCorrection;
    .registers 12

    .line 490
    new-instance v0, Landroid/location/GnssSingleSatCorrection;

    iget v1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    iget v2, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I

    iget v3, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I

    iget v4, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F

    iget v5, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    iget v6, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthMeters:F

    iget v7, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthUncertaintyMeters:F

    iget v8, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedAttenuationDb:F

    iget-object v9, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mGnssExcessInfoList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V

    return-object v0
.end method

.method public whitelist clearCombinedAttenuationDb()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedAttenuationDb:F

    .line 465
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 466
    return-object p0
.end method

.method public whitelist clearExcessPathLengthMeters()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthMeters:F

    .line 421
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 422
    return-object p0
.end method

.method public whitelist clearExcessPathLengthUncertaintyMeters()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthUncertaintyMeters:F

    .line 442
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 443
    return-object p0
.end method

.method public whitelist clearProbabilityLineOfSight()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    .line 396
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 397
    return-object p0
.end method

.method public whitelist setCarrierFrequencyHz(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5
    .param p1, "carrierFrequencyHz"    # F

    .line 370
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "carrierFrequencyHz"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 372
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F

    .line 373
    return-object p0
.end method

.method public whitelist setCombinedAttenuationDb(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5
    .param p1, "combinedAttenuationDb"    # F

    .line 451
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "combinedAttenuationDb"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 453
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedAttenuationDb:F

    .line 454
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 455
    return-object p0
.end method

.method public whitelist setConstellationType(I)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2
    .param p1, "constellationType"    # I

    .line 356
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I

    .line 357
    return-object p0
.end method

.method public whitelist setExcessPathLengthMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5
    .param p1, "combinedExcessPathLengthMeters"    # F

    .line 407
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "excessPathLengthMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 409
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthMeters:F

    .line 410
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 411
    return-object p0
.end method

.method public whitelist setExcessPathLengthUncertaintyMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5
    .param p1, "combinedExcessPathLengthUncertaintyMeters"    # F

    .line 428
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "excessPathLengthUncertaintyMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 430
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthUncertaintyMeters:F

    .line 431
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 432
    return-object p0
.end method

.method public whitelist setGnssExcessPathInfoList(Ljava/util/List;)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;)",
            "Landroid/location/GnssSingleSatCorrection$Builder;"
        }
    .end annotation

    .line 484
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssExcessPathInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mGnssExcessInfoList:Ljava/util/List;

    .line 485
    return-object p0
.end method

.method public whitelist setProbabilityLineOfSight(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5
    .param p1, "probSatIsLos"    # F

    .line 382
    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "probSatIsLos should be between 0 and 1."

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 384
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    .line 385
    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    .line 386
    return-object p0
.end method

.method public whitelist setReflectingPlane(Landroid/location/GnssReflectingPlane;)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2
    .param p1, "reflectingPlane"    # Landroid/location/GnssReflectingPlane;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    return-object p0
.end method

.method public whitelist setSatelliteId(I)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3
    .param p1, "satId"    # I

    .line 362
    const-string v0, "satId should be non-negative."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 363
    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I

    .line 364
    return-object p0
.end method
