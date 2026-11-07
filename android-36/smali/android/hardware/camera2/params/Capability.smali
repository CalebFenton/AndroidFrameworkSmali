.class public final Landroid/hardware/camera2/params/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# static fields
.field public static final blacklist COUNT:I = 0x3


# instance fields
.field private final blacklist mMaxStreamingSize:Landroid/util/Size;

.field private final blacklist mMode:I

.field private final blacklist mZoomRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILandroid/util/Size;Landroid/util/Range;)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "maxStreamingSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p3, "zoomRatioRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    .line 66
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string v1, "maxStreamingSize.getWidth() must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "maxStreamingSize.getHeight() must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 70
    iput-object p2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    .line 72
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_52

    .line 77
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "zoomRatioRange.getLower() must be positive"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 79
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "zoomRatioRange.getUpper() must be positive"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 81
    iput-object p3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 82
    return-void

    .line 73
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomRatioRange.getLower() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than zoomRatioRange.getUpper() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 126
    return v0

    .line 128
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 129
    return v1

    .line 131
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/Capability;

    if-eqz v2, :cond_2d

    .line 132
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/Capability;

    .line 133
    .local v2, "other":Landroid/hardware/camera2/params/Capability;
    iget v3, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    iget v4, v2, Landroid/hardware/camera2/params/Capability;->mMode:I

    if-ne v3, v4, :cond_2b

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    .line 134
    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    iget-object v4, v2, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 135
    invoke-virtual {v3, v4}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    nop

    .line 133
    :goto_2c
    return v0

    .line 137
    .end local v2    # "other":Landroid/hardware/camera2/params/Capability;
    :cond_2d
    return v0
.end method

.method public whitelist getMaxStreamingSize()Landroid/util/Size;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    return v0
.end method

.method public whitelist getZoomRatioRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 145
    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    .line 146
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 147
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x5

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    const/4 v0, 0x4

    aput v4, v5, v0

    .line 145
    invoke-static {v5}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 158
    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 160
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 158
    const-string v1, "(mode:%d, maxStreamingSize:%d x %d, zoomRatio: %f-%f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
