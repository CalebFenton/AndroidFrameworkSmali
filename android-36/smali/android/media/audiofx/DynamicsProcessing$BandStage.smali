.class public Landroid/media/audiofx/DynamicsProcessing$BandStage;
.super Landroid/media/audiofx/DynamicsProcessing$Stage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandStage"
.end annotation


# instance fields
.field private greylist-max-o mBandCount:I


# direct methods
.method public constructor whitelist <init>(ZZI)V
    .registers 5
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z
    .param p3, "bandCount"    # I

    .line 374
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Stage;-><init>(ZZ)V

    .line 375
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, p3

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    .line 376
    return-void
.end method


# virtual methods
.method public whitelist getBandCount()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 391
    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$BandStage;->mBandCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Band Count: %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
