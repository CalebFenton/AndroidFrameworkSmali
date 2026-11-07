.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBandwidth:I

.field private blacklist mFrequency:J

.field private blacklist mGuardInterval:I

.field private blacklist mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

.field private blacklist mMode:I

.field private blacklist mPartialReceptionFlag:I

.field private blacklist mServiceAreaId:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    .line 354
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    .line 355
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    .line 356
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    .line 357
    new-array v1, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    .line 358
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    .line 361
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
    .registers 11

    .line 526
    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    iget-object v7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iget v8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;ILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V

    return-object v0
.end method

.method public whitelist setBandwidth(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2
    .param p1, "bandwidth"    # I

    .line 422
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    .line 423
    return-object p0
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 6
    .param p1, "codeRate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setModulation"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 449
    const-string v0, "IsdbtFrontendSettings"

    const-string v1, "Use IsdbtLayerSettings on HAL 2.0 or higher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 451
    :cond_13
    invoke-static {}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    move-result-object v0

    .line 452
    .local v0, "layerBuilder":Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    .line 453
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 454
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    goto :goto_31

    .line 456
    :cond_26
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getModulation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    .line 458
    :goto_31
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    move-result-object v3

    aput-object v3, v1, v2

    .line 460
    .end local v0    # "layerBuilder":Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    :goto_39
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 384
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    .line 385
    return-object p0
.end method

.method public whitelist setGuardInterval(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2
    .param p1, "guardInterval"    # I

    .line 469
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    .line 470
    return-object p0
.end method

.method public whitelist setLayerSettings([Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 5
    .param p1, "layerSettings"    # [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    .line 494
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setLayerSettings"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 496
    array-length v0, p1

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 498
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 501
    .end local v0    # "i":I
    :cond_1d
    return-object p0
.end method

.method public whitelist setMode(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2
    .param p1, "mode"    # I

    .line 432
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    .line 433
    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 6
    .param p1, "modulation"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setModulation"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 402
    const-string v0, "IsdbtFrontendSettings"

    const-string v1, "Use IsdbtLayerSettings on HAL 2.0 or higher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 404
    :cond_13
    invoke-static {}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    move-result-object v0

    .line 405
    .local v0, "layerBuilder":Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    .line 406
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 407
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    goto :goto_31

    .line 409
    :cond_26
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getCodeRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    .line 411
    :goto_31
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    move-result-object v3

    aput-object v3, v1, v2

    .line 413
    .end local v0    # "layerBuilder":Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;
    :goto_39
    return-object p0
.end method

.method public whitelist setPartialReceptionFlag(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 4
    .param p1, "flag"    # I

    .line 514
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setPartialReceptionFlag"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 516
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    .line 518
    :cond_d
    return-object p0
.end method

.method public whitelist setServiceAreaId(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2
    .param p1, "serviceAreaId"    # I

    .line 479
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    .line 480
    return-object p0
.end method
