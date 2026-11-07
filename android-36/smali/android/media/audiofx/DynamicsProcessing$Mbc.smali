.class public final Landroid/media/audiofx/DynamicsProcessing$Mbc;
.super Landroid/media/audiofx/DynamicsProcessing$BandStage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mbc"
.end annotation


# instance fields
.field private final greylist-max-o mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 6
    .param p1, "cfg"    # Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 833
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 834
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 835
    iget-object v0, p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 836
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_1d
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 837
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iget-object v3, p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    aput-object v2, v1, v0

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .end local v0    # "b":I
    :cond_32
    goto :goto_36

    .line 840
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 842
    :goto_36
    return-void
.end method

.method public constructor whitelist <init>(ZZI)V
    .registers 20
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z
    .param p3, "bandCount"    # I

    .line 809
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct/range {p0 .. p3}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 810
    invoke-virtual {v0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 811
    new-array v2, v1, [Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 812
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_12
    if-ge v2, v1, :cond_55

    .line 813
    const v3, 0x469c4000    # 20000.0f

    .line 814
    .local v3, "freq":F
    const/4 v4, 0x1

    if-le v1, v4, :cond_38

    .line 815
    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v4

    int-to-float v5, v2

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMaxFreqLog()F

    move-result v6

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    move v6, v3

    goto :goto_39

    .line 814
    :cond_38
    move v6, v3

    .line 818
    .end local v3    # "freq":F
    .local v6, "freq":F
    :goto_39
    iget-object v3, v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v4, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x1

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x3dcc0000    # -45.0f

    const/4 v11, 0x0

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v15}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(ZFFFFFFFFFF)V

    aput-object v4, v3, v2

    .line 812
    .end local v6    # "freq":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v2    # "b":I
    :cond_55
    goto :goto_59

    .line 825
    :cond_56
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 827
    :goto_59
    return-void
.end method

.method private greylist-max-o checkBand(I)V
    .registers 5
    .param p1, "band"    # I

    .line 862
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 865
    return-void

    .line 863
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
.method public whitelist getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .registers 3
    .param p1, "band"    # I

    .line 881
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->checkBand(I)V

    .line 882
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 5
    .param p1, "band"    # I
    .param p2, "bandCfg"    # Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 872
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->checkBand(I)V

    .line 873
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    aput-object v1, v0, p1

    .line 874
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->MbcBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_32
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v2, v2

    if-ge v1, v2, :cond_56

    .line 851
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  Band %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 855
    .end local v1    # "b":I
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
