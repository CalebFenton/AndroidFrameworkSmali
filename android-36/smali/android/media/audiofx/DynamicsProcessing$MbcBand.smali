.class public final Landroid/media/audiofx/DynamicsProcessing$MbcBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MbcBand"
.end annotation


# instance fields
.field private greylist-max-o mAttackTime:F

.field private greylist-max-o mExpanderRatio:F

.field private greylist-max-o mKneeWidth:F

.field private greylist-max-o mNoiseGateThreshold:F

.field private greylist-max-o mPostGain:F

.field private greylist-max-o mPreGain:F

.field private greylist-max-o mRatio:F

.field private greylist-max-o mReleaseTime:F

.field private greylist-max-o mThreshold:F


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 4
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 573
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 574
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    .line 575
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    .line 576
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    .line 577
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    .line 578
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    .line 579
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    .line 580
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    .line 581
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    .line 582
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    .line 583
    return-void
.end method

.method public constructor whitelist <init>(ZFFFFFFFFFF)V
    .registers 12
    .param p1, "enabled"    # Z
    .param p2, "cutoffFrequency"    # F
    .param p3, "attackTime"    # F
    .param p4, "releaseTime"    # F
    .param p5, "ratio"    # F
    .param p6, "threshold"    # F
    .param p7, "kneeWidth"    # F
    .param p8, "noiseGateThreshold"    # F
    .param p9, "expanderRatio"    # F
    .param p10, "preGain"    # F
    .param p11, "postGain"    # F

    .line 556
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 557
    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    .line 558
    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    .line 559
    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    .line 560
    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    .line 561
    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    .line 562
    iput p8, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    .line 563
    iput p9, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    .line 564
    iput p10, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    .line 565
    iput p11, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    .line 566
    return-void
.end method


# virtual methods
.method public whitelist getAttackTime()F
    .registers 2

    .line 604
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return v0
.end method

.method public whitelist getExpanderRatio()F
    .registers 2

    .line 676
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return v0
.end method

.method public whitelist getKneeWidth()F
    .registers 2

    .line 648
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return v0
.end method

.method public whitelist getNoiseGateThreshold()F
    .registers 2

    .line 663
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return v0
.end method

.method public whitelist getPostGain()F
    .registers 2

    .line 699
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return v0
.end method

.method public whitelist getPreGain()F
    .registers 2

    .line 687
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return v0
.end method

.method public whitelist getRatio()F
    .registers 2

    .line 624
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return v0
.end method

.method public whitelist getReleaseTime()F
    .registers 2

    .line 614
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return v0
.end method

.method public whitelist getThreshold()F
    .registers 2

    .line 635
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return v0
.end method

.method public whitelist setAttackTime(F)V
    .registers 2
    .param p1, "attackTime"    # F

    .line 609
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return-void
.end method

.method public whitelist setExpanderRatio(F)V
    .registers 2
    .param p1, "expanderRatio"    # F

    .line 681
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return-void
.end method

.method public whitelist setKneeWidth(F)V
    .registers 2
    .param p1, "kneeWidth"    # F

    .line 655
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return-void
.end method

.method public whitelist setNoiseGateThreshold(F)V
    .registers 2
    .param p1, "noiseGateThreshold"    # F

    .line 671
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return-void
.end method

.method public whitelist setPostGain(F)V
    .registers 2
    .param p1, "postGain"    # F

    .line 705
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method

.method public whitelist setPreGain(F)V
    .registers 2
    .param p1, "preGain"    # F

    .line 693
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return-void
.end method

.method public whitelist setRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .line 629
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return-void
.end method

.method public whitelist setReleaseTime(F)V
    .registers 2
    .param p1, "releaseTime"    # F

    .line 619
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return-void
.end method

.method public whitelist setThreshold(F)V
    .registers 2
    .param p1, "threshold"    # F

    .line 641
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " AttackTime: %f (ms)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " ReleaseTime: %f (ms)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Ratio: 1:%f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Threshold: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " NoiseGateThreshold: %f(dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " ExpanderRatio: %f:1\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " PreGain: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " PostGain: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
