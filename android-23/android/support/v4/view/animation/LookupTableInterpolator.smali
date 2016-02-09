.class abstract Landroid/support/v4/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method public constructor <init>([F)V
    .locals 2
    .param p1, "values"    # [F

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@5
    .line 32
    iget-object v0, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@7
    array-length v0, v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    int-to-float v0, v0

    #@b
    const/high16 v1, 0x3f800000    # 1.0f

    #@d
    div-float v0, v1, v0

    #@f
    iput v0, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    #@11
    .line 30
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    const/4 v5, 0x0

    #@3
    .line 37
    cmpl-float v4, p1, v6

    #@5
    if-ltz v4, :cond_0

    #@7
    .line 38
    return v6

    #@8
    .line 40
    :cond_0
    cmpg-float v4, p1, v5

    #@a
    if-gtz v4, :cond_1

    #@c
    .line 41
    return v5

    #@d
    .line 46
    :cond_1
    iget-object v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@f
    array-length v4, v4

    #@10
    add-int/lit8 v4, v4, -0x1

    #@12
    int-to-float v4, v4

    #@13
    mul-float/2addr v4, p1

    #@14
    float-to-int v4, v4

    #@15
    iget-object v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@17
    array-length v5, v5

    #@18
    add-int/lit8 v5, v5, -0x2

    #@1a
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v1

    #@1e
    .line 49
    .local v1, "position":I
    int-to-float v4, v1

    #@1f
    iget v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    #@21
    mul-float v2, v4, v5

    #@23
    .line 50
    .local v2, "quantized":F
    sub-float v0, p1, v2

    #@25
    .line 51
    .local v0, "diff":F
    iget v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    #@27
    div-float v3, v0, v4

    #@29
    .line 54
    .local v3, "weight":F
    iget-object v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@2b
    aget v4, v4, v1

    #@2d
    iget-object v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@2f
    add-int/lit8 v6, v1, 0x1

    #@31
    aget v5, v5, v6

    #@33
    iget-object v6, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    #@35
    aget v6, v6, v1

    #@37
    sub-float/2addr v5, v6

    #@38
    mul-float/2addr v5, v3

    #@39
    add-float/2addr v4, v5

    #@3a
    return v4
.end method
