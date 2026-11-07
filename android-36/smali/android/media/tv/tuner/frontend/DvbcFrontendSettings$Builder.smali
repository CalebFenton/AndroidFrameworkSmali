.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbcFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnnex:I

.field private blacklist mBandwidth:I

.field private blacklist mFrequency:J

.field private blacklist mInnerFec:J

.field private blacklist mInterleaveMode:I

.field private blacklist mModulation:I

.field private blacklist mOuterFec:I

.field private blacklist mSpectralInversion:I

.field private blacklist mSymbolRate:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 4

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    .line 347
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    .line 348
    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    .line 349
    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    .line 350
    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    .line 351
    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    .line 352
    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    .line 353
    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    .line 354
    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    .line 357
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
    .registers 14

    .line 484
    new-instance v0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    iget-wide v4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iget v9, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    iget v10, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    iget v11, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(JIJIIIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V

    return-object v0
.end method

.method public whitelist setAnnex(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2
    .param p1, "annex"    # I

    .line 431
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    .line 432
    return-object p0
.end method

.method public whitelist setBandwidth(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 4
    .param p1, "bandwidth"    # I

    .line 472
    const v0, 0x10001

    const-string/jumbo v1, "setBandwidth"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 474
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    .line 476
    :cond_e
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 380
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    .line 381
    return-object p0
.end method

.method public whitelist setInnerFec(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 3
    .param p1, "fec"    # J

    .line 401
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    .line 402
    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2
    .param p1, "modulation"    # I

    .line 391
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    .line 392
    return-object p0
.end method

.method public whitelist setOuterFec(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2
    .param p1, "outerFec"    # I

    .line 421
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    .line 422
    return-object p0
.end method

.method public whitelist setSpectralInversion(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2
    .param p1, "spectralInversion"    # I

    .line 441
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    .line 442
    return-object p0
.end method

.method public whitelist setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2
    .param p1, "symbolRate"    # I

    .line 411
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    .line 412
    return-object p0
.end method

.method public whitelist setTimeInterleaveMode(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 4
    .param p1, "interleaveMode"    # I

    .line 455
    const v0, 0x10001

    const-string/jumbo v1, "setTimeInterleaveMode"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 457
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    .line 459
    :cond_e
    return-object p0
.end method
