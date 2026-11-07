.class public Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbtFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBandwidth:I

.field private blacklist mConstellation:I

.field private blacklist mFrequency:J

.field private blacklist mGuardInterval:I

.field private blacklist mHierarchy:I

.field private blacklist mHpCodeRate:I

.field private blacklist mIsHighPriority:Z

.field private blacklist mIsMiso:Z

.field private blacklist mLpCodeRate:I

.field private blacklist mPlpGroupId:I

.field private blacklist mPlpId:I

.field private blacklist mPlpMode:I

.field private blacklist mStandard:I

.field private blacklist mTransmissionMode:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    .line 530
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    .line 531
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    .line 532
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    .line 533
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    .line 534
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    .line 535
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    .line 536
    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    .line 537
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    .line 538
    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    .line 539
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    .line 540
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    .line 541
    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    .line 544
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/DvbtFrontendSettings-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;
    .registers 20

    .line 726
    move-object/from16 v0, p0

    new-instance v1, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;

    iget-wide v2, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    iget v4, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    iget v5, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    iget v6, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    iget v7, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    iget v8, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    iget v9, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    iget v10, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    iget-boolean v11, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    iget v12, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    iget-boolean v13, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    iget v14, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    iget v15, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    move-object/from16 v16, v1

    iget v1, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    const/16 v17, 0x0

    move-object/from16 v18, v16

    move/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;-><init>(JIIIIIIIZIZIIILandroid/media/tv/tuner/frontend/DvbtFrontendSettings-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setBandwidth(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "bandwidth"    # I

    .line 598
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    .line 599
    return-object p0
.end method

.method public whitelist setConstellation(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .param p1, "constellation"    # I

    .line 613
    invoke-static {p1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;->-$$Nest$smisExtendedConstellation(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 614
    const v0, 0x10001

    const-string/jumbo v1, "set Constellation Ext"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 616
    :cond_12
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    .line 618
    :cond_14
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 567
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    .line 568
    return-object p0
.end method

.method public whitelist setGuardInterval(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "guardInterval"    # I

    .line 657
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    .line 658
    return-object p0
.end method

.method public whitelist setHierarchy(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "hierarchy"    # I

    .line 627
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    .line 628
    return-object p0
.end method

.method public whitelist setHighPriority(Z)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "isHighPriority"    # Z

    .line 667
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    .line 668
    return-object p0
.end method

.method public whitelist setHighPriorityCodeRate(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "hpCodeRate"    # I

    .line 637
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    .line 638
    return-object p0
.end method

.method public whitelist setLowPriorityCodeRate(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "lpCodeRate"    # I

    .line 647
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    .line 648
    return-object p0
.end method

.method public whitelist setMiso(Z)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "isMiso"    # Z

    .line 687
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    .line 688
    return-object p0
.end method

.method public whitelist setPlpGroupId(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "plpGroupId"    # I

    .line 717
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    .line 718
    return-object p0
.end method

.method public whitelist setPlpId(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "plpId"    # I

    .line 707
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    .line 708
    return-object p0
.end method

.method public whitelist setPlpMode(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "plpMode"    # I

    .line 697
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    .line 698
    return-object p0
.end method

.method public whitelist setStandard(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2
    .param p1, "standard"    # I

    .line 677
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    .line 678
    return-object p0
.end method

.method public whitelist setTransmissionMode(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .param p1, "transmissionMode"    # I

    .line 583
    invoke-static {p1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;->-$$Nest$smisExtendedTransmissionMode(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 584
    const v0, 0x10001

    const-string/jumbo v1, "set TransmissionMode Ext"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 586
    :cond_12
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    .line 588
    :cond_14
    return-object p0
.end method
