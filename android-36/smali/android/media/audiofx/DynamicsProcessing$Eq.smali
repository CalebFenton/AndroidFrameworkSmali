.class public final Landroid/media/audiofx/DynamicsProcessing$Eq;
.super Landroid/media/audiofx/DynamicsProcessing$BandStage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eq"
.end annotation


# instance fields
.field private final greylist-max-o mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .registers 6
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 742
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 743
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 744
    iget-object v0, p1, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 745
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_1d
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 746
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iget-object v3, p1, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V

    aput-object v2, v1, v0

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .end local v0    # "b":I
    :cond_32
    goto :goto_36

    .line 749
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 751
    :goto_36
    return-void
.end method

.method public constructor whitelist <init>(ZZI)V
    .registers 11
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z
    .param p3, "bandCount"    # I

    .line 722
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 723
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 724
    new-array v0, p3, [Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 725
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_e
    if-ge v0, p3, :cond_3f

    .line 726
    const v1, 0x469c4000    # 20000.0f

    .line 727
    .local v1, "freq":F
    const/4 v2, 0x1

    if-le p3, v2, :cond_32

    .line 728
    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v3

    int-to-float v4, v0

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMaxFreqLog()F

    move-result v5

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 731
    :cond_32
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v4, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(ZFF)V

    aput-object v4, v3, v0

    .line 725
    .end local v1    # "freq":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v0    # "b":I
    :cond_3f
    goto :goto_43

    .line 734
    :cond_40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 736
    :goto_43
    return-void
.end method

.method private greylist-max-o checkBand(I)V
    .registers 5
    .param p1, "band"    # I

    .line 771
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 774
    return-void

    .line 772
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .registers 3
    .param p1, "band"    # I

    .line 790
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->checkBand(I)V

    .line 791
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .registers 5
    .param p1, "band"    # I
    .param p2, "bandCfg"    # Landroid/media/audiofx/DynamicsProcessing$EqBand;

    .line 781
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->checkBand(I)V

    .line 782
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V

    aput-object v1, v0, p1

    .line 783
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->EqBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_32
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v2, v2

    if-ge v1, v2, :cond_56

    .line 760
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  Band %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 764
    .end local v1    # "b":I
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
