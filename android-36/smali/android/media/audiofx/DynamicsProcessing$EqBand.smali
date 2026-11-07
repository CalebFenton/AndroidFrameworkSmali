.class public final Landroid/media/audiofx/DynamicsProcessing$EqBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EqBand"
.end annotation


# instance fields
.field private greylist-max-o mGain:F


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 4
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 487
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 488
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    .line 489
    return-void
.end method

.method public constructor whitelist <init>(ZFF)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "cutoffFrequency"    # F
    .param p3, "gain"    # F

    .line 478
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    .line 479
    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    .line 480
    return-void
.end method


# virtual methods
.method public whitelist getGain()F
    .registers 2

    .line 504
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    return v0
.end method

.method public whitelist setGain(F)V
    .registers 2
    .param p1, "gain"    # F

    .line 512
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    .line 513
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$EqBand;->mGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Gain: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
